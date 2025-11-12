# ORACLE (20251010,20251013 ~20251017)
---
-- #1. 테이블구조확인
desc emp;
desc dept;

show user  --설명) 현재줄 선택하고 ctrl + enter
select table_name from user_tables;  --사용할수 있는 테이블 확인

-- #2. 전체테이블 조회
select * from emp;

--#3. (원하는 테이블만) 열조회
select empno, ename from emp;
select ename, job   from emp;

--#4. 중복제거(distant)
select distinct job    from emp;
select all     job    from emp;

--#5. 연산 및 별칭
desc emp;

-- 3달치 급여 
select ename "유저", sal as "월급", sal+sal+sal as "3달치 월급"   from emp;

--#6. 정렬 
select   ename, sal from     emp order by sal asc;  --asc는 오름차순
select   ename, sal from emp order by sal desc;  --desc는 내림차순


--## Step3 연습문제
--https://sally03915.github.io/stackventure_250825/004_oracle/oracle002_select_basic#42
--Q1. EMP테이블 구성
desc emp;

--Q2. 
desc dept;

--Q3. 
desc salgrade;

--Q4. 
select * from emp;

--Q5. 
select empno, ename, deptno from emp; 

--Q6. 
select distinct deptno from emp;

--Q7. 
select distinct job, deptno from emp; 

--Q8. 
select all job, deptno from emp;
select     job, deptno from emp; -- all 안써도 처리해주는 내용은 같음.

--Q9. 
select ename, sal, sal*12+comm from emp;

--Q10. 
select ename, sal, sal+sal+sal+sal+sal+sal+sal+sal+sal+sal+sal+sal+comm , comm from emp;

--Q11. 
select ename, sal, sal+sal+sal+sal+sal+sal+sal+sal+sal+sal+sal+sal+comm as "ANNSAL", comm from emp;

--Q12. 
select * from emp order by sal asc; 
select * from emp order by sal; --asc는 생략 가능 

--Q13. 
select* from emp order by sal desc; 

--Q14. 
select *from emp order by empno asc, sal desc;

--※테이블 emp
--사용가능한 테이블 확인
select table_name from user_tables;

-- emp 테이블삭제 )복구X) 
drop table emp;
select table_name from user_tables;

--emp 테이블 만들기 정의어 만들기(DDL) - CREATE, ALTER, DROP
CREATE TABLE emp (
  empno NUMBER(4),
  ename VARCHAR2(10),
  job VARCHAR2(9),
  mgr NUMBER(4),
  hiredate DATE,
  sal NUMBER(7,2),
  comm NUMBER(7,2),
  deptno NUMBER(2)
); --기본코드 암기.
desc emp; 

--emp테이블 값넣기 2. 조작어(DML), insert(삽입), select(조회), update(수정), delete(지우기)
INSERT INTO emp VALUES (7839, 'KING', 'PRESIDENT', NULL, TO_DATE('1981-11-17','YYYY-MM-DD'), 5000, NULL, 10);
INSERT INTO emp VALUES (7698, 'BLAKE', 'MANAGER', 7839, TO_DATE('1981-05-01','YYYY-MM-DD'), 2850, NULL, 30);
INSERT INTO emp VALUES (7782, 'CLARK', 'MANAGER', 7839, TO_DATE('1981-06-09','YYYY-MM-DD'), 2450, NULL, 10);
INSERT INTO emp VALUES (7566, 'JONES', 'MANAGER', 7839, TO_DATE('1981-04-02','YYYY-MM-DD'), 2975, NULL, 20);
INSERT INTO emp VALUES (7902, 'FORD', 'ANALYST', 7566, TO_DATE('1981-12-03','YYYY-MM-DD'), 3000, NULL, 20);
INSERT INTO emp VALUES (7369, 'SMITH', 'CLERK', 7902, TO_DATE('1980-12-17','YYYY-MM-DD'), 800, NULL, 20);
INSERT INTO emp VALUES (7788, 'SCOTT', 'ANALYST', 7566, TO_DATE('1987-07-13','YYYY-MM-DD'), 3000, NULL, 20);
INSERT INTO emp VALUES (7876, 'ADAMS', 'CLERK', 7788, TO_DATE('1987-07-13','YYYY-MM-DD'), 1100, NULL, 20);
INSERT INTO emp VALUES (7934, 'MILLER', 'CLERK', 7782, TO_DATE('1982-01-23','YYYY-MM-DD'), 1300, NULL, 10);
INSERT INTO emp VALUES (7654, 'MARTIN', 'SALESMAN', 7698, TO_DATE('1981-09-28','YYYY-MM-DD'), 1250, 1400, 30);
INSERT INTO emp VALUES (7499, 'ALLEN', 'SALESMAN', 7698, TO_DATE('1981-02-20','YYYY-MM-DD'), 1600, 300, 30);
INSERT INTO emp VALUES (7844, 'TURNER', 'SALESMAN', 7698, TO_DATE('1981-09-08','YYYY-MM-DD'), 1500, 0, 30);
INSERT INTO emp VALUES (7900, 'JAMES', 'CLERK', 7698, TO_DATE('1981-12-03','YYYY-MM-DD'), 950, NULL, 30);
INSERT INTO emp VALUES (7521, 'WARD', 'SALESMAN', 7698, TO_DATE('1981-02-22','YYYY-MM-DD'), 1250, 500, 30);

