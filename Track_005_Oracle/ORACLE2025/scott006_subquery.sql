-- subquery ( select 안에 select) 

-- #1. 단일행(평균급여: 2073/한개만 나옴.) 서브쿼리 / 평균급여보다 많이 받는 사원들
-- STEP1)
--SELECT     ENAME, SAL,  
--FROM       EMP
--WHERE      SAL >  2073 (평균급여)
--ORDER BY   SAL DESC;

-- STEP2)
SELECT     ENAME, SAL  
FROM       EMP
WHERE      SAL > ( SELECT AVG(SAL) FROM EMP )
ORDER BY   SAL DESC;


-- #2. 다중행(IN) EMP    DEPTNO 가 10인 부서의 JOB인 사원들 ENAME, SAL 
-- 집계합수(SUM, AVG ,,,,) 나오면 FTOUP BY, HAVING 나와야 됨.
-- STEP 1)
--SELECT    ENAME, SAL  
--FROM      EMP
--WHERE     JOB = (DEPTNO가 10인 부서의 JOB)
--ORDER BY SAL DESC;

-- STEP 2)
SELECT    ENAME, SAL  
FROM      EMP
WHERE     JOB IN (SELECT JOB FROM EMP WHERE DEPTNO = 10)
ORDER BY SAL DESC;


-- #3. 다중행 연산자
-- 1. in          "이 값이 목록에 있나요? "  deptno in (10, 20, 30)
-- 2. any / some  "하나라도 만족하면   OK~"     ■ 최소값 기준 비교 (선 한개)
--    컬럼 > any(서브쿼리) 최소값보다 크면  true
--    컬럼 < any(서브쿼리) 최대값보다 작으면 true
      컬럼 > any ( 1, 2, 3 )     | (1)     | (2)     | (3)
      
      컬럼 < any ( 1, 2, 3 )     | (1)     | (2)     | (3)


-- 3. all         "모두 만족해야       OK~"    ■ 최대값 기준 비교(모든 선)
--    컬럼 > all(서브쿼리) 최대값보다 크면   true
--    컬럼 < all(서브쿼리) 최소값보다 작으면 true
      컬럼 > all ( 1, 2, 3 )     | (1)     | (2)     | (3)
      
      컬럼 < all ( 1, 2, 3 )     | (1)     | (2)     | (3)

-- 암기) ■   컬럼 > any 1(최소값)    컬럼 > all 3(최대값)  
-- 4. exists      "서브쿼리가 존재하면  OK~"

create table atest     as  select 1 num from dual
                 union all select 2     from dual
                 union all select 3     from dual
                 union all select 4     from dual
                 union all select 5     from dual
                 union all select 6     from dual ;

select * from atest;

-- 컬럼 > any 1 최소값보다 크다 / 최대값 작다, 컬럼 > all 3 최대값보다 크다 / 최소값 작다

select num  from atest where  num < any(select num from atest  where num in(3,4,5)) order by num;  --5보다 작다 1, 2, 3, 4
select num  from atest where  num > any(select num from atest  where num in(3,4,5)) order by num;  --3보다 크다 4, 5, 6
select num  from atest where  num < all(select num from atest  where num in(3,4,5)) order by num;  --3보다 작다 1, 2
select num  from atest where  num > all(select num from atest  where num in(3,4,5)) order by num;  --5보다 크다 6

-- #4. 다중 열 서브쿼리 
-- where sal > any, sal in any
select  ename, deptno, job 
from    emp 
where   (deptno, job) in ( select deptno, job from emp where sal>2000 );

-- 10 PRESIDENT
-- 30 MANAGER
-- 20 MANAGER
-- 10 MANAGER
-- 20 ANALYST

-- #5. 인라인뷰 ( from / 많이씀.)
select  empno, ename, d.deptno, dname
from    (select * from emp where deptno = 20)e, 
        (select * from dept) d
where   e.deptno = d.deptno;

