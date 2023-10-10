DROP DATABASE db;

CREATE DATABASE db;

SHOW DATABASES;

-- create a table members
CREATE TABLE db.members
(
members_id int,
name VARCHAR(100)
);

-- ptint the table
SELECT*FROM db.members;

-- create table commitees
CREATE TABLE db.commitees
(
commitees_id int,
name varchar(100)
);
 
 -- print a table
 SELECT*FROM db.commitees;

-- insert data into members table
INSERT INTO db.members
VALUES(1,'JOHN'),(2,'mary'),(3,'david'),(4,'angel');

SELECT*FROM db.members;

-- insert data into commitees table
INSERT INTO db.commitees
VALUES(1,'JOHN'),(2,'mary'),(3,'joe'),(4,'amelia');
SELECT*FROM db.commitees;

-- inner john
SELECT m.members_id, m.name As member, c.commitees_id, c.name As commitee
FROM db.members m
INNER JOIN db.commitees c ON c.name = m.name;

-- left join 
SELECT m.members_id, m.name As member, c.commitees_id, c.name As commitee
FROM db.members m
LEFT JOIN db.commitees c USING(name);

-- right join
SELECT m.members_id, m.name As member, c.commitees_id, c.name As commitee
FROM db.members m
RIGHT JOIN db.commitees c on c.name = m.name;

-- cross join
SELECT m.members_id, m.name As member, c.commitees_id, c.name As commitee
FROM db.members m
CROSS JOIN db.commitees c;

-- like operator
SELECT*FROM db.members
WHERE name LIKE 'M%';

SELECT*FROM db.members;

SELECT*FROM db.members 
WHERE name LIKE '%y';

DELIMITER //
CREATE PROCEDURE db.get_members_info()
BEGIN
	SELECT*FROM db.members;
END//

DELIMITER ;

CALL db.get_members_info();