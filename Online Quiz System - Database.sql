DROP TABLE result;
DROP TABLE question;
DROP TABLE quiz;
DROP TABLE student;
DROP TABLE teacher;


CREATE TABLE teacher
(
    teacher_id NUMBER(7) NOT NULL,
    teacher_name VARCHAR2(50),
    teacher_age NUMBER(2),
    teacher_salary NUMBER(7),
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


INSERT INTO teacher VALUES(1001, 'Professor Dr. Arnold Clark', 30, 75000, 'CSE', 'GvN5WQ67');
INSERT INTO teacher VALUES(1002, 'Professor Dr. Dahlia Bailey', 28, 70000,  'EEE', 'p9ZiZKFq');
INSERT INTO teacher VALUES(1003, 'Professor Dr. Axel Young', 32, 80000, 'CSE', 'rJ5iyHfw');
INSERT INTO teacher VALUES(1004, 'Professor Dr. Jessica Morgan', 29, 72000, 'ME', 'Z1WrN39W');
INSERT INTO teacher VALUES(1005, 'Professor Dr. Tobias Douglas', 40, 90000, 'CE', 'R73Hg7kk');
INSERT INTO teacher VALUES(1006, 'Professor Dr. Cecilia Cooper', 42, 94000, 'CSE', 'iEB34V15');
INSERT INTO teacher VALUES(1007, 'Professor Dr. Jude Lee', 31, 80000, 'CSE', 'N693FyGA');
INSERT INTO teacher VALUES(1008, 'Professor Dr. Ryker Clark', 34, 85000, 'CSE', 'q456M1U8');
INSERT INTO teacher VALUES(1009, 'Professor Dr. Troy Johnson', 43, 106000, 'CSE', 'kF2841bJ');
INSERT INTO teacher VALUES(1010, 'Professor Dr. Alexander Reyes', 28, 75000, 'CE', 'swPS231Z');


INSERT INTO student VALUES(1807001, 'Cody Fleming', 'CSE', 'AHQWr8Rc');
INSERT INTO student VALUES(1807002, 'Pablo Woods', 'CSE', 'WRwtYd3G');
INSERT INTO student VALUES(1803001, 'Lucillie Hughes', 'EEE', 'NRWeb3cH');
INSERT INTO student VALUES(1804001, 'Logan Ward', 'ME', 'iHTPaW2Y');
INSERT INTO student VALUES(1805001, 'Hallie Hughes', 'CE', 'LudbW93R');
INSERT INTO student VALUES(1807003, 'Pablo Diaz', 'CSE', 'Fk24te87');
INSERT INTO student VALUES(1807004, 'Ryleigh Hopkins', 'CSE', 'b8I3VJWo');
INSERT INTO student VALUES(1807005, 'Leonardo Jones', 'CSE', 'lU023VO8');
INSERT INTO student VALUES(1807006, 'Jerry Turner', 'CSE', '5g42Gqqd');
INSERT INTO student VALUES(1807007, 'Kyler Harris', 'CSE', '3Td1XUb3');
INSERT INTO student VALUES(1807008, 'Kaiden Morales', 'CSE', '20R4aX9D');
INSERT INTO student VALUES(1807009, 'Cristian Foster', 'CSE', 'Eajh8C90');
INSERT INTO student VALUES(1807010, 'Thomas Thomas', 'CSE', '2uIa9H7F');
INSERT INTO student VALUES(1803002, 'Ryder Gilbert', 'EEE', '1HZo6U7T');
INSERT INTO student VALUES(1805002, 'Malia Larson', 'CE', 'wpD42n9f');


INSERT INTO quiz VALUES(1, 'CSE', 'Database', '12-JUNE-2022', '1003');
INSERT INTO quiz VALUES(2, 'EEE', 'Digital Electronics', '15-JUNE-2022', '1002');
INSERT INTO quiz VALUES(3, 'CE', 'Surveying', '20-JUNE-2022', '1005');
INSERT INTO quiz VALUES(4, 'ME', 'Mechanical Drawing', '28-JUNE-2022', '1004');
INSERT INTO quiz VALUES(5, 'CSE', 'OOP', '01-JULY-2022', '1001');
INSERT INTO quiz VALUES(6, 'CSE', 'TOC', '03-JULY-2022', '1006');
INSERT INTO quiz VALUES(7, 'CSE', 'SOFTWARE', '05-JULY-2022', '1007');
INSERT INTO quiz VALUES(8, 'CSE', 'CPP', '10-JULY-2022', '1008');
INSERT INTO quiz VALUES(9, 'CSE', 'PERIPHERAL', '15-JULY-2022', '1009');
INSERT INTO quiz VALUES(10, 'CSE', 'C', '18-JULY-2022', '1001');



INSERT INTO question VALUES(1, 1, 'RDBMS is an acronym for', '(A) Relational Database', '(B) Relational Database Merging System', '(C) Relational Database Management System', '(D) Relational Database Manipulation System','C');
INSERT INTO question VALUES(1, 2, 'The process of performing corrections on the existing data is', '(A) Merging', '(B) Sorting', '(C) Filtering', '(D) Editing', 'D');
INSERT INTO question VALUES(1, 3, 'Database management systems ___ data', '(A) Delete', '(B) Share', '(C) Process', '(D) Store', 'B');
INSERT INTO question VALUES(1, 4, 'Hierarchical database was primarily used on', '(A) Business Computers', '(B) Mainframe Computers', '(C) Personal Computers', '(D) Super Computers', 'B');
INSERT INTO question VALUES(1, 5, 'DBMS is an acronym for', '(A) Database Merging System', '(B) Database', '(C) Database Management System', '(D) Database Manipulating System', 'C');
INSERT INTO question VALUES(5, 1, 'When OOP concept did first came?', 'a) 1980s', 'b)1995', 'c) 1970s', 'd) 1993', 'C');
INSERT INTO question VALUES(5, 2, 'How many types of access specifiers are there?', 'a) 4', 'b) 3', 'c) 2', 'd) 1', 'B');
INSERT INTO question VALUES(5, 3, 'Which access specifier is usually used for data members of a class?', 'a) Protected', 'b) Private', 'c) Public', 'd) Default', 'B');
INSERT INTO question VALUES(5, 4, 'Which feature of OOP reduces the use of nested classes?', 'a) Inheritance', 'b) Binding', 'c) Abstraction', 'd) Encapsulation', 'A');
INSERT INTO question VALUES(5, 5, 'Where is the memory allocated for the objects?', 'a) Cache', 'b) ROM', 'c) HDD', 'd) RAM', 'D');



INSERT INTO result VALUES(1, 1807001, 5);
INSERT INTO result VALUES(1, 1807002, 4);
INSERT INTO result VALUES(1, 1807003, 3);
INSERT INTO result VALUES(1, 1807004, 0);
INSERT INTO result VALUES(1, 1807005, 5);
INSERT INTO result VALUES(1, 1807006, 5);
INSERT INTO result VALUES(1, 1807007, 3);
INSERT INTO result VALUES(1, 1807008, 4);
INSERT INTO result VALUES(1, 1807009, 2);
INSERT INTO result VALUES(1, 1807010, 0);
INSERT INTO result VALUES(5, 1807001, 2);
INSERT INTO result VALUES(5, 1807002, 5);
INSERT INTO result VALUES(5, 1807003, 4);
INSERT INTO result VALUES(5, 1807004, 2);
INSERT INTO result VALUES(5, 1807005, 0);
INSERT INTO result VALUES(5, 1807006, 5);
INSERT INTO result VALUES(5, 1807007, 4);
INSERT INTO result VALUES(5, 1807008, 5);
INSERT INTO result VALUES(5, 1807009, 1);
INSERT INTO result VALUES(5, 1807010, 3);


SELECT * FROM teacher;
SELECT * FROM student;
SELECT * FROM quiz;
SELECT * FROM question;
SELECT * FROM result;


--ADDING NEW COLUMN STUDENT_AGE TO STUDENT
ALTER TABLE student 
 ADD student_age NUMBER(2);

DESCRIBE student;


--MODIFYING COLUMN STUDENT_AGE
ALTER TABLE student
 MODIFY student_age NUMBER(3);

DESCRIBE student;


--RENAMING COLUMN STUDENT_AGE TO S_AGE
ALTER TABLE student
 RENAME COLUMN student_age to s_age;

DESCRIBE student;

SELECT * from student;


--ADDING VALUE TO STUDENT
INSERT INTO student VALUES(1807011, 'Juniper Harrison', 'CSE', '6YX9tRbQ', 22);
SELECT * from student;


--UPDATING VALUE IN STUDENT
UPDATE student SET s_age=26 where student_id=1807011;
SELECT * from student;


--DELETING VALUE FROM STUDENT
DELETE FROM student WHERE s_age=26;
SELECT * from student;


--DROPING COLUMN S_AGE
ALTER TABLE student
 DROP COLUMN s_age;

DESCRIBE student;





--Specific columns and all rows
SELECT student_id, student_name FROM student;
SELECT * from student;


--Use of DISTINCT TO SHOW DEPARTMENTS
SELECT student_dept FROM student;
SELECT DISTINCT student_dept FROM student;

--Calculated Fields TO CONVERT MARKS TO 10
SELECT student_id, marks FROM result WHERE quiz_id=1;
SELECT student_id, (marks*2) FROM result WHERE quiz_id=1;

--Giving the column a different name
SELECT (marks*2) FROM result;
SELECT (marks*2) AS increased_marks FROM result;

--Comparison Search Condition
SELECT teacher_name, teacher_age FROM teacher;
SELECT teacher_name, teacher_age FROM teacher 
WHERE teacher_age>=30;



--Applying OR condition
SELECT teacher_name, teacher_age FROM teacher;
SELECT teacher_name, teacher_age FROM teacher 
WHERE teacher_age=30 OR teacher_age=29;


--Applying AND condition
SELECT teacher_name, teacher_age, teacher_salary FROM teacher;
SELECT teacher_name,teacher_age, teacher_salary FROM teacher 
WHERE teacher_age>30 AND teacher_salary>74000;

--Range Search Condition
SELECT teacher_name, teacher_salary FROM teacher;
SELECT teacher_name, teacher_salary FROM teacher 
WHERE teacher_salary BETWEEN 72000 AND 80000;

SELECT teacher_name, teacher_salary FROM teacher 
WHERE teacher_salary NOT BETWEEN 72000 AND 80000;

SELECT teacher_name, teacher_salary FROM teacher 
WHERE teacher_salary>=72000 AND teacher_salary<=80000;


--Set Membership
SELECT teacher_name, teacher_salary FROM teacher; 
SELECT teacher_name, teacher_salary 
FROM teacher 
WHERE teacher_salary IN (70000, 80000);
 
SELECT teacher_name, teacher_salary 
FROM teacher
WHERE teacher_salary NOT IN (70000, 80000);


--Pattern Matching
SELECT student_id, student_name FROM student;
SELECT student_id, student_name FROM student
WHERE student_name LIKE '%llie%';

SELECT student_id, student_name FROM student
WHERE student_name LIKE 'Pablo%';

SELECT student_id, student_name FROM student
WHERE student_name LIKE '%Hughes';


--Single Column Ordering
SELECT teacher_name, teacher_age, teacher_salary FROM teacher;
SELECT teacher_name, teacher_age, teacher_salary FROM teacher
ORDER BY teacher_salary;

SELECT teacher_name, teacher_age, teacher_salary FROM teacher
ORDER BY teacher_age DESC;


--Multiple Columns Ordering
SELECT teacher_name, teacher_age, teacher_salary FROM teacher;
SELECT teacher_name, teacher_age, teacher_salary FROM teacher
ORDER BY teacher_age, teacher_salary;

SELECT teacher_name, teacher_age, teacher_salary FROM teacher
ORDER BY teacher_age, teacher_salary DESC;


--Aggregate Functions
SELECT teacher_salary FROM teacher;
SELECT COUNT(teacher_salary) FROM teacher;
SELECT COUNT(*) FROM teacher;
SELECT COUNT(DISTINCT(teacher_salary)) FROM teacher;
SELECT SUM(teacher_salary) FROM teacher;
SELECT AVG(teacher_salary) FROM teacher;
SELECT MIN(teacher_salary) FROM teacher;
SELECT MAX(teacher_salary) FROM teacher;



--GROUP BY clause TO SHOW TOTAL MARKS
SELECT student_id, SUM(marks) FROM result
GROUP BY student_id;

SELECT student_id, SUM(marks) FROM result
WHERE marks>2
GROUP BY student_id;


--HAVING clause
SELECT student_id, SUM(marks) FROM result
GROUP BY student_id
HAVING SUM(marks)>2;



--NESTED QUERY
SELECT teacher_name, teacher_salary 
FROM teacher 
WHERE teacher_salary IN (70000, 80000);

SELECT teacher_name, teacher_salary 
FROM teacher 
WHERE teacher_salary IN (SELECT teacher_salary FROM teacher
                        WHERE teacher_age>30
);


--Union All
SELECT teacher_id, teacher_name FROM teacher
WHERE teacher_age>30
UNION ALL
SELECT t.teacher_id, t.teacher_name FROM teacher t
WHERE t.teacher_salary IN (SELECT b.teacher_salary FROM teacher b
                        WHERE b.teacher_salary>72000
);

--Union
SELECT teacher_id, teacher_name FROM teacher
WHERE teacher_age>30
UNION
SELECT t.teacher_id, t.teacher_name FROM teacher t
WHERE t.teacher_salary IN (SELECT b.teacher_salary FROM teacher b
                        WHERE b.teacher_salary>72000
);


--Intersect
SELECT teacher_id, teacher_name FROM teacher
WHERE teacher_age>30
INTERSECT
SELECT t.teacher_id, t.teacher_name FROM teacher t
WHERE t.teacher_salary IN (SELECT b.teacher_salary FROM teacher b
                        WHERE b.teacher_salary>72000
);


--MINUS
SELECT teacher_id, teacher_name FROM teacher
WHERE teacher_age>30
MINUS
SELECT t.teacher_id, t.teacher_name FROM teacher t
WHERE t.teacher_salary IN (SELECT b.teacher_salary FROM teacher b
                        WHERE b.teacher_salary>72000
);


--Precedence of Set Operators
SELECT teacher_id, teacher_name FROM teacher
WHERE teacher_age>30
UNION
SELECT t.teacher_id, t.teacher_name FROM teacher t
WHERE t.teacher_salary IN (SELECT b.teacher_salary FROM teacher b
                        WHERE b.teacher_salary>72000
)
INTERSECT
SELECT teacher_id, teacher_name FROM teacher
WHERE teacher_age=32;






--Join

SELECT q.quiz_id, q.category , r.student_id, r.marks
FROM quiz q Join result r
ON q.quiz_id=r.quiz_id;


--Natural Join
SELECT quiz_id, category, student_id, marks
FROM quiz NATURAL JOIN result;


--Cross Join
SELECT t.teacher_id, q.category, q.quiz_date
FROM teacher t CROSS JOIN quiz q;

--Inner Join
SELECT q.quiz_id, q.category, r.student_id, r.marks
FROM quiz q INNER JOIN result r
ON q.quiz_id=r.quiz_id;

--Left Outer Join
SELECT q.quiz_id, q.category, r.student_id, r.marks
FROM quiz q LEFT OUTER JOIN result r
ON q.quiz_id=r.quiz_id;

--Right Outer Join
SELECT q.quiz_id, q.category, r.student_id, r.marks
FROM quiz q RIGHT OUTER JOIN result r
ON q.quiz_id=r.quiz_id;

--Full Outer Join
SELECT q.quiz_id, q.category, r.student_id, r.marks
FROM quiz q FULL OUTER JOIN result r
ON q.quiz_id=r.quiz_id;

--Self Join
SELECT s.student_id Roll, m.marks Marks
FROM result s LEFT OUTER JOIN result m
ON s.student_id=m.student_id;



--Maximum Student ID
SET SERVEROUTPUT ON
DECLARE
    max_student_id student.student_id%type;
BEGIN
    SELECT max(student_id) INTO max_student_id
    FROM student;
DBMS_OUTPUT.PUT_LINE('Largest Student ID '|| max_student_id);
END;
/


--Question Setter of Exam OOP
SET SERVEROUTPUT ON
DECLARE
    ques_setter teacher.teacher_name%type;
    exam_name quiz.category%type:= 'OOP';
BEGIN
    SELECT teacher_name INTO ques_setter
    FROM quiz, teacher
    WHERE quiz.teacher_id=teacher.teacher_id
    AND quiz.category=exam_name;


DBMS_OUTPUT.PUT_LINE('Question Setter of '|| exam_name ||' is '|| ques_setter);
END;
/

--Salary of Professor Dr. Axel Young on Increment

SET SERVEROUTPUT ON
DECLARE
    current_salary teacher.teacher_salary%type;
    name_of_teacher VARCHAR2(100);
    incremented_salary teacher.teacher_salary%type;

BEGIN
    name_of_teacher:='Professor Dr. Axel Young';
    
    SELECT teacher_salary INTO current_salary
    FROM teacher
    WHERE teacher_name LIKE name_of_teacher;

    IF current_salary>=100000 THEN
        incremented_salary:=current_salary+10000;
    ELSIF current_salary>=90000 THEN
        incremented_salary:=current_salary+9000;
    ELSIF current_salary>=80000 THEN
        incremented_salary:=current_salary+8000;
    ELSIF current_salary>=70000 THEN
        incremented_salary:=current_salary+7000;
    ELSIF current_salary>=60000 THEN
        incremented_salary:=current_salary+6000;
    ELSIF current_salary>=50000 THEN
        incremented_salary:=current_salary+5000;
    ELSE
        incremented_salary:=current_salary+4000;
    END IF;

DBMS_OUTPUT.PUT_LINE(name_of_teacher||' Current Salary is '||current_salary||
' and Incremented Salary is '||incremented_salary);
EXCEPTION
     WHEN others THEN
        DBMS_OUTPUT.PUT_LINE(SQLERRM);
END;
/
SHOW errors


--LAB 8
--QUIZ TOPIC AND DATE USING CURSOR
SET SERVEROUTPUT ON
DECLARE
   CURSOR quiz_cur IS SELECT category, quiz_date FROM quiz;
   quiz_record quiz_cur%ROWTYPE;

BEGIN
OPEN quiz_cur;
   LOOP
      FETCH quiz_cur INTO quiz_record;
      EXIT WHEN quiz_cur%ROWCOUNT>4;
   DBMS_OUTPUT.PUT_LINE('Quiz topis is '||quiz_record.category||' on '||
   quiz_record.quiz_date);
   END LOOP;
   CLOSE quiz_cur;
END;
/

--PROCEDURE TO FIND NAME OF STUDENT FROM ID
SET SERVEROUTPUT ON;
CREATE OR REPLACE PROCEDURE getemp IS
    std_id student.student_id%type;
    std_name student.student_name%type;
BEGIN
    std_id:=1807001;
    SELECT student_name into std_name
    FROM student
    WHERE student_id=std_id;
    DBMS_OUTPUT.PUT_LINE('ID '||std_id||' is '||std_name);
END;
/
SHOW ERRORS;
BEGIN
    getemp;
END;
/

--RETURN AVERAGE SALARY OF TEACHER USING FUNCTION
CREATE OR REPLACE FUNCTION avg_salary RETURN NUMBER IS
    avg_salary teacher.teacher_salary%type;
BEGIN
    SELECT AVG(teacher_salary) INTO avg_salary
    FROM teacher;
    RETURN avg_salary;
END;
/
SET SERVEROUTPUT ON
BEGIN
 DBMS_OUTPUT.PUT_LINE('Average salary '||avg_salary);
END;
/

--LAB 9
--TRIGGER ON TEACHER SALARY
CREATE OR REPLACE TRIGGER check_salary BEFORE INSERT OR UPDATE ON teacher
FOR EACH ROW 
DECLARE
    c_min constant number(8):= 40000;
    c_max constant number(8):= 120000;
BEGIN
    IF :new.teacher_salary > c_max OR :new.teacher_salary < c_min THEN
    RAISE_APPLICATION_ERROR(-20000, 'TOO SMALL OR LARGE SALARY');
END IF;
END;
/

INSERT INTO teacher VALUES(1011, 'Professor Dr. Flemming', 31, 76000, 'CSE', 'AvK5WQ77');


--TRIGGER ON STUDENT MARKS
ALTER TABLE result
 ADD grade VARCHAR2(1);

DESCRIBE result;


CREATE OR REPLACE TRIGGER check_marks 
BEFORE INSERT OR UPDATE ON result
FOR EACH ROW 
BEGIN
IF :new.marks >= 5 THEN
:new.grade:='A';
ELSIF :new.marks >= 4 THEN
:new.grade:='B';
ELSIF :new.marks >=3 THEN
:new.grade:='C';
ELSIF :new.marks <3 THEN
:new.grade:='F';
END IF;
END check_marks;
/

INSERT INTO result VALUES(2, 1807005, 5, null);
COMMIT;
select * from result;

--TRANSACTION MANAGEMENT
SELECT * FROM result;
DELETE FROM result;
ROLLBACK;
SELECT * FROM result;

--SAVEPOINT
INSERT INTO result VALUES(3, 1807005, 4, null);

SAVEPOINT resultsavepoint1;

SELECT * FROM result;

INSERT INTO result VALUES(4, 1807005, 3, null);

SAVEPOINT resultsavepoint2;

SELECT * FROM result;

ROLLBACK TO  resultsavepoint1;

SELECT * FROM result;


--DATE
--Imagine, last date of the month is the expiry date of the quiz.
--So, the expiry date is...
SELECT category, LAST_DAY(quiz_date) as Expiry_Date
FROM quiz;

--Extracting MONTH OF EXAM
SELECT category, EXTRACT(Month FROM quiz_date) AS Month_Of_EXAM
FROM quiz;

--Days passsed from the exam date
SELECT category, sysdate-quiz_date AS DAYS_PASSED
FROM quiz;

--View for students of CSE department
DROP VIEW CSE_STUDENT;
CREATE VIEW CSE_STUDENT AS
SELECT * FROM student
WHERE student_dept='CSE';

SELECT * FROM CSE_STUDENT;