-- #6. WITH - (단일쿼리/재선언 필요)
with
  e6   as ( select * from emp where deptno = 30) 
, d6   as ( select * from dept )
select  empno, ename, d6.deptno, dname
from    e6, d6
where   e6.deptno = d6.deptno;

with
  e6   as ( select * from emp where deptno = 30) 
select count(*) from e6;

-- #7. 스칼라서브쿼리
-- 데이터가 많아지는 경우 성능저하...(포트폴리오에서 최대한 쓰지 말것.)
select   empno, ename, sal
         ,( select grade from salgrade where emp.sal between losal and hisal ) salgrade
         ,deptno
         ,( select loc from dept where emp.deptno = dept.deptno  )location
from     emp;


-- https://sally03915.github.io/stackventure_250825/004_oracle/oracle007_select_subquery#14
-- 실습Q1~Q7
--Q001
--EMP 테이블에서 다음과 같이 출력하시오.
--사원이름이 JONES 인 사원의 급여를 출력하시오.
--힌트)
--SELECT    SAL
--FROM      EMP 테이블
--WHERE     사원이름이 JONES  
SELECT  SAL
FROM    EMP 
WHERE   ENAME = 'JONES';

--Q002
--EMP 테이블에서 다음과 같이 출력하시오.
--1. 급여가 2975보다 높은 사원정보를 출력하시오.
--SELECT  ENAME, SAL
--FROM    EMP
--WHERE   SAL > (급여가 2975보다 높은 사원정보);
--힌트)
--SELECT    *
--FROM      EMP 테이블
--WHERE     급여가 2975보다 높은
SELECT  *
FROM    EMP
WHERE   SAL > 2975;

-- Q003
--EMP 테이블에서 다음과 같이 출력하시오.
--JONES의 급여보다 높은급여를 받는 사원정보를 출력하시오.
--힌트)
--SELECT    *
--FROM      EMP 테이블
--WHERE     SAL 높은급여 > (JONES의 급여 )
SELECT    *
FROM      EMP 
WHERE     SAL > (SELECT SAL FROM EMP WHERE ENAME = 'JONES');

-- Q004
--EMP 테이블에서 다음과 같이 출력하시오.
--SCOTT보다 빨리 입사한 사원목록을 출력하시오.
--힌트)
--SELECT    *
--FROM      EMP 테이블
--WHERE     입사일 <빨리  (SCOTT보다  입사일 )
SELECT   *
FROM     EMP 
WHERE    HIREDATE < (SELECT HIREDATE FROM EMP  WHERE ENAME = 'SCOTT');

-- Q005
--EMP 테이블에서 다음과 같이 출력하시오.
--20번부서에 속한 사원 중
--전체사원의 평균급여보다 높은 급여를받는 사원정보와 소속부서정보를 출력하시오.
--힌트)
--SELECT    EMPNO, ENAME, JOB, SAL, DEPTNO, DNAME, LOC
--FROM      EMP 테이블 , DEPT 테이블
--WHERE     EMP 테이블과 DEPT 테이블 연결 (JOIN)  
--AND       DEPTNO가 20번부서
--AND       높은 급여를받는   SAL >   (  평균급여  )
SELECT  EMPNO, ENAME, JOB, SAL, D.DEPTNO, DNAME, LOC
FROM    EMP E ,DEPT D  
WHERE   E.DEPTNO = D.DEPTNO 
AND     E.DEPTNO = 20  
AND     SAL > (SELECT AVG(SAL) FROM EMP);

--JOIN ON
SELECT  EMPNO, ENAME, JOB, SAL, D.DEPTNO, DNAME, LOC
FROM    EMP E JOIN DEPT D  ON (E.DEPTNO = D.DEPTNO )
WHERE   E.DEPTNO = 20  
AND     SAL > (SELECT AVG(SAL) FROM EMP);