commit; -- 삽입 (반영)

--##Step4 사고확장
--https://sally03915.github.io/stackventure_250825/004_oracle/oracle002_select_basic#50

--EX001
select distinct job from emp;

--EX002 --암기
select EMPNO  AS EMPLOYEE_NO,
       ENAME  AS EMPLOYEE_NAME,
       JOB,
       MGR    AS MANAGER,
       HIREDATE,
       SAL    AS SALARY,
       COMM   AS COMMISSION,
       DEPTNO AS DEPARTMENT_NO
from emp
order by DEPTNO DESC, ENAME; -- 우선순위는 DEPTNO DESC 부터 인식함.
---
---
SELECT 기본 (2)  조건에 맞는 데이터 조회
--  #1. where      
--  #2. 비교연산자 : (같다) = , (다르다) != , <>  ,  ^=   
--  #3. 논리연산자 : AND / BETWEEN      AND  (범위지정) , OR / IN , NOT    
--  #4. like     : 패턴검색
--  #5. null 처리 : null 여부확인 
--  #6. 집합연산자 : union (중복제거하고 합집합) ,  union all (중복 포함하고 합집합) , minus(차집합) , intersect(교집합)


-- #1. 전체데이터 조회 (emp 테이블에서)
select * from emp;

-- #2. where 조건조회
select * from emp where empno  = 7839;  --같다.
select * from emp where empno != 7839;  --다르다. 
select * from emp where empno <> 7839;  --다르다.
select * from emp where empno ^= 7839;  --다르다.

select * from emp where ename='KING';  

select * from emp where empno=7839 and ename='KING';  --and 두가지다 조건이 맞아야함. 
select * from emp where empno=7839 and ename='SCOTT'; -- 두가지 조건이 맞지 않아 나오지 않음. 
select * from emp where empno=7839 or ename='SCOTT';  -- or 둘중에 하나

select * from emp where sal*12 = 3600;
select * from emp where sal   >= 3000;

select * from emp where ename >='S';
select * from emp where ename <='SOR'; -- 우선순위(밑에 있는 것이 걸러짐.) 1순위 S, 2순위 O, ,, 

select * from emp where deptno >= 20 and deptno <= 30; -- >= , <=
select * from emp where deptno between 20 and  30; -- between and 는 이상과 이하

select * from emp where deptno=10 or deptno=30; 
select * from emp where deptno in (10, 30);

select * from emp where ename = 'KING';   --이름이 일때
select * from emp where ename LIKE 'A%';  -- A% = 이름이 A로 시작
select * from emp where ename LIKE '%A%'; -- %A% = A가 이름 중간에 있음. 
select * from emp where ename LIKE '%G'; -- %A% = 이름이 G로 끝남.
select * from emp where ename Like '_I%' -- _(첫글자) 두번째글자가 I

select * from emp where comm = null;   -- X null (데이터가 없다는 상태 )
select * from emp where comm is null; )
select * from emp where comm is not null;

-- 연습문제 (1~29)
-- https://sally03915.github.io/stackventure_250825/004_oracle/oracle003_select_where#11

--Q001 - EMP테이블의 모든 열을 조회하시오. 
select * from emp;

--Q002 EMP테이블에서 부서번호가 30인 데이터만 조회하시오.
select * from emp where deptno =30; 

--Q003 EMP테이블에서 AND를 이용하여 부서번호가 30이고 JOB이 'SALESMAN' 인 데이터만 조회하시오.
select * from emp where deptno=30 and job='SALESMAN';

--Q004 EMP테이블에서 OR를 이용하여 부서번호가 30이거나 JOB이 'CLERK' 인 데이터만 조회하시오.
select * from emp where deptno=30 or job='CLERK';

--Q005 EMP테이블에서 SAL 열에 12를 곱한값이 36000인 행을 조회하시오.
select * from emp where sal*12 = 36000;
--sql처리순서
--select *                 ③ * (필터링된 모든 컬럼 값)
--from emp                 ① emp 테이블 읽어오기.
--where     sal*12=36000   ② 각행에 대해(한 명 분의 자료묶음) sal*12=36000 조건평가


--Q006 EMP테이블에서 SAL 열이 3000이상인 행을 조회하시오. 
select * from emp where sal >= 3000;

--Q007 EMP테이블에서 ENAME 열의 첫문자가 F와 같거나 뒤에 있는 행을 조회하시오. 
select * from emp where ename >= 'F';

--Q008 EMP테이블에서 ENAME 열의 문자열이 첫문자 F, 두번째 문자 O, 세번째 문자 R, 네번째문자열이 Z 인 문자열보다 앞에 있는 행을 조회하시오.
select * from emp where ename <= 'FORZ'; 

--Q009 EMP테이블에서 != 를 이용하여 SAL열이 3000이 아닌 행을 조회하시오.
select * from emp where sal != 3000;

--Q010 EMP테이블에서 <> 를 이용하여 SAL열이 3000이 아닌 행을 조회하시오.
select * from emp where sal <> 3000; 

--Q011 EMP테이블에서 ^= 를 이용하여 SAL열이 3000이 아닌 행을 조회하시오. 
select * from emp where sal ^= 3000; 

