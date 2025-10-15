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











