select * from user
;
select * from users;
INSERT INTO student (first_name, last_name, date_of_birth, email)
VALUES
('Virat', 'Koli', '2000-01-15', 'virat@gmail.com'),
('Rohit', 'Shrma', '1999-05-22', 'rohit@google.com');
/dt
\dt
select * from student;
select * from student;
\s
\q
\dt
\d student
select * from student
;
CREATE TABLE course (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(255),
    instructor VARCHAR(255),
    credits INT
);
\d student
\dt
\d course
INSERT INTO course(course_id,course_name,instructor,credits) VALUES (101,'Mathematics','Dr. Smith',5);
select * from courses
;
select * from course
select * from courses
;
select * from course;
\d student
ALTER TABLE student
ADD COLUMN course_id INT,
ADD CONSTRAINT fk_course
FOREIGN KEY (course_id)
REFERENCES course(cource_id);
ALTER TABLE student
ADD COLUMN course_id INT,
ADD CONSTRAINT fk_course
FOREIGN KEY (course_id)
REFERENCES course(course_id);
\d student
select * from student
;
UPDATE student
SET course_id = 101
WHERE student_id = 1;
select * from student;
INSERT INTO course(course_id,course_name,instructor,credits) VALUES (102,'Rocket Science','Dr. A.P.J.Abdual Kalam',5);
select * from course;
UPDATE student
SET course_id = 102
WHERE student_id = 2;
INSERT INTO student (first_name, last_name, date_of_birth, email)
VALUES
('Mahandree Sing', 'Dhoni', '1989-03-15', 'dhoni@gmail.com')
;
select * from student;
SELECT * FROM student 
;
SELECT * 
FROM student INNER JOIN course
WHERE student.course_id = course.course_id;
SELECT * 
FROM student INNER JOIN course;
SELECT * 
FROM student INNER JOIN course ON  student.course_id = course.course_id;
SELECT student.student_id, student.first_name, student.last_name, course.course_name
FROM student
LEFT JOIN course ON student.course_id = course.course_id;
SELECT student.student_id, student.first_name, student.last_name, course.course_name
FROM student
RIGHT JOIN course ON student.course_id = course.course_id;
INSERT INTO course(course_id,course_name,instructor,credits) VALUES (103,'PHYSICS','Dr. Newton',5);
SELECT student.student_id, student.first_name, student.last_name, course.course_name
FROM student
RIGHT JOIN course ON student.course_id = course.course_id;
SELECT student.student_id, student.first_name, student.last_name, course.course_name
FROM student
FULL JOIN course ON student.course_id = course.course_id;
SELECT student.student_id, student.first_name, student.last_name, course.course_name
FROM student
CROSS JOIN course;
CREATE TABLE marks (
    mark_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    marks INT,
    grade VARCHAR(2),
    FOREIGN KEY (student_id) REFERENCES student(student_id),
    FOREIGN KEY (course_id) REFERENCES course(course_id)
);
INSERT INTO marks (mark_id, student_id, course_id, marks, grade)
VALUES (1, 1, 101, 85, 'A');

