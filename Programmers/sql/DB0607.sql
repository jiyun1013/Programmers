SELECT * FROM TAB

INSERT INTO department (dept_id, dept_name, office)
values('920', '컴퓨터공학과','201호')

SELECT * FROM DEPARTMENT

INSERT INTO DEPARTMENT values('920', '컴퓨터공학과', '201호');
INSERT INTO DEPARTMENT values('923', '산업공학과', '207호');
INSERT INTO DEPARTMENT VALUES('925', '전자공학과', '308호');

SELECT * FROM DEPARTMENT

INSERT INTO STUDENT
values('1292001', '900424*1825409', '김광식', '3', '서울', 920);
INSERT INTO STUDENT
values('1292002', '900305*1730021', '김정현', '3', '서울', 920);
INSERT INTO STUDENT
values('1292003', '891021*2308302', '김현정', '4', '대전', 920);
INSERT INTO STUDENT
VALUES('1292301', '890902*2704012', '김현정', '2', '대구', 923);

SELECT * FROM STUDENT

INSERT INTO STUDENT
VALUES('1292303', '910715*1524390', '박광수', '2', '광주', 923);
INSERT INTO STUDENT
values('1292305', '921011*1809003', '김우주', '4', '부산', 923);
INSERT INTO STUDENT
values('1292501', '900825*1506390', '박철수', '3', '대전', 925);
INSERT INTO STUDENT
values('1292502', '911011*1809003', '백태성', '3', '서울', 925);

SELECT *FROM STUDENT

INSERT INTO PROFESSOR
values('92001', '590327*1839240', '이태규', '920', '교수', 1997);
INSERT INTO PROFESSOR
values('92002', '690702*1350026', '고희석', '920', '부교수', 2003);
INSERT INTO PROFESSOR
values('92301', '741011*2765501', '최성희', '923', '부교수', 2005);
INSERT INTO PROFESSOR
values('92302', '750728*1102458', '김태석', '923', '교수', 1999);
INSERT INTO PROFESSOR
values('92501', '620505*1200546', '박철재', '925', '조교수', 2007);
INSERT INTO PROFESSOR
values('92502', '740101*1830264', '장민석', '925', '부교수', 2005);

SELECT * FROM PROFESSOR

INSERT INTO  course values('C101', '전산개론', 3);
INSERT INTO COURSE VALUES('C102', '자료구조', 3);

SELECT * FROM COURSE

INSERT INTO COURSE values('C103', 'data베이스', 4);
INSERT INTO COURSE values('C301', '운영체제', 3);
INSERT INTO COURSE values('C302', 'com구조', 3);
INSERT INTO COURSE VALUES('C303', '이산수학', 4);
INSERT INTO COURSE values('C304', '객체지향', 4);
INSERT INTO COURSE values('C501', '인공지능', 3);
INSERT INTO COURSE values('C502', '알고리즘', 2);

SELECT * FROM COURSE

INSERT INTO CLASS VALUES('C101-01', 'C101', 2012, 1, 'A', '92301', '301호', 40);
INSERT INTO CLASS values('C102-01', 'C102', 2012, 1, 'A', '92501', '209호', 30);
INSERT INTO CLASS values('C103-01', 'C103', 2012, 1, 'A', '92501', '208호', 30);
INSERT INTO CLASS values('C103-02', 'C103', 2012, 1, 'B', '92301', '301호', 30);
INSERT INTO CLASS values('C501-01', 'C501', 2012, 1, 'A', '92501', '103호', 45);
insert into class values('C501-02', 'C501', 2012, 1, 'B', '92502', '204호', 25);
insert into class values('C301-01', 'C301', 2012, 2, 'A', '92502', '301호', 30);
insert into class values('C302-01', 'C302', 2012, 2, 'A', '92501', '209호', 45);
insert into class values('C502-01', 'C502', 2012, 2, 'A', '92001', '209호', 30);
insert into class values('C502-02', 'C502', 2012, 2, 'B', '92301', '103호', 26);

UPDATE CLASS
SET PROF_ID='92001'
WHERE CLASS_ID='C102-01'

SELECT * FROM CLASS

insert into takes values('1292001', 'C101-01', 'B+');
insert into takes values('1292001', 'C103-01', 'A+');
insert into takes values('1292001', 'C301-01', 'A');
insert into takes values('1292002', 'C102-01', 'A');
insert into takes values('1292002', 'C103-01', 'B+');
insert into takes values('1292002', 'C502-01', 'C+');
insert into takes values('1292003', 'C103-02', 'B');
insert into takes values('1292003', 'C501-02', 'A+');
insert into takes values('1292301', 'C102-01', 'C+');
insert into takes values('1292303', 'C102-01', 'C');
insert into takes values('1292303', 'C103-02', 'B+');
insert into takes values('1292303', 'C501-01', 'A+');

SELECT * FROM TAKES

DROP table TAKES;
DROP TABLE CLASS;
DROP TABLE COURSE;
DROP TABLE PROFESSOR;
DRoP TABLE STUDENT;
DROP TABLE DEPARTMENT ;

purge recyclebin;

UPDATE STUDENT 
SET YEAR = YEAR + 1

UPDATE PROFESSOR 
SET POSITION ='교수',dept_id='923'
WHERE name='고희석'

DELETE FROM PROFESSOR 
WHERE name='김태석'

SELECT * FROM emp;
SELECT *FROM tab;

SELECT *FROM DEPARTMENT, STUDENT;

SELECT dept_name, office, department.DEPT_ID, student.DEPT_ID, stu_id,
resident_id, name, YEAR, address
FROM DEPARTMENT, STUDENT
WHERE department.DEPT_ID = student.DEPT_ID;

SELECT address
from student

SELECT DISTINCT address
FROM STUDENT

