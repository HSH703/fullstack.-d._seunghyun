-- 1. join
-- 여러 테이블을 한 개의 테이블처럼 사용하는 것
-- 공통컬럼 기준으로 연결
-- 1-1. 내부조인
--      등가조인 (=)     : 매칭되는 행 where절   emp.deptno = dept.deptno, 
--      비등가조인 (= X) :            sal between losal and hisal 
--      자체조인         : emp e1, emp e2
-- 1-2. outerjoin       : 매칭되지 않은 행도 포함. left, right, full outer join

-- ERD : Entity(테이블), Relationship(관계), Diagram(표)
--       Entity(테이블), Relationship(관계), Attribute(속성)

-- #1. 내부조인 ( 등가조인 (시험에 변형하는 문제 나옴.) )
--  = 다른 테이블 찾음
select *
from   emp e, dept d;  --emp(14줄)*dept(4줄) = 56줄
--where e.deptno = d.deptno;

-- join on : 다른 테이블 찾음
select *
from   emp e join dept d on( e.deptno = d.deptno);

-- join using : 다른 테이블 찾음.
select *
from   emp e join dept d using( deptno);

-- natural join : 겹치는 테이블을 찾는 것이기 때문에, 위험할 수 있음.
select *
from emp e natural join dept d;


--- 조건 1. emp e, dept d 별명  조건2. empno, ename, deptno, dname
-- ORA-00918: column ambiguously defined - deptno 소속불명
select   empno, ename, e.deptno, dname
from     emp e , dept d 
where    e.deptno = d.deptno;

--join on
select   empno, ename, e.deptno, dname
from     emp e join dept d on( e.deptno = d.deptno );

-- join using (병합할게~): 매칭되는 것이 있어야함(deptno).
select   empno, ename, deptno, dname
from     emp e join dept d using (deptno) ;

select   empno, ename, deptno, dname
from     emp e natural join dept d  ;


-- #2. 외부조인 (매칭 X)
SELECT * FROM DEPT;   --DEPTNO 10, 20, 30, 40
SELECT * FROM EMP;    --DEPTNO 10, 20, 30

-- 1. 조건(+) - NULL로 채울게. ( 비표준/only ORACLE~ / 어디에 보충해줄래?)  -- (+) 없는 데이터 보충해서 NULL로 보충. (+)안붙은 테이블의 데이터를 보장.
SELECT  ENAME, DNAME
FROM    EMP E, DEPT D
WHERE   E.DEPTNO = D.DEPTNO;   -- 14 EMP테이블 보장 DEPT에서 모자라는 데이터 없는 데이터 NULL로 보장 

SELECT  ENAME, DNAME
FROM    EMP E, DEPT D
WHERE   E.DEPTNO(+) = D.DEPTNO(+); -- 15 DEPT테이블 보장 EMP에서 모자라는 데이터 없는 데이터 NULL로 보장 


-- 2. LEFT JOIN, RIGHT JOIN (ANSI조인 / 표준)
SELECT  ENAME, DNAME
FROM    EMP E INNER JOIN DEPT D  ON(E.DEPTNO = D.DEPTNO);   --INNER JOIN - 내부조인 - 겹치는 애들만

SELECT  ENAME, DNAME
FROM    EMP E RIGHT OUTER JOIN DEPT D 
ON( E.DEPTNO = D.DEPTNO );            --RIGHT쪽에 있는 테이블 보장.

SELECT  ENAME, DNAME
FROM    DEFP D LEFT OUTER JOIN EMP E  --테이블 순서 중요!!
ON( E.DEPTNO = D.DEPTNO );            --LEFT쪽에 있는 테이블 보장.

-- 3. FULL OUTER JOIN - 각각에 있는 테이블들 보장.( 두 테이블에 있는 데이터들을 결합. )
SELECT  ENAME, DNAME
FROM    EMP E FULL OUTER JOIN DEPT D 
ON E.DEPTNO = D.DEPTNO;     