INSERT INTO marks (mark_id, student_id, course_id, marks, grade)
VALUES (2, 2, 102, 78, 'B');
\d marks
select * from marks
;
SELECT *
FROM student
INNER JOIN marks ON student.student_id = marks.student_id
INNER JOIN course ON marks.course_id = course.course_id;
\d
\s
\s > /home/lucky/BridgeLabz-jsbasic/Postgres/psqlLogD1.txt
\o /home/lucky/BridgeLabz-jsbasic/Postgres/psqlLogD1.txt
\s
\o
\s > /home/lucky/BridgeLabz-jsbasic/Postgres/psqlLogD1.txt
\s
\t
\dt
\l
\i /home/lucky/BridgeLabz-jsbasic/Postgres/MockDataQuerry/student.txt
\i /home/lucky/BridgeLabz-jsbasic/Postgres/MockDataQuerry/student.sql
\i /home/lucky/BridgeLabz-jsbasic/Postgres/MockDataQuerry/Student.sql
select * student
;
select * from student;
\s > /home/lucky/BridgeLabz-jsbasic/Postgres/psqlLogD1.sql
\s /home/lucky/BridgeLabz-jsbasic/Postgres/psqlLogD1.sql
\d
\t
select * from students
;
select * from student;
/s
select * from course;
select * from student inner join course on student.course_id=course.course_id
;
select * from student outer join course on student.course_id=course.course_id;
select * from student outer join course 
;
select * from student right join course on student.course_id=course.course_id;
select * from student left join course on student.course_id=course.course_id;
select * from student full join course on student.course_id=course.course_id;
select * from student cross join course on student.course_id=course.course_id;
select * from student cross join course ;
select * from student inner join course on student.course_id=course.course_id inner join marks on course.course_id=marks.course_id;
\s > /home/lucky/BridgeLabz-jsbasic/Postgres/psqlLogD1.sql
select * from student order by first_name asc
;
select * from student order by date_of_birth asc
;
select * from student order by date_of_birth des
;
select * from student order by date_of_birth desc;
select now()
;
select now();
select now()::time;
select Extract(YEAR from now())
;
\d stdent
\d student
select * from student inner join course on student.course_id=course.course_id inner join marks on course.course_id=marks.course_id;
select * from student inner join course on student.course_id=course.course_id;
select * from student inner full course on student.course_id=course.course_id;
select * from student full join course on student.course_id=course.course_id;
\t
\d
create table student()
;
create table studentInfo (
student_id INT PRIMARY KEY,
student_name VARCHAR(50),
email VARCHAR(50) UNIQUE,
course_Name VARCHAR(255) FORENIGN KEY);
create table studentInfo (
student_id INT PRIMARY KEY,
student_name VARCHAR(50),
email VARCHAR(50) UNIQUE,
course_Name VARCHAR(255) FORGIN KEY);
create table studentInfo (
student_id INT PRIMARY KEY,
student_name VARCHAR(50),
email VARCHAR(50) UNIQUE,
course_Name VARCHAR(255) FOREGIN KEY);
create table studentInfo (
student_id INT PRIMARY KEY,
student_name VARCHAR(50),
email VARCHAR(50) UNIQUE,
course_Name VARCHAR(255) FOREIGN KEY);
create table studentInfo (
student_id INT PRIMARY KEY,
student_name VARCHAR(50),
email VARCHAR(50) UNIQUE,
course_Name VARCHAR(255) FOREIGN KEY);
create table studentInfo (
student_id INT PRIMARY KEY,
student_name VARCHAR(50) NOT NULL,
email VARCHAR(50) UNIQUE ,
course_Name VARCHAR(255) FOREIGN KEY);9
create table studentInfo (
student_id INT PRIMARY KEY,
student_name VARCHAR(50) NOT NULL,
email VARCHAR(50) UNIQUE ,
course_name VARCHAR(255) FOREIGN KEY references course_name);
create table studentInfo (
student_id INT PRIMARY KEY,
student_name VARCHAR(50) NOT NULL,
email VARCHAR(50) UNIQUE ,
course_name VARCHAR(255) FOREIGN KEY references course (course_name));
create table studentInfo (
student_id INT PRIMARY KEY,
student_name VARCHAR(50) NOT NULL,
email VARCHAR(50) UNIQUE ,
course_name VARCHAR(255) FOREIGN KEY references course(course_name));
create table studentInfo (
student_id INT PRIMARY KEY,
student_name VARCHAR(50) NOT NULL,
email VARCHAR(50) UNIQUE ,
course_name VARCHAR(255));
\d studentInfo
Insert into studentInfo(student_id,student_name,email,course_name) values (1,virat,virat@gmail.com,MATHEMATICS)
;
Insert into studentInfo(student_id,student_name,email,course_name) values (1,'virat','virat@gmail.com','MATHEMATICS')
;
SELECT * from studentInfo
;
SELECT course_name from studentInfo
;
SELECT * from studentInfo;
\d studentInfo
select s.student_id,s.first_name,s.eamil,c.course_name from student as s,course as c where s.student_id=c.course_id;
select s.student_id,s.first_name,s.eamil,c.course_name  from student as s,course as c where s.student_id=c.course_id;
select s.student_id,s.first_name,c.course_name  from student as s,course as c where s.student_id=c.course_id;
select s.student_id,s.first_name,c.course_name  from student as s,course as c where s.student_id=c.course_id;
select s.student_id,s.first_name,c.course_name  from student as s,course as c where s.course_id_id=c.course_id;
select s.student_id,s.first_name,c.course_name  from student as s,course as c where c.course_id_id=s.course_id;
select s.student_id,s.first_name,c.course_name  from student ,course where student.course_id_id=course.course_id;
select student_id,first_name,course_name  from (select * from student inner join course on student.course_id=course.course_id );
Insert into studentInfo(student_id,student_name,email,course_name) values (1,virat,virat@gmail.com,select coursename from course where course_id=103)
;
Insert into studentInfo(student_id,student_name,email,course_name) values (1,virat,virat@gmail.com,(select coursename from course where course_id=103))
;
Insert into studentInfo(student_id,student_name,email,course_name) values (1,'virat','virat@gmail.com',(select coursename from course where course_id=103))
;
Insert into studentInfo(student_id,student_name,email,course_name) values (1,'virat','virat@gmail.com',(select course_name from course where course_id=103));
Insert into studentInfo(student_id,student_name,email,course_name) values (2,'virat','virat@gmail.com',(select course_name from course where course_id=103));
Insert into studentInfo(student_id,student_name,email,course_name) values (2,'rohit shrma','rohit@gmail.com',(select course_name from course where course_id=103));
select * from  studentInfo
;
SELECT name
FROM student
WHERE student_id IN (SELECT student_id
                     FROM marks
                     WHERE grade = 'A');