--Q012 EMP테이블에서 NOT를를 이용하여 SAL열이 3000이 아닌 행을 조회하시오. 
select * from emp where NOT sal = 3000;

--Q013 EMP테이블에서 OR 를 이용하여 JOB 열이 'MANAGER' ,'SALESMAN' , 'CLERK' 중 하나라도 포함되는 행을 조회하시오. 
select * from emp where job = 'MANAGER' 
                     or job = 'SALESMAN' 
                     or job = 'CLERK';
                     
--Q014 EMP테이블에서 IN 를 이용하여 JOB 열이 'MANAGER' ,'SALESMAN' , 'CLERK' 중 하나라도 포함되는 행을 조회하시오. ( in 사용 많이 함.
-- 처리순서 from → where → select)
select * from emp where job in ('MANAGER', 'SALESMAN', 'CLERK');

--Q015 EMP테이블에서 등가연산자(!= , <>, ^=)와 AND 를 이용하여 JOB 열이 'MANAGER' ,'SALESMAN' , 'CLERK' 중 하나라도 포함되지않는 행을 조회하시오. 
select * from emp where job != 'MANAGER'
                    and job <> 'SALESMAN'
                    and job ^= 'CLERK';

--Q016 EMP테이블에서 NOT IN 를 이용하여 JOB 열이 'MANAGER' ,'SALESMAN' , 'CLERK' 중 하나라도 포함되지않는 행을 조회하시오. 
SELECT *
  FROM EMP
 WHERE JOB NOT IN ('MANAGER', 'SALESMAN', 'CLERK');

--Q017 EMP테이블에서 대소비교연산자(<= , >= ) and 를 이용하여 sal 열이 2000이상 3000이하인인 행을 조회하시오. 
select * from emp where sal >= 2000 and sal <=3000;

--Q018 EMP테이블에서 BETWEEN AND 를 이용하여 sal 열이 2000이상 3000이하인인 행을 조회하시오. 
select * from emp where sal between 2000 and 3000 ;

--Q019 EMP테이블에서 NOT BETWEEN AND 를 이용하여 sal 열이 2000이상 3000이하인 사이 이외의 행을 조회하시오.
select * from emp where sal not between 2000 and 3000;

--Q020 EMP테이블에서 ENAME이 S로 시작하는 행을 조회하시오.
select * from emp where ename LIKE 'S%'; 

--Q021 EMP테이블에서 ENAME의 두번째 글자가 L인 행을 조회하시오.
select * from emp where ename LIKE '_L%';

--Q022 EMP테이블에서 ENAME에 AM이 포함되어 있는 행을 조회하시오.
SELECT * FROM EMP WHERE ENAME LIKE '%AM%'; -- 소문자로 입력했을때, 안되면 대문자로 입력해보기.

--Q023 EMP테이블에서 ENAME에 AN이 포함되어 있지 않는 행을 조회하시오.
select * from emp where ename NOT LIKE '%AN%';

--Q024 EMP테이블에서 별칭을 사용하여 다음과 같이 '연간총수입' 행을 조회하시오. (내가 원하는 것만 가지고 오기.)
-- 별칭은 실행할때만 나옴. (테이블 다음에 오는 것이 별칭)
select ename, sal,  sal*12+comm as annsal, comm from emp; 
select ename, sal,  sal*12+comm    annsal, comm from emp;  -- as 빼고 입력해도 됨.

select ename 이름, sal,  sal*12+comm as annsal, comm from emp; 
from emp; --별칭 = e -- 


--Q025 코드확인
--NULL의 의미
--비어 있는 상태 , 현재 무슨 값인지 확정 되지 않은 상태, 값 자체가 존재하지 않은 상태
--NULL과 비교연산자(=) 와 같이 사용하면 안됨.
--어떤값인지 모르므로 작은지, 큰지 모르기 때문에 값이 안나옴.
select * from emp where comm = null; ((값이 와야할)자리는 맞지만, 값(null)은 맞지 않음.)

--Q026 IS NULL
--상태확인
--NULL 인지 아닌지를 비교하는 용도
select * from emp where comm is null;
select * from emp where comm is not null;


--Q027 EMP테이블에서 직송상관이 있는데이터만 조회하시오 MGR열이 NULL 이 아닌 행조회
select * from emp where mgr is not null; --null은 비어있는 상태

--Q028 - 되는 코드는? > X
--있는지 없는지만 판단. 
--다음코드를 해석 하시오.
SELECT *
  FROM EMP
 WHERE SAL > NULL
    OR COMM IS NULL; 
    --X (fales) and true 

--Q029 - 되는 코드는? > O
--있는지 없는지만 판단. 
--다음코드를 해석석하시오.
SELECT *
  FROM EMP
 WHERE SAL > NULL
    OR COMM IS NULL;
        -- (false) and true
---<!--day032.md-->
---
--#7. 집합연산자 : union (중복제거하고 합집합) , union all (중복 포함하고 합집합), minus(차집합), intersect(교집합)
-----------------------------------------------
SELECT * 
FROM EMP
WHERE DEPTNO=10
-----------------------------------------------
UNION -- 겹치면 빼버림
-----------------------------------------------
SELECT * 
FROM EMP
WHERE DEPTNO=10;
-----------------------------------------------