SELECT student.NAME, student.STU_ID, department.DEPT_NAME
FROM student, DEPARTMENT
WHERE student.DEPT_ID=department.DEPT_ID 

UPDATE STUDENT
SET YEAR=YEAR-1

SELECT student.STU_ID
FROM STUDENT, DEPARTMENT
WHERE student.DEPT_ID =department.DEPT_ID AND 
student.YEAR = 3 AND
department.DEPT_NAME='컴퓨터공학과'

SELECT name, stu_id
FROM STUDENT
WHERE YEAR = 3or YEAR = 4
ORDER BY name, stu_id

SELECT s.name, d.dept_name
FROM student s, DEPARTMENT d 
WHERE s.DEPT_ID =d.DEPT_ID 

SELECT *
FROM STUDENT s1, STUDENT s2
WHERE s1.ADDRESS = s2.ADDRESS AND s1.name='김광식'

SELECT name 이름, POSITION 직위, 2012-YEAR_emp 재직연수
FROM PROFESSOR 

SELECT *
FROM STUDENT 
where name LIKE '김%'

SELECT *
FROM STUDENT
WHERE resident_id LIKE '%_2%'

SELECT count(*)
FROM STUDENT
WHERE YEAR=3

SELECT *
FROM emp
ORDER BY sal

SELECT COUNT(ENAME)
FROM EMP

SELECT count(MGR)
FROM emp

SELECT count(COMM)
FROM EMP

SELECT dept_id
FROM STUDENT

SELECT count(dept_id)
FROM STUDENT

SELECT count(DISTINCT dept_id)
FROM STUDENT

SELECT count(*)
FROM STUDENT s, DEPARTMENT d
WHERE s.DEPT_ID=d.DEPT_ID AND d.DEPT_name='컴퓨터공학과'

SELECT count(JOB)
FROM EMP
WHERE emp.JOB = 'SALESMAN'
AND SAL >= 1500

SELECT *
FROM PROFESSOR

SELECT sum(2012-year_emp)
FROM PROFESSOR

SELECT name, year_emp, 2012-year_emp
FROM PROFESSOR

SELECT sum(sal)
FROM EMP
WHERE emp.JOB ='SALESMAN'

SELECT *
FROM EMP
WHERE job='SALESMAN'

SELECT sum(SAL)
FROM emp

SELECT sum(SAL)
FROM EMP e 
WHERE e.JOB ='ANALYST'

SELECT *
FROM dept

SELECT *
FROM EMP

SELECT sum(SAL)
FROM EMP e, DEPT d 
WHERE e.DEPTNO =d.DEPTNO AND dname = 'RESEARCH'

SELECT avg(2012-year_emp)
FROM PROFESSOR

SELECT AVG(sal)
FROM emp
WHERE job='CLERK'

SELECT avg(sal)
FROM EMP e 
WHERE e.JOB ='SALESMAN'

SELECT avg(sal)
FROM emp
WHERE job='MANAGER'

SELECT avg(sal)
FROM emp
WHERE job = 'ANALYST'

SELECT avg(sal)
FROM emp
WHERE job = 'PRESIDENT'

SELECT max(sal), AVG(SAL), MIN(SAL)
FROM EMP e, DEPT d 
WHERE e.DEPTNO = d.DEPTNO 
AND dname = 'ACCOUNTING'

SELECT dept_id, count(*)
FROM STUDENT
GROUP BY dept_id

SELECT dept_name, count(*)
FROM STUDENT s, DEPARTMENT d 
WHERE s.DEPT_ID= d.DEPT_ID 
GROUP BY DEPT_name

SELECT dname, COUNT(*), avg(sal), max(sal), min(sal)
FROM EMP e, DEPT d
WHERE e.DEPTNO = d.DEPTNO 
GROUP BY dname
ORDER BY dname

SELECT dept_name, count(*) c, avg(2012-year_emp), max(2012-year_emp)
FROM PROFESSOR p, DEPARTMENT d
WHERE p.DEPT_ID=d.DEPT_ID 
GROUP BY dept_name

SELECT dept_name, COUNT(*), avg(2012-year_emp), max(2012-year_emp)
FROM PROFESSOR p, DEPARTMENT d 
WHERE p.DEPT_ID = d.DEPT_ID
GROUP BY dept_name
HAVING avg(2012-year_emp) >= 10

select dname, count(*), avg(sal), max(sal), min(sal)
from emp e, dept d
where e.deptno = d.deptno
group by dname
having count(*) >= 5

SELECT *
FROM emp
WHERE comm IS NOT null
--WHERE comm IS null

SELECT stu_id
FROM TAKES
WHERE grade <> 'A+'

SELECT stu_id
FROM TAKES t 
WHERE grade = 'A+'

SELECT *
FROM emp 
WHERE comm != 1400

SELECT COUNT(*)
FROM EMP
WHERE comm is NULL

--위아래 비교 가능해야함 ( 위는 10, 아래는 0)

SELECT COUNT(comm)
FROM EMP
WHERE comm is NULL

SELECT *
FROM class

SELECT *
FROM COURSE 

SELECT title
FROM COURSE 
WHERE course_id IN 
(SELECT DISTINCT course_id
FROM CLASS 
WHERE classroom='301호')


SELECT DISTINCT title
FROM course c1, class c2
WHERE c1.COURSE_ID = c2.COURSE_ID AND classroom='301호'

SELECT title
FROM course
WHERE course_id NOT IN
(SELECT DISTINCT course_id
FROM CLASS
WHERE YEAR=2012 AND semester=2)

CREATE OR REPLACE VIEW v_takes AS
SELECT stu_id, class_id
FROM takes

SELECT *
FROM TAKES

SELECT *
FROM V_TAKES