SELECT first_name
FROM student
WHERE student_id IN (SELECT student_id
                     FROM marks
                     WHERE grade = 'A');
SELECT concat(first_name," ",last_name) as name
FROM student
WHERE student_id IN (SELECT student_id
                     FROM marks
                     WHERE grade = 'A');
SELECT concat(first_name,' ',last_name) as name
FROM student
WHERE student_id IN (SELECT student_id
                     FROM marks
                     WHERE grade = 'A');
SELECT concat(first_name," ",last_name) as name

FROM student
WHERE student_id = (SELECT student_id
                    FROM marks
                    WHERE course_id = 101
                    ORDER BY marks DESC
                    LIMIT 1);
SELECT concat(first_name,' ',last_name) as name
FROM student
WHERE student_id = (SELECT student_id
                    FROM marks
                    WHERE course_id = 101
                    ORDER BY marks DESC
                    LIMIT 1);
SELECT student_id, course_id
FROM marks
WHERE (student_id, course_id) IN (SELECT student_id, course_id
                                  FROM marks
                                  WHERE marks > 80);
SELECT name
FROM student s
WHERE EXISTS (SELECT 1
              FROM marks m
              WHERE m.student_id = s.student_id
              AND m.marks > (SELECT AVG(marks)
                             FROM marks
                             WHERE course_id = m.course_id));
SELECT first_name
FROM student s
WHERE EXISTS (SELECT 1
              FROM marks m
              WHERE m.student_id = s.student_id
              AND m.marks > (SELECT AVG(marks)
                             FROM marks
                             WHERE course_id = m.course_id));