--#8. union all (중복 포함하고 합집합)
-----------------------------------------------
SELECT * 
FROM EMP
WHERE DEPTNO=10
-----------------------------------------------
UNION ALL --겹치는 데이터가 있어도 체크.
-----------------------------------------------
SELECT * 
FROM EMP
WHERE DEPTNO=10;
-----------------------------------------------

--#9.  minus(차집합
-----------------------------------------------
SELECT * 
FROM EMP
-----------------------------------------------
MINUS
-----------------------------------------------
SELECT * 
FROM EMP
WHERE DEPTNO=20;
-----------------------------------------------

--#10.  intersect(교집합)
-----------------------------------------------
SELECT * 
FROM EMP
-----------------------------------------------
INTERSECT
-----------------------------------------------
SELECT * 
FROM EMP
WHERE DEPTNO=20;
-----------------------------------------------

--연습문제(30~37)
--https://sally03915.github.io/stackventure_250825/004_oracle/oracle003_select_where#71

--Q030 UNION을 이용하여 DEPTNO가 10이거나, 20인 데이터의 EMPNO, ENAME, SAL, DEPTNO 열을 조회하시오.
select empno, ename, sal, deptno 
from emp 
where deptno =10

union 

select empno, ename, sal, deptno 
from emp 
where deptno = 20;
--oreder by

--Q031 에러가 나는 이유는? 열의 개수가 다르기에 오류가 남.
--열의 갯수가 다를때 
--ORA-01789: query block has incorrect number of result columns
--
--https://docs.oracle.com/error-help/db/ora-01789/01789. 00000 -  "query block has incorrect number of result columns"
--*Cause:    All of the queries participating in a set expression do
--           not contain the same number of SELECT list columns.
--*Action:   Check that all the queries in the set expression have
--           the same number of SELECT list columns.

select  empno, ename, sal, deptno
from    emp
where   deptno = 10
union
select  empno, ename, sal
from    emp
where   deptno = 20;

--Q032 에러가 나는 이유는? 속성의 갯수는 맞았으나 자료형이 틀리기 때문에 오류발생
--자료형이 다를때

--ORA-01790: expression must have same datatype as corresponding expression
--
--https://docs.oracle.com/error-help/db/ora-01790/01790. 00000 -  "expression must have same datatype as corresponding expression"
--*Cause:    A SELECT list item corresponds to a SELECT list item
--           with a different datatype in another query of the same set
--           expression.
--*Action:   Check that all corresponding SELECT list items have
--           the same datatypes. Use the TO_NUMBER, TO_CHAR, and TO_DATE
--           functions to do explicit data conversions.
--85행, 8열에서 오류 발생

SELECT EMPNO, ENAME, SAL, DEPTNO
  FROM EMP
 WHERE DEPTNO = 10
UNION
SELECT ENAME, EMPNO, DEPTNO, SAL
  FROM EMP
 WHERE DEPTNO = 20;

--Q033 동작하는 이유는? ★속성의 갯수와 자료형
--출력 열개수와 자료형이 같으므로 동작가능!
SELECT EMPNO, ENAME, SAL, DEPTNO
  FROM EMP
 WHERE DEPTNO = 10
UNION
SELECT SAL, JOB, DEPTNO, SAL
  FROM EMP
 WHERE DEPTNO = 20;

--Q034 UNION과 UNION ALL의 차이는?
-- union    : 겹치는 데이터가 있으면 빠지고 합집합
-- union all: 겹치는 데이터가 있어도 출력되고 합집합
--중복빼고 합집합

SELECT EMPNO, ENAME, SAL, DEPTNO
  FROM EMP
 WHERE DEPTNO = 10
UNION
SELECT EMPNO, ENAME, SAL, DEPTNO
  FROM EMP
 WHERE DEPTNO = 10;

--Q035 UNION과 UNION ALL의 차이는?
-- 중복 포함하고 합집합
SELECT EMPNO, ENAME, SAL, DEPTNO
  FROM EMP
 WHERE DEPTNO = 10
UNION ALL
SELECT EMPNO, ENAME, SAL, DEPTNO
  FROM EMP
 WHERE DEPTNO = 10;
 
--Q036 MINUS의 의미는? 10번부서만 빠짐(차집합)
--EMP테이블 전체행을 조회한 첫번째 SELECT문의 결과에서 10번부서에 있는 사원데이터를 제외한 결과값
 SELECT EMPNO, ENAME, SAL, DEPTNO
  FROM EMP
MINUS
SELECT EMPNO, ENAME, SAL, DEPTNO
  FROM EMP
 WHERE DEPTNO = 10;
  
--Q037 INTERSECT 의미는? deptno=10인 데이터만 출력(교집합)
--두 SELECT 문의 결과값이 같은데이터만 출력
SELECT EMPNO, ENAME, SAL, DEPTNO
  FROM EMP
INTERSECT
SELECT EMPNO, ENAME, SAL, DEPTNO
  FROM EMP
 WHERE DEPTNO = 10;


--사고확장(1~6)
--https://sally03915.github.io/stackventure_250825/004_oracle/oracle003_select_where#87

--EX001 EMP테이블에서 ENAME이 S로 끝나는 사원데이터를 모두 조회하시오
select * 
from emp
where ename LIKE '%S';

