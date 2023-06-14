/*DROP TABLE IF EXISTS application;

CREATE TABLE Application (
  Application_ID int auto_increment,
  Date_of_Application datetime,
  Name_of_Applicant varchar(255) not null,
  Application_Description varchar(255),
  other_Details text,
  primary key(Application_ID)
);
/*
 create table Questions(
	Question_ID int primary key auto_increment,
    Question_Text text not null
 );
 
 create table Questions_in_Application(
	Application_ID int not null,
    Question_ID int not null, 
    foreign key(Application_ID) references Application(Application_ID),
    foreign key(Question_ID) references Questions(Question_ID)
 );
*/
INSERT INTO application 
VALUES 
(null,'2022-01-01', 'John Smith', 'Applying for car insurance', 'No previous claims'),
(null,'2022-01-02', 'Sarah Johnson', 'Applying for home insurance', 'Property located in a flood zone'),
(null,'2022-01-03', 'Michael Brown', 'Applying for health insurance', 'Non-smoker, no pre-existing conditions'),
(null,'2022-01-04', 'Emily Davis', 'Applying for life insurance', 'Preferred rate due to good health'),
(null,'2022-01-05', 'Andrew Wilson', 'Applying for travel insurance', 'International coverage required'),
(null,'2022-01-06', 'Samantha Thompson', 'Applying for pet insurance', 'Two dogs and a cat'),
(null,'2022-01-07', 'Robert Miller', 'Applying for disability insurance', 'Self-employed with variable income'),
(null,'2022-01-08', 'Laura Harris', 'Applying for renters insurance', 'Apartment in a gated community'),
(null,'2022-01-09', 'Matthew Clark', 'Applying for motorcycle insurance', 'Experienced rider with no accidents'),
(null,'2022-01-10', 'Amanda Rodriguez', 'Applying for business insurance', 'Small retail store'),
(null,'2022-01-11', 'Christopher Martinez', 'Applying for boat insurance', '30-foot sailboat'),
(null,'2022-01-12', 'Megan Scott', 'Applying for dental insurance', 'Orthodontic treatment needed'),
(null,'2022-01-13', 'Daniel Green', 'Applying for liability insurance', 'Independent contractor in construction industry'),
(null,'2022-01-14', 'Olivia Lee', 'Applying for wedding insurance', 'Outdoor wedding ceremony'),
(null,'2022-01-15', 'Joshua Young', 'Applying for umbrella insurance', 'Additional coverage for high-value assets'),
(null,'2022-01-16', 'Victoria Turner', 'Applying for renters insurance', 'Apartment shared with roommates'),
(null,'2022-01-17', 'James White', 'Applying for fire insurance', 'Recently installed smoke detectors'),
(null,'2022-01-18', 'Elizabeth Hall', 'Applying for vision insurance', 'Prescription glasses and contact lenses'),
(null,'2022-01-19', 'Nathan King', 'Applying for earthquake insurance', 'Residence located in a seismic zone'),
(null,'2022-01-20', 'Isabella Lewis', 'Applying for long-term care insurance', 'Planning for future healthcare needs'),
(null,'2022-01-21', 'Dylan Baker', 'Applying for classic car insurance', '1965 Ford Mustang'),
(null,'2022-01-22', 'Grace Walker', 'Applying for travel insurance', 'Adventure sports coverage required'),
(null,'2022-01-23', 'Liam Garcia', 'Applying for homeowners insurance', 'Property equipped with security system'),
(null,'2022-01-24', 'Chloe Martinez', 'Applying for pet insurance', 'One dog, two cats'),
(null,'2022-01-25', 'Noah Cooper', 'Applying for flood insurance', 'Property located near a river'),
(null,'2022-01-26', 'Sophia Hill', 'Applying for term life insurance', '10-year policy with a $500,000 coverage'),
(null,'2022-01-27', 'Ethan Carter', 'Applying for cyber insurance', 'Small business owner concerned about data breaches'),
(null,'2022-01-28', 'Ava Rivera', 'Applying for health insurance', 'Preventive care coverage needed'),
(null,'2022-01-29', 'Alexander Ward', 'Applying for auto insurance', 'New driver with driver''s education certificate'),
(null,'2022-01-30', 'Mia Butler', 'Applying for renters insurance', 'Apartment with no prior claims');

INSERT INTO Questions (Question_Text) VALUES
('Do you currently have any existing insurance policies?'),
('Have you ever filed an insurance claim before?'),
('What type of insurance are you applying for?'),
('Do you own the property you want to insure?'),
('Do you have any pre-existing medical conditions?'),
('What is the estimated value of the property?'),
('Do you have any dependents?'),
('Are you looking for individual or family coverage?'),
('Do you have any pets?'),
('What is the purpose of the insurance policy?');

