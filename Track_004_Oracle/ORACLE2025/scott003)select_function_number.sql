--------------------------------------------------------------------------------------
--003_select_function.sql
--1. 문자열 
--2. 숫자       : round/trunc(반올림/버림), ceil(올림)          , floor(내림), mod(나머지)
--3. 날짜       : sysdate(시스템날짜)     , add_months(몇달뒤에) , next_day, last_day(달력만들때) 
--4. 변환(함수)  : to_char(날짜형식변환), to_date, to_number
--5. 조건(함수)  :  nvl, nvl2( null ), decode, case( 조건분기 )
--------------------------------------------------------------------------------------
--2. 숫자       : round/trunc(반올림/버림), cell(올림)          , floor(내림), mod(나머지)
select round( 1234.5678 ), round( 1234.5678 , 2 ), trunc( 1234.5678 , 2 ) , ceil(1.1), floor(4.8), mod(10,3)
from dual;  -- 1234         1234.57                     1234.56               2             4          


--------------------------------------------------------------------------------------
--3. 날짜       : sysdate(시스템날짜)     , add_months(몇달뒤에) , next_day, last_day(달력만들때) 
select sysdate, add_months(sysdate , 1 ), months_between( '25-12-1', '24-12-1' )
from dual; 

SELECT NEXT_DAY(SYSDATE, '월요일') "다음주월요일", LAST_DAY(SYSDATE) "해당월의 마지막 날짜"
FROM DUAL; 

SELECT NEXT_DAY(SYSDATE, 1) "다음주월요일", LAST_DAY(SYSDATE) "해당월의 마지막 날짜"
FROM DUAL; 


--------------------------------------------------------------------------------------
--4. 변환(함수)  : to_char(날짜형식변환), to_date, to_number
--               날짜를     문자로                    문자를         날짜로
select TO_CHAR( SYSDATE, 'YYYY-MM-DD' ) , TO_DATE( '2025-10-16' , 'YYYY-MM-DD' )
from dual;

--    숫자1234를 문자열로 변환 + 1                             (자동변환해서 오류가 안날수도 있음.)
select TO_CHAR( 1234 )      + 1 ,  TO_NUMBER('5678') + 1  
from dual;

select TO_CHAR( '일이삼사' )        + 1 ,  TO_NUMBER( '5678' ) + 1  --오류
from dual;

select         "1234"     + 1 , 1+"1234"     --자료형이 안맞으면 오류남.  ||
from dual;

select         '1234'    ||  1    
from dual; --오류 X



--------------------------------------------------------------------------------------
--5. 조건(함수)  :  nvl, nvl2( null ), decode, case( 조건분기 )
select nvl(  NULL , '대체값' )  from dual;             --null이면? 대체값  null value logic( replacement )
select nvl(         comm,  '입력 안됨. ') from    emp;  --X오류
select nvl( to_char(comm), '입력 안됨. ') from    emp;  --자료형을 맞춰야함. //트러블슈팅

select nvl2(NULL, 'A', 'B') from dual;   --null일때 b, 아니면 a
-----
select nvl2(mgr,         mgr,      '--'    ) from emp;  --오류나는 이유는? 자료형이 안맞음
select nvl2(mgr, to_char(mgr), '상위관리자 x') from emp;  --해결방안 (nvl, nvl2 null일때, 값 반환 / 자료형맞추기.)
-----
select decode( deptno, 10, '부서10', 20, '부서20' ,30, '부서30')
from emp;
-----
select case 
            when deptno =10 then '부서10'
            when deptno =20 then '부서20'
            when deptno =30 then '부서30'
            else                 '부서X '
        end
from emp; --case end

select case deptno
            when 10 then '부서10'
            when 20 then '부서20'
            when 30 then '부서30'
            else                 '부서X '
        end
from emp; --case end

-------------------------------------------------------------
--##1. 문자열 연습문제 (45 ~ 49)
--https://sally03915.github.io/stackventure_250825/004_oracle/oracle004_select_fn#61

--Q045 EMP테이블에서 NVL 함수를 사용하여 다음과 같이 출력하시오.
--select empno, ename, sal, comm,sal+comm
--,      nvl(  to_char (comm), 0)
--,      sal + nvl(to_char(comm),0 )
--from emp;
select empno, ename, sal, comm, sal+comm
,       nvl(comm, 0 ), sal + nvl(comm,0) 
from emp;




--Q046 EMP테이블에서 NVL2 함수를 사용하여 다음과 같이 출력하시오.
--(nvl2 이용  comm이  null 이면 'X')- nvl2( NULL, 'NULL아님','반환값')
select empno, ename, comm
,      nvl2(comm ,'O','X') 
,      sal*12 + nvl2(comm ,comm,0) 
from emp; 

-- Q047  EMP테이블에서 DECODE 함수를 사용하여 다음과 같이 출력하시오.  (decode)
--JOB이 MANAGER 는 급여의 10% 인상한 급여       SAL*1.1
--SALESMAN 는 급여의 5% 인상한 급여             SAL*0.5
--ANALYST 는 그대로                            SAL 
--나머지는 3% 인상된 급여         SAL*0.3

select sal*1.1 
from emp;
--where

select EMPNO, ENAME, JOB, SAL  
, decode( JOB, 'MANAGER' , sal*1.1 
,              'SALESMAN', sal*1.05 
,              'ANALYST' , sal
,                          sal*1.03                         
) upsal
from emp; 

--Q048
--EMP테이블에서 CASE 함수를 사용하여 다음과 같이 출력하시오.
--JOB이 MANAGER 는 급여의 10% 인상한 급여
--SALESMAN 는 급여의 5% 인상한 급여
--ANALYST 는 그대로
--나머지는 3% 인상된 급여
select EMPNO, ENAME, JOB, SAL
,      case JOB
            when 'MANAGER'  then sal*1.1
            when 'SALESMAN' then sal*0.5
            when 'ANALYST'  then sal
            else                 sal*0.3
       end upsal
from emp;
--where


-- Q049
--기준데이터 없이 조건식으로만 CASE 사용가능    case when  then   else  end)
--COMM 값이 NULL 이면 해당사항 없음
--0 이면 수당없음
--0 초과시 초과한 수당을 출력
select empno, ename, comm
,   case
        when comm is null  then '해당사항 없음'
        when comm =    0   then '수당 없음'
        when comm > 0      then '수당 : ' || comm
     end
from emp;


-------------------------------------------------------------------------------------
-- ##1. 문자열 연습문제   (19~44)
-- https://sally03915.github.io/stackventure_250825/004_oracle/oracle004_select_fn#14




