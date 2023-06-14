/*CREATE DATABASE Perfume;*/

/** Best-Selling Perfumes:
Vanilla (42, $72.99, 1),
Strawberries & Cream (25, $99.99, 2),
Marshmallow (56, $99.99, 3), Apricot (22, $42.99, 3), Apple (108, $87.99, 3),
Lemon (45, $42.99, 4), Cake Batter (93, $42.99, 4), Pumpkin (294, $42.99, 4),
Mint (20, $72.99, 5), Rose (36, $99.99, 5), Fresh Linen (87, $15.00, 5),
Lavender (101, $42.99, 6), Shower (65, $99.99, 6), Cinnamon (33, $42.99, 6),
Chocolate Surprise (49, $99.99, 7), Sugar Cookies (78, $42.99, 7) **/


CREATE TABLE perfumes (id INTEGER PRIMARY KEY, name TEXT, 
quantity_sold INTEGER, price NUMERIC, aisle INTEGER);

INSERT INTO perfumes VALUES
(1, "Vanilla", 42, 72.99, 1),
(2, "Strawberries & Cream", 25, 99.99, 2),
(3, "Marshmallow", 56, 99.99, 3),
(4, "Apricot", 22, 42.99, 3),
(5, "Apple", 108, 87.99, 3),
(6, "Lemon", 45, 42.99, 4),
(7, "Cake Batter", 93, 42.99, 4),
(8, "Pumpkin", 294, 42.99, 4),
(9, "Mint", 20, 72.99, 5),
(10, "Rose", 36, 99.99, 5),
(11, "Fresh Linen", 87, 15.00, 5),
(12, "Lavender", 101, 42.99, 6),
(13, "Shower", 65, 99.99, 6),
(14, "Cinnamon", 33, 42.99, 6),
(15, "Chocolate Surprise", 49, 99.99, 7),
(16, "Sugar Cookies", 78, 42.99, 7);