-- 비표준  =, (+)
--   표주 NATURAL JOIN, (INNER) JOIN ON, (INNER) JOIN USING, LEFT OUTER JOIN,  RIGHT OUTER JOIN, FULL OUTER JOIN  --(INNER) 생략 가능


-- https://sally03915.github.io/stackventure_250825/004_oracle/oracle006_select_join#14
-- Q001 ~ Q008
desc emp;
desc dept;

--Q001
--EMP, DEPT 테이블을 이용하여 FROM 절에 여러 테이블을 선언해해 다음과 같이 출력하시오
--모든 행과 열이 곱해진 값
--select * from emp, dept; --위험한 코드 - 컴퓨터 멈춤

select * from emp, dept order by empno;

--select   *
--from     emp , dept 
--order by empno;

--Q002
--EMP, DEPT 테이블을 이용하여
--EMP의 DEPTNO와 DEPT테이블의 DEPTNO가 같은 데이터를 다음과 같이 출력하시오
select   * 
from     emp , dept 
where    emp.deptno = dept.deptno
order by empno;

select   * 
from     emp join dept on (emp.deptno = dept.deptno)
order by empno;

select   * 
from     emp join dept using( deptno )
order by empno;

select   * 
from     emp natural join dept
order by empno;

--Q003
--EMP, DEPT 테이블을 이용하여
--FROM 절에 EMP 테이블의 별칭은 E, DEPT 테이블의 별칭은 D로 다음과 같이 출력하시오
select   *
from     emp e, dept d
where    e.deptno = d.deptno
order by empno;

select   *
from     emp e join dept d on (e.deptno = d.deptno)
order by empno;

select   *
from     emp e join dept d using (deptno)
order by empno;

select   *
from     emp e natural join dept d
order by empno;

--Q004
--EMP, DEPT 테이블을 이용하여
--두테이블에 부서번호가 같은 열의이름이 포함되었을때 다음과 같이 출력하시오 (에러발생)
-- deptno의 필드가 어느 테이블에 속한지 알 수 없음.
select empno, ename, deptno, dname, loc
from   emp e, dept d
where  e. deptno = d.deptno;

--Q005 (Q004번 해결방안)
--EMP, DEPT 테이블을 이용하여
--열 이름에 각각의 테이블 이름도 함께 명시시 다음과 같이 출력하시오 ( 위의 문제 해결 )
-- 겹치는 부분만 소속을 밝히기, 모든 테이블의 소속 밝히기.
-- 모두 ~~
select e.empno, e.ename, d.deptno, d.dname, d.loc
from   emp e, dept d
where  e. deptno = d.deptno;

--겹치는 부분만~~
select empno, ename, d.deptno, dname, loc
from   emp e, dept d
where  e. deptno = d.deptno;

--Q006
--EMP, DEPT 테이블을 이용하여
--급여가 3000이상인 사원의 사원번호, 이름, 급여, 근무부서를 다음과 같이 출력하시오
select   empno, ename, sal, d.deptno, dname, loc
from     emp e, dept d
where    e.deptno = d.deptno and e.sal >= 3000; 

-- join on
select   empno, ename, sal, d.deptno, dname, loc
from     emp e join dept d on(e.deptno = d.deptno)
where     e.sal >= 3000; 

-- join using
select   empno, ename, sal, deptno, dname, loc
from     emp e join dept d using(deptno)
where     e.sal >= 3000; 

-- natural join
select   empno, ename, sal, deptno, dname, loc
from     emp e natural join dept d 
where     e.sal >= 3000; 

--Q007
--EMP, SALGRADE 테이블을 이용하여
--유저 정보, 급여등급 , 그 등급의 최소급여와 최대급여를 다음과 같이 출력하시오
select * from emp;
select * from salgrade;    --greade, losal(최소급여), hisal(최대급여)

-- and
select  *
from    emp e , salgrade s 
where   e.sal >= losal and e.sal <= hisal; --등가조인

--  join on
select  *
from    emp e join salgrade s on(e.sal >= losal and e.sal <= hisal); --등가조인

-- join using - 겹치는 필드가 안보임( 서브쿼리로 가능)
-- natural join X


