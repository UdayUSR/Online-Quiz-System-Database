DROP TABLE result;
DROP TABLE question;
DROP TABLE quiz;
DROP TABLE student;
DROP TABLE teacher;


CREATE TABLE teacher
(
    teacher_id NUMBER(7) NOT NULL,
    teacher_name VARCHAR2(50),
    teacher_dept VARCHAR2(20),
    teacher_pass VARCHAR2(10),
    PRIMARY KEY(teacher_id)
);

CREATE TABLE student
(
    student_id NUMBER(7) NOT NULL,
    student_name VARCHAR2(50),
    student_dept VARCHAR2(20),
    student_pass VARCHAR2(10) UNIQUE,
    PRIMARY KEY(student_id)
);

CREATE TABLE quiz
(
    quiz_id NUMBER(5) NOT NULL,
    subject VARCHAR2(20),
    category VARCHAR2(50),
    quiz_date date,
    teacher_id NUMBER(7),
    PRIMARY KEY(quiz_id),
    FOREIGN KEY (teacher_id) REFERENCES teacher(teacher_id)
);

CREATE TABLE question
(
    quiz_id NUMBER(5),
    question_no NUMBER(5) NOT NULL,
    ques VARCHAR2(200),
    opA VARCHAR2(100),
    opB VARCHAR2(100),
    opC VARCHAR2(100),
    opD VARCHAR2(100),
    answer VARCHAR2(100),
    PRIMARY KEY(quiz_id, question_no),
    FOREIGN KEY (quiz_id) REFERENCES quiz(quiz_id)
);

CREATE TABLE result
(
    quiz_id NUMBER(5),
    student_id NUMBER(7),
    marks NUMBER(3),    
    PRIMARY KEY(quiz_id, student_id),
    FOREIGN KEY (student_id) REFERENCES student(student_id),
    FOREIGN KEY (quiz_id) REFERENCES quiz(quiz_id)
);

DESCRIBE teacher;
DESCRIBE student;
DESCRIBE quiz;
DESCRIBE question;
DESCRIBE result;


INSERT INTO teacher VALUES(1001, 'Professor Dr. Arnold Clark', 'CSE', 'GvN5WQ67');
INSERT INTO teacher VALUES(1002, 'Professor Dr. Dahlia Bailey', 'EEE', 'p9ZiZKFq');
INSERT INTO teacher VALUES(1003, 'Professor Dr. Axel Young', 'CSE', 'rJ5iyHfw');
INSERT INTO teacher VALUES(1004, 'Professor Dr. Jessica Morgan', 'ME', 'Z1WrN39W');
INSERT INTO teacher VALUES(1005, 'Professor Dr. Tobias Douglas', 'CE', 'R73Hg7kk');


INSERT INTO student VALUES(1807001, 'Cody Fleming', 'CSE', 'AHQWr8Rc');
INSERT INTO student VALUES(1807002, 'Jaxson Woods', 'CSE', 'WRwtYd3G');
INSERT INTO student VALUES(1803001, 'Lucille Hughes', 'EEE', 'NRWeb3cH');
INSERT INTO student VALUES(1804001, 'Logan Ward', 'ME', 'iHTPaW2Y');
INSERT INTO student VALUES(1805001, 'Hallie May', 'CE', 'LudbW93R');
INSERT INTO student VALUES(1807003, 'Pablo Diaz', 'CSE', 'Fk24te87');
INSERT INTO student VALUES(1807004, 'Ryleigh Hopkins', 'CSE', 'b8I3VJWo');
INSERT INTO student VALUES(1807005, 'Leonardo Jones', 'CSE', 'lU023VO8');


INSERT INTO quiz VALUES(1, 'CSE', 'Database', '12-JUNE-2022', '1003');
INSERT INTO quiz VALUES(2, 'EEE', 'Digital Electronics', '15-JUNE-2022', '1002');
INSERT INTO quiz VALUES(3, 'CE', 'Surveying', '20-JUNE-2022', '1005');
INSERT INTO quiz VALUES(4, 'ME', 'Mechanical Drawing', '28-JUNE-2022', '1004');
INSERT INTO quiz VALUES(5, 'CSE', 'Object Oriented Programming', '01-JULY-2022', '1001');


INSERT INTO question VALUES(1, 1, 'RDBMS is an acronym for', '(A) Relational Database', '(B) Relational Database Merging System', '(C) Relational Database Management System', '(D) Relational Database Manipulation System','C');
INSERT INTO question VALUES(1, 2, 'The process of performing corrections on the existing data is', '(A) Merging', '(B) Sorting', '(C) Filtering', '(D) Editing', 'D');
INSERT INTO question VALUES(1, 3, 'Database management systems ___ data', '(A) Delete', '(B) Share', '(C) Process', '(D) Store', 'B');
INSERT INTO question VALUES(1, 4, 'Hierarchical database was primarily used on', '(A) Business Computers', '(B) Mainframe Computers', '(C) Personal Computers', '(D) Super Computers', 'B');
INSERT INTO question VALUES(1, 5, 'DBMS is an acronym for', '(A) Database Merging System', '(B) Database', '(C) Database Management System', '(D) Database Manipulating System', 'C');
--INSERT INTO question VALUES(1, 6, '', '', '', '', '', '');


INSERT INTO result VALUES(1, 1807001, 5);
INSERT INTO result VALUES(1, 1807002, 4);
INSERT INTO result VALUES(1, 1807003, 3);
INSERT INTO result VALUES(1, 1807004, 0);
INSERT INTO result VALUES(1, 1807005, 5);


SELECT * FROM teacher;
SELECT * FROM student;
SELECT * FROM quiz;
SELECT * FROM question;
SELECT * FROM result;


--ADDING NEW COLUMN
ALTER TABLE student 
 ADD student_age NUMBER(2);

DESCRIBE student;


--MODIFYING COLUMN
ALTER TABLE student
 MODIFY student_age NUMBER(3);

DESCRIBE student;


--RENAMING COLUMN
ALTER TABLE student
 RENAME COLUMN student_age to s_age;

DESCRIBE student;

SELECT * from student;


--ADDING VALUE
INSERT INTO student VALUES(1807006, 'Juniper Harrison', 'CSE', '6YX9tRbQ', 22);
SELECT * from student;


--UPDATING VALUE
UPDATE student SET s_age=26 where student_id=1807006;
SELECT * from student;


--DELETING VALUE
DELETE FROM student WHERE s_age=26;
SELECT * from student;


--DROPING COLUMN
ALTER TABLE student
 DROP COLUMN s_age;

DESCRIBE student;