-- JOIN USING
SELECT  EMPNO, ENAME, JOB, SAL, DEPTNO, DNAME, LOC
FROM    EMP E JOIN DEPT D  USING(DEPTNO )
WHERE   DEPTNO = 20  
AND     SAL > (SELECT AVG(SAL) FROM EMP);

-- NATURAL JOIN
SELECT  EMPNO, ENAME, JOB, SAL, DEPTNO, DNAME, LOC
FROM    EMP E NATURAL JOIN DEPT D  
WHERE   DEPTNO = 20  
AND     SAL > (SELECT AVG(SAL) FROM EMP);


-- Q006
--EMP 테이블에서 다음과 같이 출력하시오.
--부서번호가 20이거나 30인 사원의 정보를 출력하시오.
--힌트)
--SELECT    *
--FROM      EMP 테이블
--WHERE     DEPTN가   20이거나 30인
SELECT   *
FROM     EMP 
WHERE    DEPTNO IN( 20, 30 );

-- Q007
--EMP 테이블에서 다음과 같이 출력하시오.
--각 부서별 최고급여와 동일한 급여를 받는 사원정보를 출력하시오.
--힌트)
--SELECT    *
--FROM      EMP 테이블
--WHERE    동일한 급여  IN  (각 부서별 최고급여)
SELECT  *
FROM    EMP
WHERE   SAL IN(SELECT MAX(SAL) FROM EMP GROUP BY DEPTNO);

-- 다중행 in any(some) 하나라도, all 모두, , exists 있으면
--        > any 1(최소값 크다), 최대값 작다  > all 3 (최대값 크다) 최소값 작다.
-- https://sally03915.github.io/stackventure_250825/004_oracle/oracle007_select_subquery#29
-- Q008 ~ Q017
--Q008
--EMP 테이블에서 다음과 같이 출력하시오.
--1. 부서번호 별로 최대 급여를 출력하시오.
--2. 7번문제가 잘풀렸는지 확인하시오.
SELECT   MAX(SAL)
FROM     EMP
GROUP BY DEPTNO; 

--Q009
--EMP 테이블에서 다음과 같이 출력하시오.
--ANY 연산자를 이용하여 다음과같이 출력해보시오
SELECT  *
FROM    EMP
WHERE   SAL = ANY (SELECT MAX(SAL) FROM EMP GROUP BY DEPTNO);

--Q010
--EMP 테이블에서 다음과 같이 출력하시오.
--SOME 연산자를 이용하여 다음과같이 출력해보시오
SELECT  *
FROM    EMP 
WHERE   SAL = SOME (SELECT MAX(SAL) FROM EMP GROUP BY DEPTNO);

--Q0011
--EMP 테이블에서 다음과 같이 출력하시오.
--ANY를 이용하여 30번 부서 사원들의 최대 급여보다 적은 급여를 받는 사원정보를 출력하시오.
-- 필드 > any 1 최소값 보다 크다, 최대값 작다.
SELECT  *
FROM    EMP
WHERE   SAL < ANY (SELECT SAL FROM EMP WHERE DEPTNO = 30)
ORDER BY SAL, EMPNO;

SELECT  *
FROM    EMP
WHERE   SAL < ANY (SELECT DISTINCT SAL FROM EMP WHERE DEPTNO = 30)
ORDER BY SAL, EMPNO;


--Q012
--EMP 테이블에서 다음과 같이 출력하시오.
--부서번호가 30인 사원들의 급여를 출력하시오.
SELECT  SAL
FROM    EMP
WHERE   DEPTNO = 30; 

-- DISTINCT: 중복제거
SELECT  DISTINCT SAL
FROM    EMP
WHERE   DEPTNO = 30; 

--Q013
--EMP 테이블에서 다음과 같이 출력하시오.
--ANY를 이용하여 30번 부서 사원들의 최소 급여보다 많은은 급여를 받는 사원정보를 출력하시오.
SELECT  *
FROM    EMP
WHERE   SAL > ANY (SELECT SAL FROM EMP WHERE DEPTNO = 30);