--EX002 EMP테이블에서 DEPTNO가 30인 사원 중 직책이(JOB)이 SALESMAN 인 사원의 EMPNO, ENAME, JOB, SAL, DEPTNO를 조회하시오
select empno, ename, job, sal, deptno
from emp 
where deptno = 30
    and job = 'SALESMAN';

--EX003-1 집합연산자( UNION을 )를 사용하지 않은 방식
--EMP테이블에서 IN 연산자를 이용하여 DEPTNO 가 20 또는 30인 사원의 SAL이 2000 초과인 사원을 조회하시오
select empno, ename, job, sal, deptno 
from emp 
where deptno in(20,30)
    and sal > 2000;
    
--EX003-2 집합연산자( UNION을 )를 사용한 방식
--EMP테이블에서 IN 연산자를 이용하여 DEPTNO 가 20 또는 30인 사원의 SAL이 2000 초과인 사원을 조회하시오
--select empno, ename, job, sal, deptno 
--from emp
--where deptno in (20, 30) 
--     and sal >2000
--union
--select empno, ename, job, sal, deptno
--from emp 
--where deptno in (20, 30)
--     and sal >2000;

select  empno, ename, job, sal, deptno
from     emp
where deptno in (20) and sal>2000
union
select empno, ename, job, sal, deptno
from    emp
where deptno in (30) and sal>2000

--EX004 EMP테이블에서 NOT BETWEEN AND 연산자를 사용하지 않고 SAL이 2000이상 3000이하의 값을 가진 데이터만 조회하시오.-
--Q1. 2000 ~ 3000 사이인가? 표현값(2개)
--Q2. 2000 ~ 3000 사이가 아닌가? NOT BETWEEN AND 표현값(1개)
--Q1. 2000 ~ 3000 사이가 아닌 값 표현 or 사용(1개)?
select * from emp where sal >= 2000 or sal <=3000;
select * from emp where sal not between 2000 and sal 3000;
select * from emp where sal >= 2000 and sal <=3000;
select * from emp where sal between 2000 and sal 3000;



--EX005 EMP테이블에서 ENAME에 E가 포함되고 DEPTNO가 30인 사원의 급여가 1000~2000사이가 아닌 사원의 ENAME, EMPNO, SAL, DEPTNO 를 조회하시오.
select empno, ename,sal, deptno 
from emp 
where ename LIKE '%E%' 
    and deptno = 30
    and sal not between 1000 and 2000;

-- union으로 풀어보기.
--select empno, ename,sal, deptno
--from emp
--where
--union
--select empno, ename,sal, deptno
--from emp
--where


--EX006
--EMP테이블에서 COMM 이 없고 , MGR은 존재하면 JOB 이 'MANAGER', 'CLERK' 인 사원 중 사원의 이름2번째 글자기 L 이 아닌 사원의 정보를 조회하시오.

select * 
from emp 
where job in ('MANAGER', 'CLERK')
    and ename not LIKE '_L%'; 

select *
from emp 
where comm is null 
and mgr is not null
and job in ('MANAGER', 'CLERK')
and ename not LIKE '_L%';
---
---
-- Ex1  emp 테이블에서 job 데이터 중복없이 조회 
select distinct job
from emp;
--where
--order by -- 순서 먼저 보고 가기.

-- Ex2
--조회할 테이블은 EMP 테이블이며 모든 열을 출력하시오.
--별칭 (AS)
--EMPNO → EMPLOYEE_NO,
--ENAME → EMPLOYEE_NAME,
--MGR → MANAGER,
--SAL → SALARY,
--COMM → COMMISSION,
--DEPTNO → DEPARTMENT_NO
--부서번호를 기준으로 내림차순으로 정렬하되,
--부서번호가 같다면 사원이름을 기준으로 오름차순 정렬하시오.
 select 
    EMPNO  AS EMPLOYEE_NO,
    ENAME  AS EMPLOYEE_NAME,
    MGR    AS MANAGER,
    SAL    AS SALARY,
    COMM   AS COMMISSION,
    DEPTNO AS DEPARTMENT_NO
from emp
order by deptno desc, ename asc;
 
-- Ex3  
-- EMP테이블에서 대소비교연산자(<= , >= ) and 를 이용하여 sal 열이 2000이상 3000이하인인 행을 조회
 select  *
 from   emp 
 where  sal >= 2000 and sal <= 3000;
-- order by

-- Ex4  
--  EMP테이블에서 BETWEEN AND 를 이용하여 sal 열이 2000이상 3000이하인인 행을 조회
 select  * 
 from emp 
 where sal between  2000 and 3000;
-- order by
 
-- Ex5
-- EMP테이블에서 OR 를 이용하여 
-- JOB 열이 'MANAGER' ,'SALESMAN' , 'CLERK' 중 하나라도 포함되는 행을 조회
 select * from emp where job='MANAGER' or job='SALARYMAN'or job='CLERK';
-- Ex6
-- EMP테이블에서 IN 를 이용하여 
-- JOB 열이 'MANAGER' ,'SALESMAN' , 'CLERK' 중 하나라도 포함되는 행을 조회
-- from → where  → select  
select * from emp where job in('MANAGER', 'SALARYMAN', 'CLERK');
-- Ex7. EMP테이블에서 ENAME이 S로 시작하는 행
 select * from emp where ename LIKE 'S%';
