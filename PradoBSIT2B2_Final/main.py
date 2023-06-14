from flask import Flask, make_response, jsonify, request
from flaskext.mysql import MySQL
from flask_mysqldb import MySQLdb
from flask_httpauth import HTTPBasicAuth

app = Flask(__name__)
auth = HTTPBasicAuth()

USER_DATA = {"Login": "Login"}

@auth.verify_password
def verify(username, password):
    if not (username and password):
        return False
    return USER_DATA.get(username) == password


app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_PASSWORD'] = '12345678'
app.config['MYSQL_DB'] = 'event'
app.config['MYSQL_CURSORCLASS'] = 'DictCursor'
mysql = MySQL(app)

@app.route('/')
def hello_world():
    return "<p>This is my list!</p>"

def data_fetch(query):
    cur = mysql.connection.cursor()
    cur.execute(query)
    data = cur.fetchall()
    return data

@app.route("/events", methods=["GET"])
@auth.login_required
def get_events():
    data = data_fetch("""SELECT * FROM event""")
    return make_response(jsonify(data), 200)


@app.route("/events/<int:id>", methods=["GET"])
@auth.login_required
def get_event_by_id(id):
    data = data_fetch("""SELECT * FROM event WHERE id = {}""".format(id))
    myResponse = make_response(jsonify(data))
    return myResponse
    

@app.route("/events", methods=['POST'])
@auth.login_required
def add_event():
    cur = mysql.connection.cursor()
    json = request.get_json(force=True)
    name = json["name"]
    email = json["email"]
    phone = json["phone"]
    location = json["location"]
    cur.execute(
        """ INSERT INTO event (name, email, phone, location) VALUE (%s, %s, %s, %s)""",
        (name, email, phone, location),
    )
    mysql.connection.commit()
    _response = jsonify("Event added successfully!")
    _response.status_code = 200
    cur.close()
    return _response

@app.route("/events/<int:id>", methods=["PUT"])
@auth.login_required
def update_event_by_id(id):
    cur = mysql.connection.cursor()
    json = request.get_json(force=True)
    name = json["name"]
    email = json["email"]
    phone = json["phone"]
    location = json["location"]
    cur.execute(
        """ UPDATE event SET name = %s, email = %s, phone = %s, location = %s WHERE id = %s""",
        (name, email, phone, location, id),
    )
    mysql.connection.commit()
    _response = jsonify("Event updated successfully!")
    _response.status_code = 200
    cur.close()
    return _response

@app.route("/events/<int:id>", methods=["DELETE"])
@auth.login_required
def delete_event(id):
    cur = mysql.connection.cursor()
    cur.execute(""" DELETE FROM event WHERE id = %s""", (id,))
    mysql.connection.commit()
    cur.close()
    return make_response(jsonify({"message": "Event deleted successfully"}), 200)

@app.errorhandler(404)
def show_message(error=None):
    message = {
        'status': 404,
        'message': 'Record not found: ' + request.url,
    }
    response = jsonify(message)
    response.status_code = 404
    return response

if __name__ == "__main__":
    app.run(debug=True)