--Q014
--EMP 테이블에서 다음과 같이 출력하시오.
--ALL를 이용하여 30번 부서 사원들의 최소 급여보다 더 적은 급여를 받는 사원정보를 출력하시오.
SELECT   *
FROM     EMP
WHERE    SAL < ALL (SELECT SAL FROM EMP WHERE DEPTNO = 30);

--Q015
--EMP 테이블에서 다음과 같이 출력하시오.
--ALL를 이용하여 30번 부서 사원들의 최대 급여보다 더 많은 급여를 받는 사원정보를 출력하시오.
SELECT  *
FROM    EMP
WHERE   SAL > ALL(SELECT SAL FROM EMP WHERE DEPTNO = 30);

--Q016
--EMP 테이블에서 다음과 같이 출력하시오.
--EXISTS - 서브쿼리에 결과 값이 하나이상 존재하면 조건식이 모두 TRUE, 아니면 FALSE 됨
--결과값이 모두 존재히기때문에 EMP 모든행이 출력됨.

--in (), any (), all (), exists()

SELECT  *
FROM    EMP
WHERE   EXISTS (
SELECT  DNAME 
                FROM  DEPT 
                WHERE DEPTNO = 10);

SELECT  *
FROM    EMP
WHERE   EXISTS (
SELECT  * 
                FROM  EMP 
                WHERE 1=1);

--Q017
--EMP 테이블에서 다음과 같이 출력하시오.
--EXISTS - 서브쿼리에 결과 값이 하나이상 존재하면 조건식이 모두 TRUE, 아니면 FALSE 됨
--결과값이 모두 존재하지 않기때문에 아무행도 출력안됨.
SELECT  *
FROM    EMP
WHERE   EXISTS (SELECT DNAME FROM DEPT WHERE DEPTNO =50);


--
--https://sally03915.github.io/stackventure_250825/004_oracle/oracle007_select_subquery#49
--Q018 ~ Q021
--Q018
--EMP 테이블에서 다음과 같이 출력하시오.
--다중열 서브쿼리를 이용하여 WHERE (DEPTNO, SAL) IN ( ... )
--부서별 최대급여를 받는 사원정보를 출력하시오.
--힌트)
--select *
--from   EMP 테이블에서 
--where  (deptno, sal) 부서별 최대급여를 받는 사원정보  
SELECT   *
FROM     EMP
WHERE    (DEPTNO, SAL) IN (SELECT DEPTNO, MAX(SAL) FROM EMP GROUP BY DEPTNO)
ORDER BY SAL ;

--Q019
--EMP 테이블에서 다음과 같이 출력하시오.
--FROM 절에서 사용하는 인라인 뷰를 이용하여
--부서번호가 10인 사용자 정보와 부서정보를 가져와
--EMPNO, ENAME, DEPTNO, DNAME, LOC 를 출력하시오.
--힌트)
--select  EMPNO, ENAME, DEPTNO, DNAME, LOC 
--from    (부서번호가 10인 사용자 정보) emp, (부서정보) dept
--where   e.deptno = d.deptno
SELECT  EMPNO, ENAME, D.DEPTNO, DNAME, LOC
FROM    (SELECT * FROM EMP WHERE DEPTNO = 10)E
      , (SELECT * FROM DEPT)D 
WHERE   E.DEPTNO = D.DEPTNO;

SELECT  EMPNO, ENAME, D.DEPTNO, DNAME, LOC
FROM    EMP E JOIN DEPT D ON E.DEPTNO = D.DEPTNO
WHERE   E.DEPTNO =10;

SELECT  EMPNO, ENAME, DEPTNO, DNAME, LOC
FROM    EMP E JOIN DEPT D USING (DEPTNO)
WHERE   DEPTNO = 10;

SELECT  EMPNO, ENAME, DEPTNO, DNAME, LOC
FROM    EMP E NATURAL JOIN DEPT D 
WHERE   DEPTNO = 10;