INSERT INTO Questions_in_Application (Application_ID, Question_ID)
VALUES
-- Applicant 1
(1, 1), (1, 2), (1, 3), (1, 4), (1, 5), (1, 6), (1, 7), (1, 8), (1, 9), (1, 10),
-- Applicant 2
(2, 1), (2, 2), (2, 3), (2, 4), (2, 5), (2, 6), (2, 7), (2, 8), (2, 9), (2, 10),
-- Applicant 3
(3, 1), (3, 2), (3, 3), (3, 4), (3, 5), (3, 6), (3, 7), (3, 8), (3, 9), (3, 10),
-- Applicant 4
(4, 1), (4, 2), (4, 3), (4, 4), (4, 5), (4, 6), (4, 7), (4, 8), (4, 9), (4, 10),
-- Applicant 5
(5, 1), (5, 2), (5, 3), (5, 4), (5, 5), (5, 6), (5, 7), (5, 8), (5, 9), (5, 10),
-- Applicant 6
(6, 1), (6, 2), (6, 3), (6, 4), (6, 5), (6, 6), (6, 7), (6, 8), (6, 9), (6, 10),
-- Applicant 7
(7, 1), (7, 2), (7, 3), (7, 4), (7, 5), (7, 6), (7, 7), (7, 8), (7, 9), (7, 10),
-- Applicant 8
(8, 1), (8, 2), (8, 3), (8, 4), (8, 5), (8, 6), (8, 7), (8, 8), (8, 9), (8, 10),
-- Applicant 9
(9, 1), (9, 2), (9, 3), (9, 4), (9, 5), (9, 6), (9, 7), (9, 8), (9, 9), (9, 10),
-- Applicant 10
(10, 1), (10, 2), (10, 3), (10, 4), (10, 5), (10, 6), (10, 7), (10, 8), (10, 9), (10, 10),
-- Applicant 11
(11, 1), (11, 2), (11, 3), (11, 4), (11, 5), (11, 6), (11, 7), (11, 8), (11, 9), (11, 10),
-- Applicant 12
(12, 1), (12, 2), (12, 3), (12, 4), (12, 5), (12, 6), (12, 7), (12, 8), (12, 9), (12, 10),
-- Applicant 13
(13, 1), (13, 2), (13, 3), (13, 4), (13, 5), (13, 6), (13, 7), (13, 8), (13, 9), (13, 10),
-- Applicant 14
(14, 1), (14, 2), (14, 3), (14, 4), (14, 5), (14, 6), (14, 7), (14, 8), (14, 9), (14, 10),
-- Applicant 15
(15, 1), (15, 2), (15, 3), (15, 4), (15, 5), (15, 6), (15, 7), (15, 8), (15, 9), (15, 10),
-- Applicant 16
(16, 1), (16, 2), (16, 3), (16, 4), (16, 5), (16, 6), (16, 7), (16, 8), (16, 9), (16, 10),
-- Applicant 17
(17, 1), (17, 2), (17, 3), (17, 4), (17, 5), (17, 6), (17, 7), (17, 8), (17, 9), (17, 10),
-- Applicant 18
(18, 1), (18, 2), (18, 3), (18, 4), (18, 5), (18, 6), (18, 7), (18, 8), (18, 9), (18, 10),
-- Applicant 19
(19, 1), (19, 2), (19, 3), (19, 4), (19, 5), (19, 6), (19, 7), (19, 8), (19, 9), (19, 10),
-- Applicant 20
(20, 1), (20, 2), (20, 3), (20, 4), (20, 5), (20, 6), (20, 7), (20, 8), (20, 9), (20, 10),
-- Applicant 21
(21, 1), (21, 2), (21, 3), (21, 4), (21, 5), (21, 6), (21, 7), (21, 8), (21, 9), (21, 10),
-- Applicant 22
(22, 1), (22, 2), (22, 3), (22, 4), (22, 5), (22, 6), (22, 7), (22, 8), (22, 9), (22, 10),
-- Applicant 23
(23, 1), (23, 2), (23, 3), (23, 4), (23, 5), (23, 6), (23, 7), (23, 8), (23, 9), (23, 10),
-- Applicant 24
(24, 1), (24, 2), (24, 3), (24, 4), (24, 5), (24, 6), (24, 7), (24, 8), (24, 9), (24, 10),
-- Applicant 25
(25, 1), (25, 2), (25, 3), (25, 4), (25, 5), (25, 6), (25, 7), (25, 8), (25, 9), (25, 10),
-- Applicant 26
(26, 1), (26, 2), (26, 3), (26, 4), (26, 5), (26, 6), (26, 7), (26, 8), (26, 9), (26, 10),
-- Applicant 27
(27, 1), (27, 2), (27, 3), (27, 4), (27, 5), (27, 6), (27, 7), (27, 8), (27, 9), (27, 10),
-- Applicant 28
(28, 1), (28, 2), (28, 3), (28, 4), (28, 5), (28, 6), (28, 7), (28, 8), (28, 9), (28, 10),
-- Applicant 29
(29, 1), (29, 2), (29, 3), (29, 4), (29, 5), (29, 6), (29, 7), (29, 8), (29, 9), (29, 10),
-- Applicant 30
(30, 1), (30, 2), (30, 3), (30, 4), (30, 5), (30, 6), (30, 7), (30, 8), (30, 9), (30, 10);