-- between and 
select  *
from    emp e , salgrade s 
where   e.sal between losal and hisal; -- 비등가조인

--  join on
select  *
from    emp e join salgrade s on (e.sal between losal and hisal); -- 비등가조인

-- join using - 겹치는 필드가 안보임(서브쿼리로 가능)
-- natural join

--Q008
--EMP테이블을 2번 이용하여
--사원정보(EMPNO, ENAME, MGR) 와 직속상관(EMPNO, ENAME)의 사원번호를 다음과 같이 출력하시오
-- =
SELECT  E1.EMPNO, E1.ENAME, E1.MGR, E2.EMPNO MGR_EMPNO, E2.ENAME MGR_ENAME
FROM    EMP E1, EMP E2
WHERE   E1.MGR = E2.EMPNO
ORDER BY E1.MGR ASC;

--  join on
SELECT  E1.EMPNO, E1.ENAME, E1.MGR, E2.EMPNO MGR_EMPNO, E2.ENAME MGR_ENAME
FROM    EMP E1 JOIN EMP E2 ON ( E1.MGR = E2.EMPNO)
ORDER BY E1.MGR ASC;

-- join using x (같은 필드 x / 출력은 가능하나 결과다름(묶는 방식이 다름.) )
--SELECT  EMPNO, E1.ENAME, MGR, EMPNO MGR_EMPNO, E2.ENAME MGR_ENAME
--FROM    EMP E1 JOIN EMP E2 USING ( MGR, EMPNO)
--ORDER BY MGR ASC;

-- natural join x



-- https://sally03915.github.io/stackventure_250825/004_oracle/oracle006_select_join#33
--Q009 ~ Q016
--Q009
--EMP테이블을 2번 이용하여
--1. 사원정보(EMPNO, ENAME, MGR) 와 직속상관(EMPNO, ENAME)의 사원번호를 다음과 같이 출력하시오
--2. 직속상관이 없는 사원의 정보도 출력하시오
--SQL - 99이전방식
SELECT E1.EMPNO , E1.ENAME , E1.MGR, E2.EMPNO AS MGR_EMPNO, E2.ENAME AS MGR_ENAME 
FROM    EMP E1, EMP E2
WHERE   E1.MGR = E2.EMPNO(+)
ORDER BY E1.EMPNO ;

-- 테이블 순서 바꿈(차이 X)
SELECT E1.EMPNO , E1.ENAME , E1.MGR, E2.EMPNO AS MGR_EMPNO, E2.ENAME AS MGR_ENAME 
FROM    EMP E2, EMP E1
WHERE   E1.MGR = E2.EMPNO(+)  -- (+): NULL 보충
ORDER BY E1.EMPNO ;

--SQL - 99방식
--LEFT
SELECT E1.EMPNO , E1.ENAME , E1.MGR, E2.EMPNO AS MGR_EMPNO, E2.ENAME AS MGR_ENAME 
FROM    EMP E1 LEFT JOIN EMP E2 ON (E1.MGR = E2.EMPNO )  --왼쪽 테이블 데이터를 무조건 다 나오게
ORDER BY E1.EMPNO ;

-- RIGHT
SELECT E1.EMPNO , E1.ENAME , E1.MGR, E2.EMPNO AS MGR_EMPNO, E2.ENAME AS MGR_ENAME 
FROM    EMP E1 RIGHT JOIN EMP E2 ON (E1.MGR = E2.EMPNO )  --왼쪽 테이블 데이터를 무조건 다 나오게
ORDER BY E1.EMPNO ;

--Q010
--(+)의 위치를 바꿔서 출력해보고 다음이 의미하는 바를 적으시오
-- (+): 데이터가 없는 값을 NULL로 보충해준다는 의미.
SELECT   E1.EMPNO, E1.ENAME, E1.MGR, 
         E2.EMPNO AS MGR_EMPNO,
         E2.ENAME AS MGR_ENAME 
FROM    EMP E1, EMP E2
WHERE   E1.MGR(+) = E2.EMPNO
ORDER BY E1.EMPNO;  -- (+): NULL 보충, 매니저들의 번호와 이름은 있으나.... 관리하는 사원이 없음.