--Q020
--WITH
--FROM 절에 명시하는 방식보다 몇십, 몇백줄의 규보가 되었을때 유용하게 사용됨.
--힌트)
--with
--  e () 
--, d ()
--select  EMPNO, ENAME, DEPTNO, DNAME, LOC 
--from    e, d
--where   e.deptno = d.deptno    
WITH
  E AS (SELECT * FROM EMP WHERE DEPTNO = 10)
, D AS (SELECT * FROM DEPT) 
SELECT  EMPNO, ENAME, D.DEPTNO, DNAME, LOC
FROM    E, D
WHERE   E.DEPTNO = D.DEPTNO;

--Q0021
--열에 명시하는 스칼라서브쿼리
--EMP 테이블의 EMPNO, ENAME, JOB, SAL
--EMP 테이블의 SAL을 이용하여 SALGRADE에서 등급(GRADE)을 구하고
--EMP 테이블의 DEPTNO를 이용하여 DEPTNO가 같은 부서명(DNAME)을 구하시오.
--힌트)
--select   EMPNO, ENAME, JOB, SAL , SAL을 이용하여 SALGRADE에서 등급(GRADE) ,   
--         DEPTNO를 이용하여 DEPTNO가 같은 부서명(DNAME)
--from     emp;
SELECT  EMPNO, ENAME, JOB, SAL 
,       ( SELECT GRADE FROM SALGRADE WHERE E.SAL BETWEEN LOSAL AND HISAL )SALGRADE
,       DEPTNO
,       ( SELECT DNAME FROM DEPT WHERE E.DEPTNO = DEPT.DEPTNO ) DNAME
FROM    EMP E;


--https://sally03915.github.io/stackventure_250825/004_oracle/oracle007_select_subquery#59
--Ex001 ~ Ex004
--EX001 
--EMP 테이블에서 다음과 같이 출력하시오.
--전체 사원 중 ALLEN과 같은 직책(JOB)인 사원들의 사원정보, 부서정보를 다음과 같이 출력하시오.
--힌트) 
--SELECT   JOB, EMPNO, ENAME, SAL, DEPTNO,DNAME 
--FROM     EMP
--WHERE    JOB =   (ALLEN과 같은 직책(JOB)) 
--JOIN ON, JOIN USING, NATURAL JOIN ,   WITH( 테이블 선언) ,  IN , EXISTS
SELECT  JOB, EMPNO, ENAME, SAL, D.DEPTNO, DNAME
FROM    EMP E, DEPT D 
WHERE   E.DEPTNO = D.DEPTNO
AND JOB = (SELECT JOB FROM EMP WHERE ENAME = 'ALLEN'); 

-- JOIN ON 
SELECT  JOB, EMPNO, ENAME, SAL, D.DEPTNO, DNAME
FROM    EMP E JOIN DEPT D ON ( E.DEPTNO = D.DEPTNO) 
WHERE  JOB = (SELECT JOB FROM EMP WHERE ENAME = 'ALLEN'); 

-- JOIN USING 
SELECT  JOB, EMPNO, ENAME, SAL, DEPTNO, DNAME
FROM    EMP E JOIN DEPT D USING( DEPTNO) 
WHERE  JOB = (SELECT JOB FROM EMP WHERE ENAME = 'ALLEN'); 

-- NATURAL JOIN 
SELECT  JOB, EMPNO, ENAME, SAL, DEPTNO, DNAME
FROM    EMP E NATURAL JOIN DEPT D 
WHERE  JOB = (SELECT JOB FROM EMP WHERE ENAME = 'ALLEN'); 

--  IN
SELECT  JOB, EMPNO, ENAME, SAL, DEPTNO, DNAME
FROM    EMP E JOIN DEPT D USING( DEPTNO) 
WHERE  JOB IN(SELECT JOB FROM EMP WHERE ENAME = 'ALLEN'); 

