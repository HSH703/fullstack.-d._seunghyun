-- 1.
select * from emp;

-- 2. 집계합수 - sum, count, max, min, avg  --그림으로 보면서 익히기
select sum(sal) from emp; --1개

-- 3. 부서의 직업별 급여의 평균
--     4줄          1줄     --오류남(single group~~)
select deptno, job, avg(sal) from emp group by deptno, job;

-- 4. where vs having   (급여의 평균)에서 2000이상 
select deptno, job, avg(sal)    --5) 
from emp                        --1)
where sal >= 1500               --2) 전체데이터에서 필터링
group by deptno, job            --3) (부서의 직업별), 급여의 평균
having avg(sal) > 2000;         --4) 3번에서 나온 급여의 평균으로 having(집계함수에서 나온 것들을 계산)

-- 5. rollup, cube - group by에서 사용, grouping sets / pivot, unpivot
--    (부서의  직업별) 명수와     급여의 평균
-- rollup : 10부서의 직업 급여의 평균, 20부서의 직업 급여의 평균, 30부서의 직업 급여의 평균 = 전체 총계
--     소 → 대
select   deptno, job,  count(*), round(avg(sal), 1)
from     emp
group by rollup(deptno, job);

-- cube(다차원분석) : (deptno + job)전체총계 , job총계, deptno 총계, deptno + job 각각의 세부내용 
--     대→ 소
select   deptno, job,  count(*), round(avg(sal), 1)
from     emp
group by cube(deptno, job);

-- 6. grouping - 뭘로 묶였는지 확인. 해당컬럼이 실제로 그룹화 되었니?  0 - 그룹화에 포함됨 / 1- 그룹화에 포함되지 않음.
select   deptno, job, grouping(deptno) , grouping(job) --
from     emp                 --1)
group by cube(deptno, job);  --2) deptno + job, job, deptno, 둘다 세부사항

-- 7. pivot 행데이터를 열로 표현함.(Oracle방언이라고 보면 됨./SQLD시험에서 나올수도 있음.)
select *
from   ( select 컬럽1, 컬럼2, 컬럼3, 집꼐대상컬럼 from 테이블명   )     --원본데이터 : pivot을 적용한 대상
pivot  ( 집계함수(집계대상) for 컬럼기준 in(깂1, 깂2, 깂3,,,)     ); --집계합수   : 어떤 컬럼을 기준을 만들지 지정.

-- 1) job별 부서 10, 20, 30의 최대급여
select  *
from    ( select deptno, job, sal from emp    )
pivot   ( max (sal) for deptno in(10, 20, 30) ); --job별 부서 10, 20, 30의 최대급여

--2) 직무별 부서별 사원 수 - job별 부서 10, 20, 30의 사원 수
select   *
from     ( select job, deptno, empno from emp )
pivot    ( count(empno) for deptno in (10, 20, 30) );

--3) 부서별 직무 평균 급여
select  *
from    ( select deptno, job, sal from emp   )
pivot   ( avg(sal) for job in ( 'CLERK', 'MANAGER', 'SALESMAN') );

-- unpivot 열 데이터를 행으로 표현
-- decode(job, 'CLERK', sal) JOB필드에서 CLERK인 경우만 SAL변환, 아니면 NULL
select    *
from      (
    select deptno, max(decode(job, 'CLERK', sal)    ) CLERK
                 , max(decode(job, 'MANAGER', sal)  ) manager 
    from emp            --#1)
    group by deptno     --#2)
)--원본데이터  : unpivot을 적용할 대상들(열 형태로 집계된 데이터)
unpivot   (
    SAL FOR JOB IN (CLERK, MANAGER )
);  --unpivot   : 열을 행으로 변환, 기준컬럼 열이름이었던 것을 행 값으로 변환.
-- from(괄호안에 있는 코드 출력 순서)- DEPTNO, CLERK(열), MANAGER
-- 전체코드 출력 순서 - DEPTNO, JOB,    SAL
--                           CLERK
--                           MANAGER
 


--##https://sally03915.github.io/stackventure_250825/004_oracle/oracle005_select_group#38
--Q25. ~ Q39.
-- Q025
--EMP 테이블에서 ROLLUP 함수를 이용하여
--부서별(큰그룹) 직책(소그룹/rollup 이용)의
--사원수, 가장 높은 급여, 급여의 합, 평균급여를 출력하시오.
select deptno, job, count(*), max(sal), sum(sal), avg(sal) --3)
from emp   --1)
group by rollup(deptno, job);  --2)

--Q026
--EMP 테이블에서 CUBE(DEPTNO, JOB) 함수를 이용하여
--부서별(큰그룹) 직책(소그룹)의
--사원수, 가장 높은 급여, 급여의 합, 평균급여를 출력하시오.
select deptno, job, count(*), max(sal), sum(sal), avg(sal)
from emp
group by cube(deptno, job); 

--Q027
--EMP 테이블에서
--DEPTNO를 먼저 그룹화한후 ROLLUP 함수에 JOB을 지정하여
--사원수를 출력하시오.
select deptno, job, count(*)
from emp
group by deptno, rollup(job);

--Q028
--EMP 테이블에서
--JOB을 먼저 그룹화한후 ROLLUP 함수에 DEPTNO을 지정하여
--사원수를 출력하시오.
select deptno, job, count(*)
from emp    --1)
group by  job, rollup(deptno);

--Q029
--EMP 테이블에서
--GROUPING SETS (DEPTNO, JOB) 함수를 사용하여
--열별 그룹으로 묶어어 결과로 출력하시오.  ## 
select deptno, job, count(*) 
from emp 
group by grouping sets(deptno, job);  --다중 그룹을 한번에 지정 / 출력값도 확인해보기!
 1) group by deptno  -- job은    null
 2) group by job     -- deptno를 null