--Q011 표준문법 (NATURAL JOIN)
--EMP , DEPT 테이블 이용하여
--EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM를 다음과 같이 출력하시오
--NATURAL JOIN
--알아서 두 테이블의 이름과 자료형이 같은 열을 찾은 후
--그 열을 기준으로 등가조인을 해주는 방식
SELECT  EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO, DNAME, LOC
FROM    EMP E NATURAL JOIN DEPT D 
ORDER BY DEPTNO, EMPNO;

--Q012 표준문법 (JOIN USING)
--EMP , DEPT 테이블 이용하여
--EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM를 다음과 같이 출력하시오
--1. JOIN USING
--USING에 조인기준열 명시
--그 열을 기준으로 등가조인을 해주는 방식
SELECT   EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO, DNAME, LOC 
FROM     EMP E JOIN DEPT D USING(DEPTNO)
WHERE     SAL >= 3000
ORDER BY DEPTNO, EMPNO;

--JOIN ON
SELECT   EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, E.DEPTNO, DNAME, LOC 
FROM     EMP E JOIN DEPT D ON(E.DEPTNO = D.DEPTNO)
WHERE     SAL >= 3000
ORDER BY DEPTNO, EMPNO;

--Q013 표준문법 (JOIN ON)
--EMP , DEPT 테이블 이용하여 EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM를 다음과 같이 출력하시오
--JOIN ON
--ON에 조인기준열 명시
--그 열을 기준으로 등가조인을 해주는 방식
SELECT  E.EMPNO, E.ENAME, E.JOB, E.MGR, E.HIREDATE, E.SAL, E.COMM, D.DEPTNO, D.DNAME, D.LOC
FROM    EMP E JOIN DEPT D ON( E.DEPTNO = D.DEPTNO)
WHERE   E.SAL <=3000
ORDER BY DEPTNO, EMPNO;

--Q014 표준문법 (LEFT OUTER JOIN )
--EMP  테이블 이용하여 다음과 같이 출력하시오
--LEFT OUTER JOIN
--왼쪽 외부조인을 기준으로 NULL보장
SELECT  E1.EMPNO , E1.ENAME , E1.MGR, E2.EMPNO AS MGR_EMPNO, E2. ENAME AS MGR_ENAME
FROM    EMP E1 LEFT OUTER JOIN EMP E2
ON  (E1.MGR= E2.EMPNO)
ORDER BY E1.EMPNO;

--Q015 표준문법 (RIGHT OUTER JOIN )
--EMP  테이블 이용하여 다음과 같이 출력하시오
--1. RIGHT OUTER JOIN- 오른른쪽 외부조인을 기준으로 NULL보장
SELECT  E1.EMPNO , E1.ENAME , E1.MGR, E2.EMPNO AS MGR_EMPNO, E2. ENAME AS MGR_ENAME
FROM    EMP E2 RIGHT OUTER JOIN EMP E1    --E1, E2 테이블 위치 바꾸기
ON  (E1.MGR= E2.EMPNO)
ORDER BY E1.EMPNO, MGR_EMPNO;
 
--Q016 표준문법 (FULL OUTER JOIN )
--EMP , DEPT 테이블 이용하여 다음과 같이 출력하시오
--FULL OUTER JOIN - 양쪽모두두 외부조인을 기준으로 NULL보장
SELECT  E1.EMPNO , E1.ENAME , E1.MGR, E2.EMPNO AS MGR_EMPNO, E2. ENAME AS MGR_ENAME
FROM    EMP E1 FULL OUTER JOIN EMP E2
ON  (E1.MGR= E2.EMPNO)
ORDER BY E1.EMPNO;

