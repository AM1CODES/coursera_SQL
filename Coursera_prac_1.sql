drop TABLE INSTRUCTOR
;
create TABLE INSTRUCTOR
(
ins_id INTEGER PRIMARY KEY NOT NULL,
lastname VARCHAR(30) NOT NULL,
firstname VARCHAR(30) NOT NULL,
city VARCHAR(20),
country CHAR(2)
)
;
INSERT INTO  INSTRUCTOR
(ins_id,lastname,firstname,city,country)
VALUES(1,'Ahuja','Rav','Toronto','CA')
;

INSERT INTO  INSTRUCTOR
VALUES(2,'Chong','Raul','Toronto','CA'),
				(3,'Vasudevan','Hima','Toronto','CA')
;

SELECT * FROM INSTRUCTOR
;
SELECT lastname,firstname,country FROM INSTRUCTOR
WHERE city = 'Toronto'
;

UPDATE INSTRUCTOR
SET city = 	'Markham'
WHERE ins_id = 1
;
DELETE FROM INSTRUCTOR
WHERE ins_id = 2 
;
SELECT * FROM INSTRUCTOR
;