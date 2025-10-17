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
            else         '부서X '
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
-------------------------------------------------------------------------------------

-- 사고확장 - 말장난이므로 잘 생각해보고 문제만 보고 풀 수 있도록 하기!!
-- https://sally03915.github.io/stackventure_250825/004_oracle/oracle004_select_fn#68
--힌트1) 
-- Ex1. EMP 테이블에서 다음과 같은 결과가 나오도록 SQL문을 작성하시오.
--EMP 테이블에서 ENAME이 다섯글자 이상이며 여섯글자 미만인 사원을 조회하시오.
--MASKING_EMPNO 는 EMPNO 앞두자리외 뒷자리를 *로 출력
--MASKING_ENAME 는 사원이름의 첫글자만 보여주고 나머지는 *로 출력
--※ 앞자리 추출 - SUBSTR(문자열, 어디에서, 몇개)
--※ RPAD - RPAD( 문자열, 몇자리, 채울값)

-- Step1)   select     from   where  구문적기
-- Step2)   from  채우기
-- Step3)   where  채우기  -  ENAME이 다섯글자 이상이며 여섯글자 미만인 사원을 조회
--          length(ename)  이상  5   그리고      length(ename)  이하 6
-- Step4)   오른쪽채우기 rpad  (  substr(empno에서 , 첫번째부터, 2글자  )  , 4자리 맞추기 , '*'로 채우기   ) 
select empno masking_empno, ename masking_ename
, rpad( substr (empno, 1,2), 4, '*' ), rpad( substr(ename, 1 ,1 )  ,5 ,'*' )
from emp 
where length(ename) >= 5 and length(ename) <= 6;

--select empno masking_empno, ename masking_ename
--, rpad(substr ( empno, 1,2 ) , 4, '*'), rpad( substr (ename, l,2), 5, '*' )
--from emp 
--where length(ename) >= 5 and length(ename) <= 6; 


 
-- EX002 trunc vs round (sqld자격증시험에서 비교 문제 나옴 !!)
--힌트2)  
--EMP 테이블에서 다음과 같은 결과가 나오도록 SQL문을 작성하시오.
--EMP 테이블에서 사원들의 월 평균 근무일 수는 21.5일
--2 하루 근무시간을 8시간으로 보았을때 사원들의 하루급여(DAY_PAY) 와 시급(TIME_PAY)을 계산하여 결과를 조회하시오.
--※ 하루급여는 소수점 세번째 자리에서 버리고(TRUNC), 시급은 두번째 소수점에서 반올림(ROUND)하시오

-- Step1)   select     from   where  구문적기
-- Step2)   from  채우기
-- Step4)   select 채우기    -  trunc( 급여(sal)/21.5  , 2 )  소수점 버리기 /  round( 급여(sal)/21.5/8 , 1   )
-- 한달급여
-- 월급여
select empno, ename, sal  
,trunc( sal / 21.5 , 2) day_pay, round(sal / 21.5 / 8, 1 ) time_pay
from emp;
--where

--select  empno, ename, sal,  trunc(  sal/21.5  ,2)   day_pay     , round( sal/21.5/8 , 1)  time_pay
--from    emp;
--where ; --조건 X


--EX003
--힌트3)  
---  EMP 테이블에서 다음과 같은 결과가 나오도록 SQL문을 작성하시오. 
--1. EMP테이블에서 사원들은 입사일(HIREDATE)을 기준으로 3개월이 지난 후 첫 월요일에 정직원이 됨
--2. 사원들이 정직원이 되는 날짜(R_JOB)를 YYYY-MM-DD 형식으로 오른쪽과 같이 출력하시오.
--3. 추가 수당(COMM)이 없는 사원들의 추가수당은 N/A로 출력하시오.