--https://sally03915.github.io/stackventure_250825/004_oracle/oracle006_select_join#54
--EX001 ~ EX004
--EX001
--EMP, DEPT 테이블을 이용하여
--SQL-99 이전 방식( = . (+) )다음 , SQL-99방식( (INNER) JOIN ON/USING/NATURAL JOIN ON, LEFT/RIGHT/FULL OUTER JOIN) 
--두가지 방식으로 다음과 같이 출력하시오.
--1. 급여(SAL)이 2000초과인 사원들의 부서정보, 사원정보를 출력하시오.
--힌트)
--SELECT   DEPTNO , DNAME, EMPNO , ENAME, SAL
--FROM     DEPT D , EMP E
--WHERE    위의 두 테이블에서 DEPTNO 가 같다면    AND   급여가(SAL) > 2000
--SQL-99       inner join , left outer join , right outer join, full outer join 
--SQL-99       inner join , left outer join , right outer join, full outer join  
-- SQL--99이전방식
SELECT  D.DEPTNO, DNAME, EMPNO, ENAME, SAL 
FROM    DEPT D, EMP E
WHERE   D.DEPTNO = E.DEPTNO AND SAL>2000; 

-- SQL--99 
--JOIN ON
SELECT  D.DEPTNO, DNAME, EMPNO, ENAME, SAL 
FROM    DEPT D JOIN EMP E ON( E.DEPTNO = D.DEPTNO)
WHERE SAL>2000; 

-- JOIN USING
SELECT  DEPTNO, DNAME, EMPNO, ENAME, SAL 
FROM    DEPT D JOIN EMP E USING(DEPTNO)
WHERE SAL>2000; 

-- NATURAL JOIN
SELECT  DEPTNO, DNAME, EMPNO, ENAME, SAL 
FROM    DEPT D NATURAL JOIN EMP E 
WHERE SAL>2000; 


--EX002
--EMP, DEPT 테이블을 이용하여
--SQL-99 이전 방식다음 , SQL-99방식 두가지 방식으로 다음과 같이 출력하시오.
--1. 각 부서별 평균급여, 최대급여, 사원수를 출력하시오.
--SQL-99 이전   =    (+)
--힌트)
--SELECT   DEPTNO , DNAME, AVG(SAL), MAX(SAL), MIN(SAL), COUNT(*)
--FROM     DEPT D , EMP E
--WHERE    위의 두 테이블에서 DEPTNO 가 같다면   
--GROUP BY DEPTNO , DNAME 
--SQL-99       inner join , left outer join , right outer join, full outer join

-- SQL-99이전방식
SELECT    D.DEPTNO, DNAME, TRUNC(AVG(SAL)) ANG_SAL , MAX(SAL) MAX_SAL, MIN(SAL) MIN_SAL, COUNT(*)
FROM      DEPT D, EMP E 
WHERE     E.DEPTNO = D.DEPTNO
GROUP BY  D.DEPTNO, DNAME;

-- SQL-99
-- JOIN ON
SELECT    D.DEPTNO, DNAME, TRUNC(AVG(SAL)), MAX(SAL), MIN(SAL), COUNT(*)
FROM      DEPT D JOIN EMP E ON( E.DEPTNO = D.DEPTNO)
GROUP BY  D.DEPTNO, DNAME;

--JOIN USING
SELECT    DEPTNO, DNAME, TRUNC(AVG(SAL)), MAX(SAL), MIN(SAL), COUNT(*)
FROM      DEPT D JOIN EMP E USING(DEPTNO)
GROUP BY  DEPTNO, DNAME;

-- NATURAL JOIN 
SELECT    DEPTNO, DNAME, TRUNC(AVG(SAL)), MAX(SAL), MIN(SAL), COUNT(*)
FROM      DEPT NATURAL JOIN EMP 
GROUP BY  DEPTNO, DNAME;


--EX003
--EMP, DEPT 테이블을 이용하여
--SQL-99 이전 방식다음 , SQL-99방식 두가지 방식으로 다음과 같이 출력하시오.
--1. 모든 부서정보와 사원정보를 부서번호, 사원이름 순으로 정렬해 출력하시오.
--SQL-99 이전   =    (+)
--SQL-99       inner join , left outer join , right outer join, full outer join
--힌트)   값 중에 NULL 이 있으므로  OUTER JOIN
--SELECT   DEPTNO , DNAME, EMPNO, JOB, SAL
--FROM     DEPT D , EMP E
--WHERE    위의 두 테이블에서 DEPTNO 가 같다면
--SQL-99이전방식
SELECT  D.DEPTNO, DNAME, EMPNO, JOB, SAL
FROM    DEPT D, EMP E
WHERE   D.DEPTNO = E.DEPTNO(+)
ORDER BY D.DEPTNO, E.ENAME;