-- Q030 EMP 테이블에서 DEPTNO JOB열의 그룹화결과를 GROUPING 함수로 출력하시오. (기준점 적용 : 0)
select deptno, job, count(*), max(sal),  sum(sal), avg(sal), grouping(deptno), grouping(job)
from emp 
group by cube (deptno, job);

-- Q031 DECODE문으로 GROUPING 함수를 적용하여 결과를 표기하시오오
--grouping(deptno) 1 이라면? 적용안됬다는 의미.
SELECT   DECODE( GROUPING(DEPTNO),1  , 'ALL_DEPT' , DEPTNO    ) AS DEPTNO 
        ,DECODE( GROUPING(JOB)   ,1  , 'ALL_JOB'  , JOB       ) AS JOB
        ,COUNT(*), MAX(SAL), SUM(SAL), AVG(SAL)
FROM    EMP
GROUP   BY  CUBE(DEPTNO, JOB)
ORDER   BY   DEPTNO, JOB;

--Q032 DEPTNO, JOB을 함께 명시한 GROUPING_ID 함수를 사용하시오.
-- grouping_id : 집계수준(몇번 집계) 
select deptno, job, count(*), sum(sal), grouping(deptno), grouping(job), grouping_id(deptno, job)
from   emp 
group by cube(deptno, job)
order by deptno, job;  --정상 조합부터 보면됨.

--이진법으로 표시
1) deptno(0),       job(0),       grouping_id(0) 정상조합                0*2^1 + 0*2^0=0
2) deptno(0),       job(1: null), grouping_id(1) deptno 실제값, job null 0*2^1 + 1*2^0=1
3) deptno(1: null), job(0),       grouping_id(2) deptno null, job 실제값 1*2^1 + 0*2^0=2
3) deptno(1: null), job(1: null), grouping_id(3) 전체집계  둘다 null      1*2^1 + 1*2^0=3   2^0 = 1로 계산

--Q033 EMP 테이블에서 GROUP BY로 그룹화하여 부서번호와 사원이름을 출력하시오.
select deptno, ename
from emp 
group by deptno, ename;

--Q034
--EMP 테이블에서 부서별 사원이름을 나란히 나열하여 출력하시오.
--1. LISTAGG( 나열할 열, 구분자)
--2. WITHIN GROUP(ORDER BY 나열할 열의 정렬기준)
--     그룹핑   이름들을 가로방향으로 나열                   sal 내림차순
select deptno, listagg( ename, ', ') within group(order by sal desc ) enames
from emp 
group by deptno;

--Q035 EMP 테이블에서 부서, 직책별 그룹화하여 최고급여데이터를 출력하시오
select deptno, job, max(sal)
from emp 
group by deptno, job
order by deptno, job;

-- Q036 EMP 테이블에서 PIVOT(행을 열로 표현)함수를 사용하여 직책별* 부서별 최고급여를 2차원 표 형태로 출력하시오
select  *
from    (select deptno, job, sal from emp)
pivot   (max(sal) for deptno in (10, 20, 30));

--Q037 EMP 테이블에서 PIVOT함수를 사용하여 부서별*직책책별 최고급여를 2차원 표 형태로 출력하시오
SELECT *
FROM  (   SELECT  DEPTNO, JOB, SAL FROM EMP   )
PIVOT (   MAX(SAL)  FOR  JOB  IN( 'PRESIDENT' , 'MANAGER',  'ANALYST' , 'CLERK', 'SALESMAN'  )  );

PRESIDENT, MANAGER, ANALYST, CLERK, SALESMAN

--Q038 EMP 테이블에서 DECODE문을 활용하여 PIVOT 함수와 같은 결과를 출력하시오
SELECT     DEPTNO
           ,MAX(DECODE(JOB, 'CLERK'     , SAL) ) CLERK
           ,MAX(DECODE(job, 'SALESMAN'  , SAL) ) SALESMAN
           ,MAX(DECODE(JOB, 'PRESIDENT' , SAL) ) PRESIDENT
           ,MAX(DECODE(JOB, 'MANAGER'   , SAL) ) MANAGER
           ,MAX(DECODE(JOB, 'ANALYST'   , SAL) ) ANALYST
FROM       EMP
GROUP BY   DEPTNO;

--Q039 EMP 테이블에서 UNPIVOT 활용하여 열로 구분된 그룹을 행으로 출력하시오
SELECT     *
    FROM(
        SELECT DEPTNO
                   ,MAX(DECODE(JOB, 'CLERK'     , SAL) ) CLERK
                   ,MAX(DECODE(job, 'SALESMAN'  , SAL) ) SALESMAN
                   ,MAX(DECODE(JOB, 'PRESIDENT' , SAL) ) PRESIDENT
                   ,MAX(DECODE(JOB, 'MANAGER'   , SAL) ) MANAGER
                   ,MAX(DECODE(JOB, 'ANALYST'   , SAL) ) ANALYST
        FROM       EMP
        GROUP BY   DEPTNO
)
UNPIVOT(
    SAL FOR JOB IN( CLERK, SALESMAN, PRESIDENT, MANAGER, ANALYST)
)
ORDER BY DEPTNO, SAL;

--https://sally03915.github.io/stackventure_250825/004_oracle/oracle005_select_group#58
--사고확장 EX001~ EX005
--Ex001
--EMP 테이블을 이용하여 다음과 같이 출력하시오.
--부서번호(DEPTNO) , 평균급여(AVG_SAL) , 최고급여(MAX_SAL) , 최저급여(MIN_SAL) , 사원수(CNT) 를 조회하시오
--평균급여를 출력시 소수점을 제외하고 각 부서번호별로 출력하시오.
select deptno, avg(sal), 
from emp 

