-- Ex8. EMP테이블에서 ENAME의 두번째 글자가 L인 행을 조회
 select * 
 from emp 
 where  ename LIKE '_L%';
-- Ex9. EMP테이블에서 ENAME에 AN이 포함되어 있는 행을 조회
 select *
 from emp
 where ename LIKE '%AM%';
---
---
--------------------------------------------------------------------------------------
--003_select_function.sql
--1. 문자열 
--2. 숫자
--3. 날짜  
--4. 변환(함수)
--5. 조건(함수)


--------------------------------------------------------------------------------------
--003_select_function.sql
--1. 문자열 
--1-1. upper 대문자, lower 소문자, initcap 대소문자 변환
--1-2. length 문자열길이 (회사마다 byte수에 따라 문자열길이가 달라짐.)
--1-3. substr 부분문자열, instr 위치문자열 
--1-4. replace 찾아서 바꾸기(치환) , lpad , rpad [123**] (갯수만큼) 채우기
--1-5. trim, ltrim, rtrim 공백빼기 (trim나오면 공백빼기!!)
--1-6. concat 문자열연결


--#1. 대소문자
select ename, upper(ename), lower(ename), initcap(ename)
from emp;

--#2. 문자열길이 --lengthb(b=바이트수)
select ename, length(ename) , '킹', length('킹') , lengthb('킹') 
from emp;

--#3. substr (문자열, 어디서부터 몇개)부분문자열, instr 위치문자열
select ename, substr(ename, 1,2) , substr(ename, 1,3) , substr(ename, 2,2), substr(ename, 3,2)  , substr(ename, -2,2) from emp;
select substr('oracle',-1) , substr('oracle' ,-3) , substr('oracle',-3,2) from dual;
-- e 뒤에서부터 세번째~끝까지                 cle 뒤에서부터 세번째~끝까지  cl 뒤에 3번째부터 2개
--   -붙이면? 끝에서 부터 계산
select substr('oracle',-2) , substr('oracle' ,-2,1)  from dual;

select instr('oracle', 'a') from dual;  --o(1), r(2), a(3), c(4), l(5), e(6)
select ename, instr(ename, 'A') from emp;  -- 있으면 위치, 없으면 0

--#4. replace 어떤 문자열을 찾아서 바꾸기(치환) , lpad , rpad 채우기
select replace( '010-1234-5678', '-', ' ' ) from dual;
select lpad('oracle', 10, '#'), rpad('oracle', 10, '#') from dual; -- l=left 채우기, r=right채우기

--#5. trim, ltrim, rtrim 공백빼기 / l=left 빼기, r=right빼기
select trim(' *oracle* ') , ltrim(' *oracle* '), rtrim(' *oracle* ')
from dual;  

--#6. concat 문자열연결 두개의 문자열만 연결가능 
select concat('Hello', 'Oracle') from dual;
select concat(concat('Hello', 'Oracle'), '★') from dual; --concat은 중첩해서 사용가능

select 'Hello' || 'Oracle' || '♣' from dual;


--------------------------------------------------------------------------------------

--##1. 문자열 연습문제
--https://sally03915.github.io/stackventure_250825/004_oracle/oracle004_select_fn#14

--Q001 EMP 테이블에서 ENAME을 대문자, 소문자, 첫글자만 대문자로 조회하시오.
select ename, upper(ename), lower(ename), initcap(ename) from emp; 

--Q002 EMP 테이블에서 UPPER를 이용하여 ENAME이 KING인 데이터를 조회하시오. 
select ename from emp where upper (ename)= upper ('king'); 
select ename from emp where lower (ename)= lower ('king'); 

--Q003 EMP 테이블에서 UPPER를 이용하여 ENAME에 KING인 포함된 데이터를 조회하시오.
--대소문자 상관없이 KING인 사람을 조회하는 것이 가능해짐.
select ename from emp where upper(ename) = 'KING'; --같다.
select ename from emp where upper(ename) LIKE upper('%king%'); --정답
select ename from emp where upper(ename) LIKE upper('%a%'); --포함되는

--Q004 EMP 테이블에서 LENGTH를 이용하여 ENAME의 문자열 길이를 조회하시오.
select upper(ename), length(ename) from emp; 

--Q005 EMP 테이블에서 ENAME의 문자열 길이가 5이상인 데이터를 조회하시오.
select ename, length(ename) 
from emp
where length(ename) >= 5; 

--Q006 LENGTH('한글'), LENGTHB('한글') 문자열길이반환, 문자열 바이트 수 반환환 --dual= 테이블에 대한 정보를 알 수 없을때 사용.
select length('한글'), lengthb('한글') from dual; 

--Q007
--문자열 일부분을 추출
--SUBSTR( 문자열 , 시작위치, 추출길이)
select job, substr(job, 1,2), substr(job, 3,2), substr(job, 5)
from emp; 

--Q008
---의 의미는?
--C(-5)L(-4)E(-3)R(-2)K(-1)
select job, substr(job, -length(job)), substr(job, -length(job),2), substr(job, -3)
from emp;

