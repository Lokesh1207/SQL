CREATE DATABASE lokesh;
USE lokesh;
CREATE TABLE mydetails(
		id INT PRIMARY KEY,
        mark1 DECIMAL(3,2),
        mark2 DECIMAL(3,2),
        mark3 DECIMAL(3,2),
        mark4 DECIMAL(3,2),
        mark5 DECIMAL(3,2),
        mark6 DECIMAL(3,2)
);
DESCRIBE mydetails;
ALTER TABLE mydetails CHANGE id sem INT ;
ALTER TABLE mydetails MODIFY COLUMN mark1 DECIMAL(4,2);
ALTER TABLE mydetails MODIFY COLUMN mark2 DECIMAL(4,2);
ALTER TABLE mydetails MODIFY COLUMN mark3 DECIMAL(4,2);
ALTER TABLE mydetails MODIFY COLUMN mark4 DECIMAL(4,2);
ALTER TABLE mydetails MODIFY COLUMN mark5 DECIMAL(4,2);
ALTER TABLE mydetails MODIFY COLUMN mark6 DECIMAL(4,2);

-- Inserting marks for a student with id 1
INSERT INTO mydetails (sem, mark1, mark2, mark3, mark4, mark5, mark6) VALUES (1, 81.9, 75.5, 88.3, 92.1, 79.6, 85.4);
INSERT INTO mydetails (sem, mark1, mark2, mark3, mark4, mark5, mark6) VALUES (2, 77.2, 82.6, 90.0, 85.7, 81.4, 88.9);
INSERT INTO mydetails (sem, mark1, mark2, mark3, mark4, mark5, mark6) VALUES (3, 77.2, 82.6, 90.0, 80.7, 81.4, 88.9);
INSERT INTO mydetails (sem, mark1, mark2, mark3, mark4, mark5, mark6) VALUES (4, 77.2, 82.6, 90.1, 85.7, 81.4, 88.9);
INSERT INTO mydetails (sem, mark1, mark2, mark3, mark4, mark5, mark6) VALUES (5, 29.2, 82.6, 90.0, 85.7, 81.4, 88.9);
SELECT * FROM mydetails;