-- Step1)   select     from   where  구문적기
-- Step2)   from  채우기
-- Setp3)   입사일(HIREDATE)을 기준으로 3개월이 지난 후 첫 월요일에 정직원이 됨  ADD_MONTHS(HIREDATE, 3)  3개월뒤
--           첫월요일   - NEXT_DAY(ADD_MONTHS(HIREDATE, 3), '월요일')
--           문자열로   - TO_CHAR(NEXT_DAY(ADD_MONTHS(HIREDATE, 3), '월요일'), 'YYYY-MM-DD')
--          추가수당이 있는지 확인      NVL(  TO_CHAR(COMM)  , 'N/A'  ) null 이라면 'N/A'
select empno, ename, hiredate, comm
,to_char (next_day (add_months( hiredate, 3 ), '월요일'), 'YYYY-MM-DD' )
,nvl ( to_char (comm) , 'n/a')
from emp;
--where

--select    empno, ename, hiredate 
--    , TO_CHAR(NEXT_DAY(ADD_MONTHS(HIREDATE,3) , '월요일') ,'YYYY-MM-DD')     R_JOB    
--     3개월이(ADD_MONTHS) / 첫 월요일 NEXT_DAY( 날짜 , '월요일'  ) / 1~7, '일'(1), '월'(2) TO_CHAR  YYYY-MM-DD
--    , NVL(  TO_CHAR( COMM ) , 'N/A'   ) COMM 
--from      emp;
--where

--Ex004)
--힌트4)  EMP 테이블에서 다음과 같은 결과가 나오도록 SQL문을 작성하시오.
--1. 직속상관의 사원번호(MGR)를 다음과 같은 조건을 기준으로 변환해서 CHG_MGR열에 출력하시오
--1) 직속상관의 사원번호가 존재하지 않을경우 : 00000
--2) 직속상관의 사원번호 앞 두자리가 75일 경우 : 5555
--3) 직속상관의 사원번호 앞 두자리가 76일 경우 : 6666
--4) 직속상관의 사원번호 앞 두자리가 77일 경우 : 7777
--5) 직속상관의 사원번호 앞 두자리가 78일 경우 : 8888
--6) 그 외 직속상관 사원번호의 경우 : 본래 직속상관의 사원번호 그대로 출력

-- Step1)   select     from   where  구문적기
-- Step2)   from  채우기
-- Step3)   case  when   then  end   구문 채우기
--      case   처리대상(mgr)
--          when   사원번호가 존재하지 않을경우(mgr  is null)  then   '00000'
--          when   직속상관의 사원번호 앞 두자리(문자열일부분)   substr(  mgr , 첫글자부터(1), 몇개(2) ) = '78'   then   '8888'
--          when   직속상관의 사원번호 앞 두자리(문자열일부분)   substr(  mgr , 첫글자부터(1), 몇개(2) ) = '77'   then   '7777'
--          when   직속상관의 사원번호 앞 두자리(문자열일부분)   substr(  mgr , 첫글자부터(1), 몇개(2) ) = '76'   then   '6666'
--          when   직속상관의 사원번호 앞 두자리(문자열일부분)   substr(  mgr , 첫글자부터(1), 몇개(2) ) = '75'   then   '5555'
--          else   to_char(mgr)
--      end   CHG_MGR
select empno, ename, mgr
,   case
        when mgr is null                  then '0000'
        when substr( mgr, 1, 2  ) = '78'  then '8888'
        when substr( mgr, 1, 2  ) = '77'  then '7777'
        when substr( mgr, 1, 2  ) = '76'  then '6666'
        when substr( mgr, 1, 2  ) = '75'  then '5555'
        else to_char(mgr)
    end  chg_mgr
from emp; 
--where

--select   empno, ename, mgr, 
--        case
--            when  mgr is null  then  '0000'
--            when  substr(  mgr  , 1, 2 )  = '78' then  '8888'
--            when  substr(  mgr  , 1, 2 )  = '77' then  '7777'
--            when  substr(  mgr  , 1, 2 )  = '76' then  '6666'
--            when  substr(  mgr  , 1, 2 )  = '75' then  '5555'
--            else  to_char(mgr)
--        end chg_mgr    
--from    emp
--where 


-------------------------------------------------------------------------------------


-------------------------------------------------------------------------------------