--Q009
--특정문자위치 찾기
--INSTR(문자열, 찾을거, 시작위치, 몇번째째)
--1. 해당위치에 글자가 무엇인지 확인 3, 12, 4 (L)
--'HELLO, ORACLE!' 문자열에서 다음과 같이 찾으시오.
--H(1)E(2)L(3)L(4)O(5) (7)O(8)R(9)A(10)C(11)L(12)E(13)
--2. INSTR이용해서 해당값 구하기
select 'HELLO, ORACLE!'
    , instr('HELLO, ORACLE!', 'L') as instr_1
    , instr('HELLO, ORACLE!', 'L', 5) as instr_2
    , instr('HELLO, ORACLE!', 'L', 2, 2) as instr_2
from dual; 
--3 12 4

--Q010
--EMP테이블에서 INSTR 함수로 사원이름에 S가 있는 데이터를 조회하시오
SELECT *
FROM EMP 
WHERE instr (ename,'S') > 0; --instr은 못찾으면 0

--Q011 EMP테이블에서 LIKE를 이용하여 사원이름에 S가 있는 데이터를 조회하시오
select *
from emp 
where ename like '%S%';

--Q012 REPLACE를 이용하여 연락처의 -을 공백으로, -을 뺀데이터로 조회하시오오
select '010-1234-5678' as BEFORE
, REPLACE('010-1234-5678', '-' ) REPLACE1
from dual;

--Q013 LPAD, RPAD를 이용하여 다음과 같이 데이터를 출력하시오.
SELECT 'ORACLE'
, LPAD('ORACLE' ,  10, '#') LPAD_1
, RPAD('ORACLE', 10, '*') RPAD_1
, LPAD('Oracle', 10 ) LPAD_2
, RPAD('Oracle', 10) RPAD_2               
FROM dual; 

--Q014 RPAD를 이용하여 개인정보뒷자리 *로 출력하시오.
select rpad('911225- ' , 14, '*') JUNO
,rpad('010-1234- ' , 13,  '*') PHONE
from dual;

--Q015 EMP 테이블에서 EMPNO와 ENAME 사이에 :을 넣고 문자열을 연결하시오.
SELECT CONCAT (empno, ename), concat( empno, concat(':', ename))
FROM EMP
WHERE ENAME = UPPER('Scott');

--Q016 TRIM을 이용하여 다음과 같이 공백을 제거하고 출력하시오.
select --1단계
     '[' || trim(' * *Oracle* * ') || ']' as trim    --양쪽 공백제거(중간에 있는 공백은 제거하지 않음.)
,    '[' || ltrim('* *Oracle* * ') || ']' as trim  --왼쪽 공백제거
,    '[' || rtrim(' * *Oracle* * ') || ']' as trim  --오른쪽 공백제거
,    '[' || trim(' * *Oracle* * ') || ']' as trim   --양쪽 공백제거    
from dual; 


select --2단계
     '[' || trim(             ' * *Oracle* * ') || ']' as trim  --양쪽공백제거(중간에 있는 공백은 제거하지 않음.)
,    '[' || trim(LEADING   FROM '* *Oracle* *') || ']' as trim  --앞쪽공백제거
,    '[' || trim(TRAILING  FROM '* *Oracle* *') || ']' as trim  --뒤쪽 공백제거
,    '[' || trim(BOTH      FROM '* *Oracle* *') || ']' as trim  --양쪽 공백제거    
from dual; 




-- Q017 TRIM을 이용하여 삭제할 문자 삭제후 출력가능
select
     '[' || trim(                  ' * *Oracle* * ') || ']' as trim  --양쪽공백제거(중간에 있는 공백은 제거하지 않음.)
,    '[' || trim(LEADING  '*' FROM '* *Oracle* *') || ']' as trim  --앞쪽공백제거
,    '[' || trim(TRAILING '*' FROM '* *Oracle* *') || ']' as trim  --뒤쪽 공백제거
,    '[' || trim(BOTH     '*' FROM '* *Oracle* *') || ']' as trim  --양쪽 공백제거    
from dual; 

--Q018 TRIM, LTRIM, RTRIM 사용하여 문자열 출력하기기
select
     '[' || trim(' * *Oracle* * ') || ']' as trim0    -- trim: 양쪽 공백제거(중간에 있는 공백은 제거하지 않음.)
,    '[' || ltrim('* *Oracle* * ') || ']' as ltrim1  --ltrim: 왼쪽 공백제거
,    '[' || ltrim('*-Oracle-*', '*') || ']' as ltrim2  --ltrim: 원하는 문자열 제거 = LEADING '*' FROM
,    '[' || rtrim(' * *Oracle* * ') || ']' as rtrim1  --rtrim: 오른쪽 공백제거
,    '[' || rtrim('*-Oracle-*', '*') || ']' as rtrim2   --rtrim: 원한는 문자열제거 = TRAILING '*' FROM    
from dual; 
---<!--day033.md-->
---

---
# JAVA (20251020~20251024)
---
scott004_group.sql
---<!----day037.md>

---
scott004_1select(group_1).sql
scott004_2select(group_2).sql --rollup part.
---<!--day038.md-->

---
scott005_join.sql
---<!--day039.md-->

---
scott005_join_repeat.sql
scott006_subquery.sql
---<!--day040.md-->

# ORACLE (20251027~20251031)
---
scott007_ddl_dml_tx_user.sql
---<!--day041.md-->