--SQL-99
--LEFT OUTER JOIN ON
SELECT  D.DEPTNO, DNAME, EMPNO, JOB, SAL
FROM    DEPT D LEFT OUTER JOIN EMP E ON( D.DEPTNO = E.DEPTNO(+) )
ORDER BY D.DEPTNO, E.ENAME;

-- LEFT OUTER JOIN USING
SELECT  DEPTNO, DNAME, EMPNO, JOB, SAL
FROM    DEPT D LEFT OUTER JOIN EMP E USING(DEPTNO)
ORDER BY DEPTNO, ENAME;

--RIGHT OUTER JOIN ON
SELECT  D.DEPTNO, DNAME, EMPNO, JOB, SAL
FROM    EMP E RIGHT OUTER JOIN DEPT D ON( D.DEPTNO = E.DEPTNO(+) )
ORDER BY D.DEPTNO, E.ENAME;

-- RIGHT OUTER JOIN USING
SELECT  DEPTNO, DNAME, EMPNO, JOB, SAL
FROM    EMP E RIGHT OUTER JOIN DEPT D USING(DEPTNO)
ORDER BY DEPTNO, ENAME;

-- NATURAL JOIN 
SELECT  DEPTNO, DNAME, EMPNO, JOB, SAL
FROM    DEPT D NATURAL JOIN EMP E 
ORDER BY DEPTNO, ENAME; 


--EX004
--EMP, DEPT 테이블을 이용하여
--SQL-99 이전 방식다음 , SQL-99방식 두가지 방식으로 다음과 같이 출력하시오.
--모든 부서정보와 사원정보, 급여등급정보, 각사원의 직속상관의 정보를
--부서번호, 사원번호 순서로 정렬해 출력하시오.
--SQL-99 이전   =    (+)
--SQL-99       inner join , left outer join , right outer join, full outer join
--힌트)   값 중에 NULL 이 있으므로  OUTER JOIN
--SELECT   DEPTNO , DNAME, EMPNO, ENAME, MGR ,  SAL, DEPTNO_1, LOSAL, HISAL, GRADE, MGR_EMPNO, MGR_ENAME
--FROM     EMP E1 , DEPT D ,  SALGRADE S, EMP E2
--WHERE    JOIN의 조건  
--SQL-99이전방식
SELECT  D.DEPTNO, DNAME, E1.EMPNO, E1.ENAME, E1.MGR, E1.SAL
        , E1.DEPTNO AS DEPTNO_1
        , LOSAL, HISAL, GRADE
        , E2.EMPNO AS MGR_EMPNO
        , E2.ENAME AS MGR_ENAME
FROM     EMP E1, DEPT D, SALGRADE S, EMP E2
WHERE    E1.DEPTNO(+) = D.DEPTNO AND E1.SAL BETWEEN LOSAL(+) AND HISAL(+) AND E1.MGR = E2.EMPNO(+) 
ORDER BY D.DEPTNO, E1.EMPNO ;

--SQL-99
--JOIN ON
SELECT  D.DEPTNO, DNAME, E1.EMPNO, E1.ENAME, E1.MGR, E1.SAL
        , E1.DEPTNO AS DEPTNO_1
        , LOSAL, HISAL, GRADE
        , E2.EMPNO AS MGR_EMPNO
        , E2.ENAME AS MGR_ENAME
FROM     EMP E1 RIGHT JOIN DEPT     D ON(E1.DEPTNO = D.DEPTNO )
                LEFT  JOIN SALGRADE S ON(E1.SAL BETWEEN LOSAL AND HISAL)
                LEFT  JOIN EMP E2     ON(E1.MGR = E2.EMPNO)       
ORDER BY D.DEPTNO, E1.EMPNO ;
