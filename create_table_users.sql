CREATE TABLE PERSONS
(name varchar(200) NOT NULL,
surname varchar(200) NOT NULL,
age int NOT NULL,
phone_number int,
city_of_living VARCHAR(50),
PRIMARY KEY(name, surname, age))