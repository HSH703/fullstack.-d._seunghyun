--1.
select * from emp;

--2. 집계 함수 sum, max, min, avg, count
select sum(sal) from emp; --급여의 합계
select sum(comm) from emp; --null값이 있어도 계산이 가능.

--       14줄   1줄
--select sal, sum(sal), max(sal), min(sal), avg(sal), count(sal) from emp; --error
select  sum(sal) 합, max(sal) 최대, min(sal) 최소, round( avg(sal) ,2 ) 평균, count(sal) 갯수 from emp; --집계함수

-- 3. group by
--select --5
--from --1
--where      --2 전체 필터링
--group by   --3 그룸핑
--having     --4 그룹핑안에서 조건(그룹핑 후 필터링)
--order by ; --6

--부서[별] 급여의(/그룹핑의) 합
--     14줄    1줄     --오류남.  → group by ;붙이면? 오류 X
select deptno, sum(sal)
from emp
group by deptno;


-- 4. having ( 합계를 구했을때, 9000이상인 그룹) 
select   deptno, sum(sal), count(*)
from     emp
group by deptno 
having   sum(sal) >= 9000;


--연습문제 Q1 ~ Q24
--#### https://sally03915.github.io/stackventure_250825/004_oracle/oracle005_select_group#14
--Q001 EMP 테이블에서 SUM 함수를 이용하여 급여 합계(SAL)를 출력하시오.
select sum(sal)
from   emp; 

--Q002 EMP 테이블에서 SUM 함수를 이용하여 사원이름과 급여 합계를 출력하시오.
-- 에러(937오류)가 난다면 그이유를 적으시오. ename(14줄)과 sum(1줄)의 줄수가 다르기 때문에 오류 발생. 
-- 해결방안 1)group by or 2)select에서 enmae 제거
select ename, sum(sal )
from emp
group by ename; --해결방안1)

--Q003 EMP 테이블에서 SUM 함수를 이용하여 추가수당(COMM) 합계를 출력하시오.
select sum(comm) from emp; --1400+300+500


--Q004 EMP 테이블에서 SUM (DISTINCT, ALL)함수를 이용하여 급여 합계를 출력하시오. --중복 안빼고 처리
select * from emp;

select sum(distinct sal) X ,sum(ALL sal) O , sum(sal) O from emp;

--Q005 EMP 테이블에서 COUNT를 이용하여 데이터의 갯수를 출력하시오.
select count(*) from emp;

--Q006 EMP 테이블에서 COUNT를 이용하여 부서번호가(EMPNO) 30인 데이터의 갯수를 출력하시오.
select count(*) --3)
from emp    --1)
where deptno = 30; --2) 

--Q007 EMP 테이블에서 COUNT ( DISTINCT, ALL) 를 이용하여 데이터의 갯수를 출력하시오. --중복 안빼고 그대로 처리: count(sal)
select count(distinct sal), count(all sal), count(sal) from emp;

-- Q008 EMP 테이블에서 COUNT를 이용하여 추가수당(COMM) 열의 갯수를 출력하시오.
select count(comm) from emp;

-- Q009
--EMP 테이블에서 COUNT를 이용하여 추가수당(COMM) 열의 갯수를 출력하시오.
--위와 실행결과가 같음
--COUNT는 NULL 처리가 들어가 있음.
select count(comm)        --3) where에서 필터링 했기 때문에 또 필터링 할 필요X
from emp                  --1)
where count is not null;  --2) null이 아닌 값 필터링

--Q010 EMP 테이블에서 MAX를 이용하여 부서번호(DEPTNO)가 10번인 사원들의 최대 급여를 출력하시오.
select max(sal)            --3)
from emp                   --1)
where deptno = 10;         --2)

--Q011 EMP 테이블에서 부서번호(DEPTNO)가 10번인 사원들의 최소 급여를 출력하시오.
select  min(sal)            --3)
from emp                    --1)
where deptno = 10;          --2)

--Q012 EMP 테이블에서 부서번호가 20인 사원의 입사일(HIREDATE) 중 제일 최근 입사일을 출력하시오. --날짜도 집계함수 사용 가능.
select max(HIREDATE)
from emp 
where deptno = 20;