-- WITH ★(가독성이 좋음.)
WITH ALLEN_JOB AS (SELECT JOB FROM EMP WHERE ENAME = 'ALLEN')
SELECT  JOB, EMPNO, ENAME, SAL, DEPTNO, DNAME
FROM    EMP E JOIN DEPT D USING( DEPTNO) 
              JOIN ALLEN_JOB USING (JOB); 
              
-- EXISTS
SELECT  JOB, EMPNO, ENAME, SAL, DEPTNO, DNAME
FROM    EMP E JOIN DEPT D USING( DEPTNO) 
WHERE  EXISTS (SELECT 1 FROM EMP A WHERE A.ENAME = 'ALLEN' AND A.JOB = E.JOB); 

--EX002
--EMP 테이블에서 다음과 같이 출력하시오. 
--전체 사원의 평균급여(SAL) 보다 높은 급여를 받는 사원들의 사원정보, 부서정보, 급여등급정보를 출력하시오.
--급여가 많은 순으로 정렬하되 급여가 같은경우에는 사원번호를 기준으로 오름차순으로 정렬
--힌트)
--SELECT   JOB, EMPNO,DNAME  , HIREDATE , LOC, SAL, GRADE 
--FROM      EMP E, DEPT D, SALGRADE S 
--WHERE     JOIN 조건,     
--AND       평균급여(SAL) 보다 높은 급여를 받는 사원들
--ORDER    BY    급여가 많은 순으로 정렬 , 사원번호를 기준으로 오름차순 
-- 1-1
SELECT   JOB, EMPNO, DNAME, HIREDATE, LOC, SAL, GRADE 
FROM     EMP E, DEPT D, SALGRADE S 
WHERE    E.DEPTNO = D.DEPTNO AND E.SAL BETWEEN S.LOSAL AND S.HISAL    
AND      E.SAL >(SELECT AVG(SAL) FROM EMP )
ORDER BY SAL DESC, EMPNO ; 

-- 1-2 JOIN ON
SELECT   JOB, EMPNO, DNAME, HIREDATE, LOC, SAL, GRADE 
FROM     EMP E JOIN DEPT D ON(E.DEPTNO = D.DEPTNO)
               JOIN SALGRADE S ON(E.SAL BETWEEN S.LOSAL AND S.HISAL    )
WHERE    E.SAL >(SELECT AVG(SAL) FROM EMP )
ORDER BY SAL DESC, EMPNO ; 

-- 1-3 WITH   (단일행  ) ★★★★★
WITH   AVG_SAL (AVG_SAL) AS (SELECT AVG(SAL) FROM EMP )
SELECT   E.JOB, E.EMPNO, D.DNAME, E.HIREDATE, D.LOC, E.SAL, S.GRADE 
FROM     EMP E JOIN DEPT     D ON( E.DEPTNO = D.DEPTNO)
               JOIN SALGRADE S ON( E.SAL BETWEEN S.LOSAL AND S.HISAL)
               JOIN AVG_SAL  A ON(E.SAL > A.AVG_SAL)
ORDER BY SAL DESC, EMPNO ; 

-- EXISTS (연습해보기.)
SELECT   JOB, EMPNO, DNAME, HIREDATE, LOC, SAL, GRADE 
FROM     EMP E JOIN DEPT D ON(E.DEPTNO = D.DEPTNO)
               JOIN SALGRADE S ON(E.SAL BETWEEN S.LOSAL AND S.HISAL    )
WHERE    EXISTS (
    SELECT 1 FROM EMP X WHERE E.SAL > (SELECT AVG(SAL) FROM EMP )
)
ORDER BY SAL DESC, EMPNO ; 