---
scott008_object.sql
---<!--day042.md-->

---
project001_jsp+oracle.sql
---<!--day043.md-->

---
X
---<!--day044.md-->

---
scott009.constraint.sql
---<!--day045.md-->

# ORACLE (20251027~20251031)
---
C : 글쓰기             / MBTI 등록         insert into 
R : 전체보기, 상세보기   / MBTI 읽어오기
U : 글수정하기          / MBTI 내용수정
D : 글삭제              / MBTI 내용삭제


# https://hi-sally03915.tistory.com/1669
#1. ERD
 - ERD
 - ENTITY ( 테이블 )
 - RELATIONSHIP ( 관계 )
 - ATTRIBUTE ( 속성 ) 


예) EMP(deptno: 부서번호, FK) - DEPT(deptno: 부서번호, PK)
> 데이터 간에 **관계**에 초점을 둔 모델

#2. 정규화? (NF: Normal Form)
1. 이상을 제거하는 것
2.  이상 - 공간낭비, 삽입, 갱신, 삭제이상
3. 1NF ~ 5NF

#3-1. 1NF (원자값)
- 원자값: 더이상 쪼갤수 없는 단위
1) 각 속성은 하나의 값만 가짐.

예)
BEFORE
----------------------------------
STD_ID      SNAME       GRADE 
----------------------------------
1111        SALLY       A+, A


BEFORE<!--공간낭비-->
----------------------------------
STD_ID      SNAME       GRADE 
----------------------------------
1111        SALLY       A+
1111        SALLY       A       


#3-2. 2NF (부분함수 종속제거)
1. 종속관계 : ~를 알면 ~를 알수있다. 
          X(결정자) → Y(종속자)
  > 모든 속성이 기본키에 완전함수 종속되면? 제2 정규형
  > 종속자가 기본키에만 종속

예)
<img src="2NF.png" alt="">

      결정자(X) → 종속자(Y)
1-1. <학번, 수강과목>(기본키) → 성적
1-2. {학번}                 → 학부
1-3. {학번}                 → professor
1-4. {professor}           → 학부


1-2 ~ 1-4  
- 부분함수 종속
: 기본키가 복합키(슈퍼키/학번, 수강과목)
: 종속자가 기본키를 구성하는 속성중 일부에게만 종속된 경우


#3-3. 3NF (이행함수 종속제거)
1. X → Y → Z
2. 다른 후보키에 의존하지 말것! (기본키를 알면? 다른 키들을 알수 있음.)
3. 테스트시 insert, update, delete 이상 확인
예) <학번: PK>을 알면 <지도교수: 후보키>를 알고 
                    <지도교수: 후보키>을 알면 <학부>알수있다.

 [학번(PK), 지도교수] , [지도교수(PK), 학부]

※ KEY
1. KEY?  튜플, 행, 레코드 (1. 홍길동, 10 ) 들을 구분할 수 있는 기준필드(열, attribute)
2. 후보키, 기본키, 대체키, 슈퍼키(복합키), 외래키
3. 후보키 - 기본키로 사용할 수 있는 속성들 ( 주민증, 학생증, 사원증 ) 
        유일성(구분가능, 유일하게 식별) + 최소성(최소한으로만 식별가능.)
4. 기본키 - 선택된 주키 (primary key), 중복된 값 X / null값 X
5. 대체키 - (기본키에서)선택 안된 키
6. 슈퍼키(복합키) - 숙성 + 속성 구성된 키
               유일성(구분가능, 유일하게 식별) + 최소성(최소한으로만 식별가능.) X
7. 외래키 - 테이블(entity)와 테이블을 연결해주는 속성
(보통은 3NF에서 처리 끝남.)


#3-4. BCNF : 모든결정자는 후보키 
 - 후보키? 기본키로 사용할수 있는 속성


#3-5. 4NF : 다치종속제거 / 역정규화
- 프로그래밍과목에
-  담당교수 2명, 교재코드 2개

BEFORE
<과목, 교수코드, 교재코드>
2*2 = 4
2*3 = 6

AFTER
<과목, 교제코드>   2
<과목, 교제코드>   2 


#3-6. 5NF : 조인종속제거
- 하나의 테이블을 여러개의 테이블로 분해했다가 다시 조인했을때 데이터 손실은 없지만,  
- 필요없는 데이터가 생김.

예) 多 : 多 관계 > 중간테이블 생성 (많이 쓰는 필드를 빼서) 
교수는 여러개의 교재를 갖는다. 
교재는 여러명의 교수가 사용할 수 있다.  
BEFORE
<교수> ∋-------------------------∈ <교재>

AFTER
<교수> + -----∈ <교수교재>∋-------∈ <교재>

---<!--day046.md-->

---
TEST(pawject).sql

---<!--day047.md-->

---
TEST(pawject).sql

---<!--day048.md-->

---
TEST(pawject).sql

---<!--day049.md-->

---
X
---<!--day050.md-->

# ORACLE (20251110~20251115)

---
X
---<!--day051.md-->

---
db_Test1.sql
db.Test2.sql
---<!--day052.md-->

---
db_Test3.sql
---<!--day053.md-->

---

---<!--day054.md-->

---

---<!--day055.md-->
