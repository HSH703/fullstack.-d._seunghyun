-------------------------------------------------------------------------------------
-- ##1. 문자열 연습문제   (19~44)
-- https://sally03915.github.io/stackventure_250825/004_oracle/oracle004_select_fn#14

-- Q019
--ROUND를 이용하여 반올림 된 숫자 출력하기
select  round(1234.5678)     r 
,       round(1234.5678 , 0) r1
,       round(1234.5678 , 1) r2
,       round(1234.5678 , 2) r3
,       round(1234.5678 , -1) "r4 -숫자제거"
,       round(1234.5678 , -2) r5
from    dual;
--where

--Q020 특정위치에서 버리는 TRUNC 함수수 trunc - 버리기
select  trunc(1234.5678)     r 
,       trunc(1234.5678 , 0) r1
,       trunc(1234.5678 , 1) r2
,       trunc(1234.5678 , 2) r3
,       trunc(1234.5678 , -1) "r4 -숫자제거"
,       trunc(1234.5678 , -2) r5
from    dual;
--where

--Q021 CEIL : 가장 가까운 큰 정수, FLOOR : 가장 가까운 작은 정수 반환
--          4          3             -3        -4                 --양수가 더 큰 값. 
select ceil(3.14) , floor(3.96), ceil(-3.14), floor(-3.96)
from dual;
--where

--Q022 MOD : 특정 숫자를 나누고 그 나머지 출력    mod:  n1/n2 ? 나머지
-- 10을 3으로 나눴을때 나머지, 10을 2로 나눴을때 나머지
select mod(10,3),                 mod(10,2),            mod(10,4) 
from dual;

--Q023 SYSDATE 함수를 사용하여 날짜 출력 하루이전, 이후
select sysdate 오늘, sysdate -1 어제, sysdate +1 내일
from dual; 

-- Q024 ADD_MONTHS 3개월 후 날짜
select sysdate, add_months( sysdate, 3) "3개월뒤"
from dual; 

--Q025  ADD_MONTHS 연습문제)
--EMP 테이블에서 입사 10주년(1년, 12개월 / 10년, 120개월)이 되는 사원들의 데이터를 출력하시오.
select empno, ename, hiredate, add_months(hiredate, 120) "10주년"
from emp;

--Q026 ADD_MONTHS 연습문제)
--EMP 테이블에서 입사 42년 미만인 사원데이터를 출력하시오.
--sysdate, mext_date, add_months, last_day, to_char
--12*42 = 504 
--42년이 지나 안나올 수 도 있음. 안나오면 개월수 늘려서 테스트해볼것
select empno, ename, hiredate,sysdate , add_months(hiredate, 504) "42년"
from emp
where add_months(hiredate, 504) > sysdate;

--Q027 EMP 테이블에서 HIREDATE와 SYSDATE사이의 개월수를 출력하시오.
--오늘날짜 기준으로 다음과 같이 구분
--empno, ename, hiredate, sysdate(24/12/21), months1, months2, months3
--to_date: 기준일
select empno, ename, hiredate, to_date('2024-12-21', 'YYYY-MM-DD')
,   MONTHS_BETWEEN(hiredate, to_date('2024-12-21') ) months1
,   MONTHS_BETWEEN(to_date ('2024-12-21', 'YYYY-MM-DD' ),hiredate ) months2
,   TRUNC( MONTHS_BETWEEN ( to_date('2024-12-21'), hiredate ) ) months3
from emp; 

--Q028 돌아오는 요일에 해당하는 날짜와 달의 마지막 날짜를 자도으로 계산산
--SYSDATE, ADD_MONTHS, LAST_DAY, NEXT_DAY, MONTHS_BETWEEN
SELECT SYSDATE, NEXT_DAY(SYSDATE, '월요일' ), LAST_DAY(SYSDATE)
FROM DUAL; 

--Q029 ROUND(반올림기준 / SQLD시험에 많이는 안나왔음. 훑고 넘기기. / 연습)
--ROUND를 사용하여 날짜 데이터를 출력하시오.
SELECT SYSDATE -- SYSDATE: 현재날짜와 시기
,   ROUND( SYSDATE, 'CC' ) "CC 세기 - Century" -- 많이 안씀.
,   ROUND( SYSDATE, 'YYYY' ) "YYYY - ★"       --많이씀. 
,   ROUND( SYSDATE, 'Q' ) "Q - 분기"
,   ROUND( SYSDATE, 'DDD' ) "DDD - 연중일수"
,   ROUND( SYSDATE, 'HH' ) "HH - 시간"
FROM DUAL;

--Q030 trunc (버리기 / SQLD시험에서 최근5년간 안나왔음. / 연습)
--TRUNC 함수를 사용하여 날짜 데이터를 출력하시오.
SELECT SYSDATE -- SYSDATE: 현재날짜와 시기
,   trunc( SYSDATE, 'CC' ) "CC 세기 - Century" -- 많이 안씀.
,   trunc( SYSDATE, 'YYYY' ) "YYYY - ★"       --많이씀. 
,   trunc( SYSDATE, 'Q' ) "Q - 분기"
,   trunc( SYSDATE, 'DDD' ) "DDD - 연중일수"
,   trunc( SYSDATE, 'HH' ) "HH - 시간"
FROM DUAL;

--Q031 ~ TO_CHAR / TO_NUMBER / TO_DATE 관련 문제(실무에서 많이 씀.)
--Q031 숫자와 문자열을 더하여 출력하시오
--empno 숫자 + '500' (문자열 500이지만, 알파벳포함X  A) - 자동변환
--                  TO_CHAR, TO_NUMBER 붙이면 오류 잘 안남.
select empno, ename, empno + '500'
from emp
where ename='SCOTT';

select empno, ename, empno + TO_NUMBER( '500')
from emp
where ename='SCOTT';

