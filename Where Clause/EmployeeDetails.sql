CREATE DATABASE practiceWhereClause;
USE practiceWhereClause;
CREATE TABLE employee(
		empId INT PRIMARY KEY,
        name VARCHAR(20),
        jobdesc VARCHAR(30),
        salary INT
);

INSERT INTO employee VALUES(1,"Ram","HR",12000);
INSERT INTO employee VALUES(2,"Shiva","Software Developer",19000);
INSERT INTO employee VALUES(3,"Lokesh","Manager",10000);
INSERT INTO employee VALUES(4,"Rohith","Software Developer",16000);
INSERT INTO employee VALUES(5,"Vignesh","HR",22000);
INSERT INTO employee VALUES(6,"Shakthi","Manager",30000);
INSERT INTO employee VALUES(7,"Santhosh","Manager",40000);
INSERT INTO employee VALUES(8,"Ashwin","Software Developer",90000);
INSERT INTO employee VALUES(9,"Ranjith","HR",44000);
INSERT INTO employee VALUES(10,"Deepak","Manager",88000);
INSERT INTO employee VALUES(11,"Deva","Software Developer",70000);
INSERT INTO employee VALUES(12,"Srinivas","HR",20000);
INSERT INTO employee VALUES(13,"Anitha","HR",12000);
INSERT INTO employee VALUES(14,"Anitha","Software Developer",11000);
INSERT INTO employee VALUES(15, "Amit", "HR", 25000);
INSERT INTO employee VALUES(16, "Ananya", "Software Developer", 28000);
INSERT INTO employee VALUES(17, "Akshay", "Manager", 33000);
INSERT INTO employee VALUES(18, "Aarav", "HR", 29000);
INSERT INTO employee VALUES(19, "Aditi", "Manager", 36000);
INSERT INTO employee VALUES(20, "Aishwarya", "Software Developer", 31000);


SELECT * FROM employee;
SELECT empid,name FROM employee; -- displays only the id and name

SELECT * FROM employee
WHERE name ="Anitha"; -- displays only Name(Anitha)

SELECT * FROM employee
WHERE name<>"Anitha"; -- <> is not equal,it displays all the names except anitha

SELECT empId,name FROM employee -- we can also display only id,namell;
WHERE name<>"Anitha"; 

SELECT * FROM employee
WHERE salary>20000; -- displays employees whose salary iss >20000

SELECT * FROM employee
WHERE salary>20000 AND jobdesc="HR"; -- it displays employees whose salary is >20000 AND thier job is HR

SELECT * FROM employee
WHERE salary>20000 AND jobdesc="HR" OR jobdesc="Software Developer"; -- it displays employees whose salary is >20000 AND either their job is "HR" / "Software Developer"

-- BETTER QUERY FOR THE ABOVE --
SELECT * FROM employee 
WHERE jobdesc IN ("HR","Software Developer")  -- IN keyword is used here

SELECT * FROM employee
WHERE jobdesc NOT IN ("Manager") -- NOT IN keyword is used,it is like except this take everyhing,it prints everything except Manager

SELECT * FROM employee
WHERE salary BETWEEN 20000 AND 60000;  -- BETWEEN keyword is used for obtaining the data BETWEEN  a certain range

SELECT * FROM employee
LIMIT 5; -- it displays only 5 records,For eg if there is millions of records and if we use * to retrieve all the records ,it will get slower.So there LIMIT comes into the picture.

-- LIKE(Keyword)
-- WILDCARDS
-- % --> means Zero or More Characters.
-- _(UnderScore) --> means One Character.
SELECT * FROM employee
WHERE name LIKE 'A%';-- it prints all the records which starts with A 
 
SELECT * FROM employee
WHERE name LIKE 'A%a';-- it prints all the records which starts with A and ends with a.

SELECT * FROM employee
WHERE name NOT LIKE 'A%a';-- it DOES NOT print all the records which starts with A and ends with a.

SELECT * FROM employee
WHERE name LIKE '%i%';-- it prints all the names that has 'i' anywhere in the middle.

SELECT * FROM employee
WHERE name LIKE '__i%' -- displays the names which has the third character as 'i'

