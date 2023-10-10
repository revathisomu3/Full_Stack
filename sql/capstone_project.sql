-- create database
CREATE DATABASE carbon_emission;

-- create user table and insert data

CREATE TABLE carbon_emission.users (
UID int PRIMARY KEY,
Name varchar(50),
Email varchar(100),
password varchar(100)
);

SELECT*FROM carbon_emission.users;

INSERT INTO carbon_emission.users
VALUES( 1,'JAI','jai.j@gmail.com','jai.ii'),(2,'vijay','vijay@gamil.com','vijay.v');

SELECT*FROM carbon_emission.users;
-- --------------------------------------------------------------------------------------

-- create transportation table and insert data

CREATE TABLE carbon_emission.transportation(
TID int PRIMARY KEY,
UID int NOT NULL,
Model varchar(50) not null,
method varchar(50) not null,
trans_ce DEC(3,2)
);
SELECT*FROM carbon_emission.transportation;

INSERT INTO carbon_emission.transportation
VALUES (1, 1, 'Truck', 'Road', 1.79) , 
		(2, 2, 'Van', 'Road', 4.32);
        
SELECT*FROM carbon_emission.transportation;
-- -------------------------------------------------
-- create energy table

CREATE TABLE carbon_emission.users (
UID int PRIMARY KEY,
Name varchar(50),
Email varchar(100),
password varchar(100)
);

SELECT*FROM carbon_emission.users;

INSERT INTO carbon_emission.users
VALUES( 1,'JAI','jai.j@gmail.com','jai.ii'),(2,'vijay','vijay@gamil.com','vijay.v');

SELECT*FROM carbon_emission.users;
-- --------------------------------------------------------------------------------------

-- create energy table and insert data

CREATE TABLE carbon_emission.energy(
EID int PRIMARY KEY,
UID int NOT NULL,
energy_con int not null,
energy_ce DEC(3,2)
);
SELECT*FROM carbon_emission.energy;

INSERT INTO carbon_emission.energy
VALUES (1, 1, 150, 1.89), (2, 2, 268, 4.56);

SELECT*FROM carbon_emission.energy;
-- ------------------------------------------------------------------
-- create food table and insert data
CREATE TABLE carbon_emission.foods(
FID int PRIMARY KEY,
UID int NOT NULL,
choice varchar(50) NOT NULL,
food_ce DEC(3,2)
);
SELECT*FROM carbon_emission.foods;

INSERT INTO carbon_emission.foods
VALUES (1, 1, 'orange', 4.34), 
		(2, 2, 'Vegetables', 9.45);

SELECT*FROM carbon_emission.foods;
-- ------------------------------------------------------------
-- create carbon emission table and insert data

CREATE TABLE carbon_emission.ce(
CID int PRIMARY KEY,
UID int NOT NULL
);
SELECT*FROM carbon_emission.ce;

INSERT INTO carbon_emission.ce
VALUES (11, 1) , (12, 2);

SELECT*FROM carbon_emission.ce;

-- ---------------------------------------------
-- join only two tables

CREATE TABLE carbon_emission.users_trans(
SELECT u.UID As 'Users_Id', u.Name, u.Email, u.Password, t.UID as 'transport_users_Id', t.TID, t.model, t.method, t.trans_ce
FROM carbon_emission.users u
LEFT JOIN carbon_emission.transportation t
ON u.UID = t.UID
);

SELECT *FROM carbon_emission.users_trans;