--Q032
--문자열과 숫자를 더하여 출력하시오.
--오류가 난다면 그이유를 적으시오.
select empno, ename, empno + '500a'
from emp
where ename='SCOTT'; --오류

--Q033 SYSDATE 날짜 형식지정하여 출력하시오.
select sysdate, to_char( sysdate, 'YYYY/MM/DD HH24:MI:SS') --암기
from dual;

--Q34 ~ Q38
-- Q6-34
SELECT SYSDATE,
       TO_CHAR(SYSDATE, 'MM') AS MM,
       TO_CHAR(SYSDATE, 'MON') AS MON,
       TO_CHAR(SYSDATE, 'MONTH') AS MONTH,
       TO_CHAR(SYSDATE, 'DD') AS DD,
       TO_CHAR(SYSDATE, 'DY') AS DY,
       TO_CHAR(SYSDATE, 'DAY') AS DAY
  FROM DUAL;

-- Q6-35
SELECT SYSDATE,
       TO_CHAR(SYSDATE, 'MM') AS MM,
       TO_CHAR(SYSDATE, 'MON', 'NLS_DATE_LANGUAGE = KOREAN' ) AS MON_KOR,
       TO_CHAR(SYSDATE, 'MON', 'NLS_DATE_LANGUAGE = JAPANESE') AS MON_JPN,
       TO_CHAR(SYSDATE, 'MON', 'NLS_DATE_LANGUAGE = ENGLISH' ) AS MON_ENG,
       TO_CHAR(SYSDATE, 'MONTH', 'NLS_DATE_LANGUAGE = KOREAN' ) AS MONTH_KOR,
       TO_CHAR(SYSDATE, 'MONTH', 'NLS_DATE_LANGUAGE = JAPANESE') AS MONTH_JPN,
       TO_CHAR(SYSDATE, 'MONTH', 'NLS_DATE_LANGUAGE = ENGLISH' ) AS MONTH_ENG
  FROM DUAL;

-- Q6-36
SELECT SYSDATE,
       TO_CHAR(SYSDATE, 'MM') AS MM,
       TO_CHAR(SYSDATE, 'DD') AS DD,
       TO_CHAR(SYSDATE, 'DY', 'NLS_DATE_LANGUAGE = KOREAN' ) AS DY_KOR,
       TO_CHAR(SYSDATE, 'DY', 'NLS_DATE_LANGUAGE = JAPANESE') AS DY_JPN,
       TO_CHAR(SYSDATE, 'DY', 'NLS_DATE_LANGUAGE = ENGLISH' ) AS DY_ENG,
       TO_CHAR(SYSDATE, 'DAY', 'NLS_DATE_LANGUAGE = KOREAN' ) AS DAY_KOR,
       TO_CHAR(SYSDATE, 'DAY', 'NLS_DATE_LANGUAGE = JAPANESE') AS DAY_JPN,
       TO_CHAR(SYSDATE, 'DAY', 'NLS_DATE_LANGUAGE = ENGLISH' ) AS DAY_ENG
  FROM DUAL;

-- Q6-37
SELECT SYSDATE,
       TO_CHAR(SYSDATE, 'HH24:MI:SS') AS HH24MISS,
       TO_CHAR(SYSDATE, 'HH12:MI:SS AM') AS HHMISS_AM,
       TO_CHAR(SYSDATE, 'HH:MI:SS P.M.') AS HHMISS_PM
  FROM DUAL;

-- Q6-38 , / . 주의
SELECT SAL,
       TO_CHAR(SAL, '$999,999') AS SAL_$,
       TO_CHAR(SAL, 'L999,999') AS SAL_L,
       TO_CHAR(SAL, '999,999.00') AS SAL_1,
       TO_CHAR(SAL, '000,999,999.00') AS SAL_2,
       TO_CHAR(SAL, '000999999.99') AS SAL_3,
       TO_CHAR(SAL, '999,999,00') AS SAL_4
  FROM EMP;

--Q039 ~ 알아두기!!
--Q039 '숫자로만 이뤄진 문자열' 가능
--문자데이터와 숫자데이터를 연산하여 출력하시오.
select 1300-'1500'  , '1300' + 1500
from dual;

--Q040
--문자데이터끼지 연산하여 출력하시오
--오류가 난다면 그이유를 적으시오. '숫자로만 이뤄진 문자열' 가능
select '1500' - '1300'
from dual;

select '1,500' - '1,300'
from dual;  --오류

--Q041 TO_NUMBER 함수로 연산하여 출력하시오. 40번문제 해결방안 포멧형식에 맞춰서 숫자로 변환
select TO_NUMBER('1,500', '999,999') - TO_NUMBER('1,300', '999,999')
from dual; 

--Q042 TO_DATE를 이용하여 문자 데이터를 날짜 데이터로 변환하시오.
SELECT TO_DATE( '2025-10-17', 'YYYY-MM-DD')
FROM DUAL; 

-- Q6-43
SELECT *
  FROM EMP
 WHERE HIREDATE > TO_DATE('1981/06/01', 'YYYY/MM/DD');

-- Q6-44
SELECT TO_DATE('49/12/10', 'YY/MM/DD') AS YY_YEAR_49,
       TO_DATE('49/12/10', 'RR/MM/DD') AS RR_YEAR_49,
       TO_DATE('50/12/10', 'YY/MM/DD') AS YY_YEAR_50,
       TO_DATE('50/12/10', 'RR/MM/DD') AS RR_YEAR_50,
       TO_DATE('51/12/10', 'YY/MM/DD') AS YY_YEAR_51,
       TO_DATE('51/12/10', 'RR/MM/DD') AS RR_YEAR_51
  FROM DUAL;






-------------------------------------------------------------------------------------
