--EX003
--EMP 테이블에서 다음과 같이 출력하시오.
--10번부서에서 근무하는 사원 중 30번부서에는 존재하지 않는 직책을 가진 사원들의 사원정보, 부서정보를 다음과 같이 출력하는 SQL문을 작성하시오.
--힌트)
--SELECT    EMPNO, ENAME, JOB, DEPTNO, DNAME, LOC
--FROM      EMP E, DEPT D 
--WHERE     JOIN 조건
--AND    10번부서에서
--AND    JOIN NOT IN(30번부서에는 존재하지 않는 직책 )
-- 3-1
SELECT  EMPNO, ENAME, JOB, D.DEPTNO, DNAME, LOC
FROM    EMP E, DEPT D
WHERE   E.DEPTNO = D.DEPTNO AND E.DEPTNO = 10 AND JOB NOT IN (SELECT JOB FROM EMP WHERE DEPTNO = 30);

-- 3-2. JOIN ON
SELECT  EMPNO, ENAME, JOB, D.DEPTNO, DNAME, LOC
FROM    EMP E JOIN DEPT D ON(E.DEPTNO = D.DEPTNO)
WHERE   E.DEPTNO = 10 AND JOB NOT IN (SELECT JOB FROM EMP WHERE DEPTNO = 30);

-- 3-3. WITH
--WITH JOB_IN 30 AS (SELECT JOB FROM EMP WHERE DEPTNO = 30)
--SELECT  EMPNO, ENAME, JOB, D.DEPTNO, DNAME, LOC
--FROM    EMP E JOIN DEPT D ONE.DEPTNO = D.DEPTNO
--WHERE   E.DEPTNO = 10 AND E.JOB NOT IN (SELECT JOB FROM JOB_IN_30) ;

--위에랑 비교해서 다른 부분 찾기.
WITH   JOB_IN_30  AS (  SELECT JOB  FROM EMP  WHERE DEPTNO=30  )
SELECT  EMPNO, ENAME, JOB, D.DEPTNO, DNAME, LOC
FROM    EMP E  JOIN DEPT D  ON E.DEPTNO=D.DEPTNO
WHERE   E.DEPTNO = 10  AND  E.JOB NOT IN ( SELECT JOB FROM JOB_IN_30 );

-- 3-4
SELECT  EMPNO, ENAME, JOB, D.DEPTNO, DNAME, LOC
FROM    EMP E JOIN DEPT D ON(E.DEPTNO = D.DEPTNO)
WHERE   E.DEPTNO = 10
AND NOT EXISTS (
SELECT 1 FROM EMP X WHERE X.DEPTNO = 30 AND X.JOB = E.JOB
);


--EX004
--EMP 테이블에서 다음과 같이 출력하시오.
--직책이 SALESMAN인 사람들의 최고급여보다 높은 급여를 급여를 받는 사원들의 사원정보, 급여등급정보를 다음과 같이 출력하시오.
--다중행 함수 사용하지 않는 방법, 다중행 함수 사용하는 방법 2가지로 작성하시오.
--사원번호를 기준으로 오름차순으로 정렬하시오.
--힌트)
--SELECT    EMPNO, ENAME,SAL, GRADE
--FROM      EMP E, SALGRADE
--WHERE     JOIN 조건
--AND       직책이 SALESMAN인 사람들의 최고급여보다 높은 급여를 급여
--ORDER BY  EMPNO;

--힌트1)  애니1 올3 
--필드 >ANY 1   최소보다 크다, 최대보다 작다        > ALL 3  최대보다 크다, 최소보다 작다
SELECT   EMPNO, ENAME, SAL, GRADE 
FROM     EMP E, SALGRADE S
WHERE    E.SAL BETWEEN S.LOSAL AND S.HISAL
AND SAL > (SELECT MAX(SAL) FROM EMP WHERE JOB ='SALESMAN')  --MAX 들어가야함.
ORDER BY EMPNO;

-- 다중행
SELECT   EMPNO, ENAME, SAL, GRADE 
FROM     EMP E, SALGRADE S
WHERE    E.SAL BETWEEN S.LOSAL AND S.HISAL
AND SAL > ALL (SELECT SAL FROM EMP WHERE JOB ='SALESMAN')   -- MAX 빠져야함.
ORDER BY EMPNO;




















