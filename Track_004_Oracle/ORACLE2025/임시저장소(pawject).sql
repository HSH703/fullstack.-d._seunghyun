--운동정보테이블 (1단계 CRUD 파트)
--| 필드명             | 타입           | 설명 |
--|--------------------|----------------|------|
--| `execid`      | INT (PK)       | 운동 고유 ID |
--| `exectype`    | VARCHAR(50)    | 운동 종류 (예: 산책, 수영, 노즈워크 등) |
--| `description`      | VARCHAR(255)   | 운동에 대한 간단 설명 |
--| `avgkcal30min` | FLOAT        | 평균 칼로리 소모량 (소형견 기준, 30분 기준) |
--| `exectargetmin` | INT   | 권장 운동 시간 (분) |
--| `suitablefor`     | VARCHAR(100)   | 추천 대상 (예: 소형견, 노령견 등) |
--| `intensitylevel`  | VARCHAR(20)    | 운동 강도 (예: 저강도, 중강도, 고강도) |
--| `createdat`       | DATETIME       | 등록일 |
--| `updated_at`       | DATETIME       | 수정일 |


--(1, '산책', '가장 기본적인 야외 운동으로 스트레스 해소와 사회성 향상에 효과적입니다.', 80.0, 30, '모든 견종, 노령견 포함', '저강도', NOW(), NOW()),
--
--(2, '노즈워크', '간식을 숨겨두고 냄새로 찾게 하는 놀이로, 정신 자극과 집중력 향상에 좋습니다.', 60.0, 20, '실내 생활견, 고양이도 가능', '저강도', NOW(), NOW()),
--
--(3, '수영', '관절에 부담이 적고 전신 근육을 사용하는 고강도 운동입니다.', 120.0, 25, '중형견 이상, 관절 약한 반려동물', '고강도', NOW(), NOW()),
--
--(4, '터그놀이', '줄다리기 형태의 놀이로, 근력과 집중력을 동시에 향상시킵니다.', 70.0, 15, '활동적인 소형견, 고양이도 가능', '중강도', NOW(), NOW()),
--
--(5, '레이저 포인터 추적', '고양이에게 인기 있는 실내 운동으로, 사냥 본능을 자극합니다.', 50.0, 10, '고양이 전용, 실내 생활 반려동물', '중강도', NOW(), NOW());



create table exerciseinfo(
    execid         int           primary key,
    exectype       VARCHAR(50),
    description    VARCHAR(255),
    avgkcal30min   float,
    exectargetmin  int,
    suitablefor    VARCHAR(100),
    intensitylevel VARCHAR(100),
    createdat      DATETIME,
    updatedat      DATETIME
);

insert into exerciseinfo(execid,
                         exectype,
                         description,
                         avgkcal30min,
                         exectargetmin,
                         suitablefor,
                         intensitylevel,
                         createdat,
                         updatedat) 
values ( 1,
        '산책',
        '가장 기본적인 야외 운동으로 스트레스 해소와 사회성 향상에 효과적입니다.',
        80.0,
        30,
        '모든 견종, 노령견 포함',
        '저강도',
        2025/11/3,
        2025/11/3);

insert into exerciseinfo ( execid,
                         exectype,
                         description,
                         avgkcal30min,
                         exectargetmin,
                         suitablefor,
                         intensitylevel,
                         createdat,
                         updatedat ) 
values(2, 
       '노즈워크', 
       '간식을 숨겨두고 냄새로 찾게 하는 놀이로, 정신 자극과 집중력 향상에 좋습니다.', 
       60.0,
       20, 
       '실내 생활견, 고양이도 가능',
       '저강도', 
       2025/11/03,
       2025/11/03);
       
insert into exerciseinfo 
values (3, 
       '수영', 
       '관절에 부담이 적고 전신 근육을 사용하는 고강도 운동입니다.', 
       120.0, 
       25, 
       '중형견 이상, 관절 약한 반려동물', 
       '고강도', 
       2025/11/04,
       2025/11/04);
       

update exerciseinfo set execid=6;

delete from execiseinfo;

select * from exerciseinfo;
commit;




-- 추천기능
create sequence recommend seq;

create table foodrecommend (
   userid  number foreign key references user(userid),
   foodid  number foreign key references food(foodid),
);
insert into foodrecommend ( userid, foodid ) 
values( 11 ,1234 );

update foodrecommend set userid=111;

delete from foodrecommend;


-- 즐겨찾기기능
create table favoritefood (
   userid  number   foreign key references  user(userid),
   foodid  number   foreign key references  food(foodid),
);

insert into favoritefood ( userid, foodid ) 
values( 11, 234);

update favoritefood set foodid=15;

delete from favoritefood;