CREATE VIEW top_students AS
SELECT student_id, name
FROM student
WHERE student_id IN (SELECT student_id FROM marks WHERE grade = 'A');
CREATE VIEW top_students AS
SELECT student_id, concat(first_name,' ',last_name)
FROM student
WHERE student_id IN (SELECT student_id FROM marks WHERE grade = 'A');
select * from top_students
;
CREATE VIEW student_courses AS
SELECT s.student_id, s.name, c.course_name, m.marks, m.grade
FROM student s
JOIN marks m ON s.student_id = m.student_id
JOIN course c ON m.course_id = c.course_id;
CREATE VIEW student_courses AS
SELECT s.student_id, concat(s.first_name,' ',s.last_name) as name, c.course_name, m.marks, m.grade
FROM student s
JOIN marks m ON s.student_id = m.student_id
JOIN course c ON m.course_id = c.course_id;
SELECT * FROM student_courses;
CREATE MATERIALIZED VIEW student_avg_marks AS
SELECT student_id, AVG(marks) AS avg_marks
FROM marks
GROUP BY student_id;
REFRESH MATERIALIZED VIEW student_avg_marks;
REFRESH MATERIALIZED VIEW student_avg_marks;
SELECT * FROM student_avg_marks;
SELECT 10 + 5 AS addition;
SELECT 10 - 5 AS subtraction;
SELECT 10 * 5 AS multiplication;
SELECT 10 / 5 AS division;
SELECT 10 % 3 AS modulus;
SELECT * FROM student WHERE age = 20;
SELECT * FROM student WHERE age <> 20;
SELECT * FROM student WHERE age > 20;
SELECT * FROM student WHERE age < 20;
SELECT * FROM student WHERE age >= 20;
SELECT * FROM student WHERE age <= 20;
SELECT * FROM student WHERE date_of_birth = '2004-05-27';
SELECT * FROM student WHERE date_of_birth <> '2004-05-27';
SELECT * FROM student WHERE date_of_birth > '2004-05-27';
SELECT * FROM student WHERE date_of_birth < '2004-05-27';
SELECT * FROM student WHERE date_of_birth >= '2004-05-27';
SELECT * FROM student WHERE date_of_birth <= '2004-05-27';
SELECT * FROM student WHERE date_of_birth < '2003-01-01' AND grade = 'A';
SELECT * FROM student WHERE date_of_birth < '2003-01-01' OR grade = 'A';
SELECT * FROM student WHERE NOT (grade = 'F');
SELECT * FROM student WHERE date_of_birth < '2003-01-01' AND grade = 'A';
SELECT * FROM student WHERE date_of_birth < '2003-01-01' OR course_id = '101';
SELECT * FROM student WHERE NOT (course_id = '101');
SELECT 'Hello' || ' ' || 'World' AS greeting;
SELECT * FROM student WHERE name LIKE 'A%';
SELECT * FROM student WHERE name ILIKE 'a%';
SELECT 'Hello' || ' ' || 'World' AS greeting;
SELECT * FROM student WHERE first_name LIKE 'A%';
SELECT * FROM student WHERE first_name ILIKE 'a%';
SELECT 5 & 3 AS bitwise_and;
SELECT 5 | 3 AS bitwise_or;
SELECT 5 # 3 AS bitwise_xor;
SELECT ~5 AS bitwise_not;
SELECT 5 << 1 AS bitwise_shift_left;
SELECT 5 >> 1 AS bitwise_shift_right;
SELECT course_id FROM student
UNION
SELECT course_id FROM course;

SELECT course_id FROM student
UNION ALL
SELECT course_id FROM course;

SELECT course_id FROM student
INTERSECT
SELECT course_id FROM course;

SELECT course_id FROM student
EXCEPT
SELECT course_id FROM course;
SELECT course_id FROM student
UNION
SELECT course_id FROM course;

SELECT course_id FROM student
UNION ALL
SELECT course_id FROM course;

SELECT course_id FROM student
INTERSECT
SELECT course_id FROM course;

SELECT course_id FROM student
EXCEPT
SELECT course_id FROM course;
SELECT * FROM student WHERE date_of_birth IS NULL;
SELECT * FROM student WHERE date_of_birth IS NOT NULL;

SELECT * FROM marks WHERE grade IN ('A', 'B', 'C');

SELECT * FROM student WHERE date_of_birth BETWEEN '2000-01-01' AND '2003-01-01';

SELECT * FROM student
WHERE student_id = ANY (SELECT student_id FROM marks WHERE marks >= 90);
SELECT * FROM student
WHERE student_id = ALL (SELECT student_id FROM marks WHERE marks > 70);
SELECT * FROM student
WHERE student_id = ANY (SELECT student_id FROM marks WHERE marks >= 50);
SELECT * FROM student
WHERE student_id = ALL (SELECT student_id FROM marks WHERE marks > 60);
SELECT * FROM student
WHERE student_id = ANY (SELECT student_id FROM marks WHERE marks >= 50);
SELECT * FROM student
WHERE student_id = ALL (SELECT student_id FROM marks WHERE marks > 90);
SELECT * FROM student
WHERE student_id = ALL (SELECT student_id FROM marks WHERE marks > 80);
\s /home/lucky/BridgeLabz-jsbasic/Postgres/logs/psqlLogD1.sql