--Q013 EMP 테이블에서 부서번호가 20인 사원의 입사일(HIREDATE) 중 제일 오래된 입사일을 출력하시오.
select min(HIREDATE)
from emp 
where deptno = 20;


select * from emp;

--Q014 EMP 테이블에서 부서번호가 30인 사원의 평균급여를 출력하시오.
select avg(sal)
from emp
where deptno = 30;

-- Q015 EMP 테이블에서 부서번호가 30인 사원의 DISTINCT로 중복을 제거한 급여 열의 평균급여를 출력하시오.
select avg(distinct sal)
from emp 
where deptno = 30;

-- Q016
--EMP 테이블에서
--집합연산자(UNION ALL) 를 사용하여 각 부서별 평균급여를 출력하시오.
-- union all 중복제거 안하고 합집합
-- union     중복제거하고 합집합.
--select deptno, avg(sal)
--from emp 
--where deptno = 10
--union all
--select deptno, av(sal)
--from emp
--where deptno = 30;

select avg(sal), '10' as deptno from emp where deptno=10
union all
select avg(sal), '20' as deptno from emp where deptno=20
union all
select avg(sal), '30' as deptno from emp where deptno=30

select avg(sal), '10' as deptno from emp where deptno=10
union 
select avg(sal), '20' as deptno from emp where deptno=20
union 
select avg(sal), '30' as deptno from emp where deptno=30


--Q017 EMP 테이블에서 GROUP BY를 사용하여 부서별 평균급여를 출력하시오.
select avg(sal), deptno
from emp
group by deptno; --집계함수(avg, sum...) 앞에 있는 내용들 전부 입력

-- Q018 EMP 테이블에서 부서번호(DEPTNO) 및 직책별(JOB) 평균급여(SAL)로 정렬한 후 출력하시오.
select deptno, job, avg(sal)
from emp 
group by deptno, job --집계함수 빼고 앞에 있는 내용들 전부 그룹핑 
order by deptno, job;

-- Q019
--EMP 테이블에서 GROUP BY절에 없는 열을 SELECT절에 포함하면 에러가 난다.
--그이유를 적으시오. 집계함수(avg, sum...)앞에 있는 내용들이 전부 group by에도 있어야하기 때문에 오류가 남.
select ename, deptno, avg(sal)
from emp
group by deptno, ename;

-- Q020
--EMP 테이블에서 GROUP BY 와 HAVING 절을이용하여
--각부서의 직책별 평균급여를 구하되 그 평균급여가 2000이상인 그룹만 출력하시오.
select deptno, job, avg(sal)
from emp
group by deptno, job
having avg(sal) >= 2000
order by deptno, job; --order by: 정렬

-- Q021 다음 코드가 오류나는 이유를 적으시오
-- having절이 없어서. having avg(sal) >= 2000 해결방안 (Q22.)
select deptno, job, avg(sal)
from emp
where avg(sal) >= 2000   --2)
group by deptno, job     --3) deptno, job / 문제점: 3)이 그룹핑 되기전에 2)이 먼저 입력이 되서.
order by deptno, job;

--Q022 WHERE 절을 사용하지 않고 HAVING절만 사용한 경우
select deptno, job, avg(sal)
from emp
group by deptno, job
having avg(sal) >= 2000;

--Q023 WHERE절과 HAVING절을 모두 사용한경우
select deptno, job, avg(sal) --5)
from emp            --1) 14줄
where sal <= 3000  --2) 3000이하 where 뒤에는 sum, avg ... 올 수 없음.
group by deptno, job --3) deptno, job의 평균
having avg(sal) >= 2000 --4) 
order by deptno, job; --6)

-- Q024
--EMP 테이블에서
--1. 부서별(큰그룹) 직책(소그룹)의
--2. 사원수, 가장 높은 급여, 급여의 합, 평균급여를 출력하시오.
select deptno, job, count(*), max(sal),  sum(sal), avg(sal)
from emp 
group by deptno, job
--having max(sal) <=5000, avg(sal) <= 5000, sum(sal) >= 6000 조건이 없으므로 having 없어도 됨.
order by deptno, job;



