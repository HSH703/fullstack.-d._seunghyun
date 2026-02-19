-- 테스트

-- =========================
-- CAT (pettypeid=1)
-- =========================

INSERT INTO PETDISEASE
(disno, adminid, pettypeid, disname, definition, cause, symptom, treatment, tip, CREATEDAT, UPDATEDAT)
VALUES
(petdisease_seq.NEXTVAL, 100, 1, '간부전',
'간이 75% 이상 손상되어 정상 기능을 하지 못하는 상태',
'간독성 약물 / 세균 감염(렙토스피라증) / 기존 간 질환',
'구토·설사 / 식욕저하 / 체중감소 / 황달 / 복부팽만',
'수액요법 / 영양공급(강제급여) / 약물(간보호·항구토 등)',
'DMB 기준 단백질 30~35%의 식단',
sysdate, sysdate);

INSERT INTO PETDISEASE
(disno, adminid, pettypeid, disname, definition, cause, symptom, treatment, tip, CREATEDAT, UPDATEDAT)
VALUES
(petdisease_seq.NEXTVAL, 100, 1, '간성뇌증',
'고양이 간성뇌증은 간이 암모니아를 해독하지 못해 뇌에 독소가 축적되어 신경계가 손상되는 질환이다.',
'선천적 간문맥단락증 / 만성 간질환 / 간부전 유발 요인(약물·감염 등)',
'식욕저하 / 정형행동 / 갈색뇨 / 구토·설사 / 발작',
'확진 즉시 입원 / 뇌압·발작 조절 / 암모니아 감소 치료 / 저단백 식이',
'DMB 기준 단백질 20~30%, 지방 20~25%의 식단',
sysdate, sysdate);

INSERT INTO PETDISEASE
(disno, adminid, pettypeid, disname, definition, cause, symptom, treatment, tip , CREATEDAT, UPDATEDAT)
VALUES
(petdisease_seq.NEXTVAL, 100, 1, '당뇨',
'인슐린이 분비되지 않거나 체내에서 제 기능을 하지 못해 혈당을 조절하지 못하는 질병이다.',
'인슐린 미분비(1형) / 인슐린 기능저하·저항성(2형)',
'다음·다뇨 / 체중·근육 감소 / 척행보행(신경 손상)',
'인슐린 주사 / 고단백·저탄수 식이 / 비만 예방',
'DMB 기준 단백질 28~55%, 지방 25% 이하의 식단',
sysdate, sysdate);

INSERT INTO PETDISEASE
(disno, adminid, pettypeid, disname, definition, cause, symptom, treatment, tip, CREATEDAT, UPDATEDAT)
VALUES
(petdisease_seq.NEXTVAL, 100, 1, '방광염',
'방광에 염증이 생기는 것을 말하며 대부분 의학적 원인을 알 수 없어 특발성 방광염이라고도 한다.',
'스트레스 / 방광벽 손상(염증 유발) / 외상·결석·감염 등',
'빈뇨·배뇨곤란 / 배뇨통 / 혈뇨 / 오버그루밍',
'스트레스 요인 제거 / 수분 섭취 / 약물 치료 / 소변 배출(요도카테터)',
'수분 섭취를 늘리고 나트륨 과다 섭취는 피하는 것',
sysdate, sysdate);

INSERT INTO PETDISEASE
(disno, adminid, pettypeid, disname, definition, cause, symptom, treatment, tip, CREATEDAT, UPDATEDAT)
VALUES
(petdisease_seq.NEXTVAL, 100, 1, '신부전(급성)',
'신부전은 신장 손상으로 노폐물 여과 기능을 상실하는 상태이며 급성 신부전은 감염·독극물 등으로 급격히 악화되는 형태를 말한다.',
'하부 요로계 증후군 / 신우신염(세균) / 독소 노출 / 소염진통제 / 기생충 감염 / 전염성 복막염',
'식욕저하 / 무기력증 / 구토·설사 / 구취(암모니아 유사) / 통증 / 발작 / 배뇨 변화(다뇨·배뇨곤란·무뇨)',
'수액 처치(항상성 유지) / 소변 배출(요도카테터) / 약물 치료(감염성 질병)',
'DMB 기준 단백질 28~35%, 칼륨 0.7~1.2%의 식단',
sysdate, sysdate);

INSERT INTO PETDISEASE
(disno, adminid, pettypeid, disname, definition, cause, symptom, treatment, tip, CREATEDAT, UPDATEDAT)
VALUES
(petdisease_seq.NEXTVAL, 100, 1, '신부전(만성)',
'신부전은 신장 손상으로 노폐물 여과 기능을 상실하는 상태이며 만성 신부전은 면역 매개 질환·선천성 질환 등으로 서서히 진행되는 형태를 말한다.',
'종양·암 / 바이러스 / 신우신염(만성) / 유전질환 / 면역 매개 질환 / 뇌졸중·고혈압 / 급성 신부전 / 기저질환',
'식욕부진 / 구토 / 탈수 / 다음다뇨 / 체중감소 / 구취·구강 궤양',
'약물 치료 / 수분 공급 / 처방식 / 혈액투석',
'DMB 기준 단백질 28~35%, 칼륨 0.7~1.2%의 식단',
sysdate, sysdate);

INSERT INTO PETDISEASE
(disno, adminid, pettypeid, disname, definition, cause, symptom, treatment, tip, CREATEDAT, UPDATEDAT)
VALUES
(petdisease_seq.NEXTVAL, 100, 1, '심부전',
'심장이 혈액순환이라는 제 기능을 못하는 상태를 통칭한다.',
'선천적 기형 / 노화 / 심장사상충 감염 / 비대성심근증(HCM)',
'개구호흡 / 식욕부진 / 기립 불능 / 보행 장애 / 극심한 통증',
'교정 수술(선천적) / 기저질환 관리 / 약물 치료 / 저나트륨 식이',
'DMB 기준 나트륨 0.175~0.75%의 식단',
sysdate, sysdate);

INSERT INTO PETDISEASE
(disno, adminid, pettypeid, disname, definition, cause, symptom, treatment, tip, CREATEDAT, UPDATEDAT)
VALUES
(petdisease_seq.NEXTVAL, 100, 1, '췌장염',
'췌장염은 췌장에 염증이 생기는 것으로 대부분 특별한 원인 없이 발생한다.',
'전염성 복막염 / 칼리시 바이러스 / 기생충·종양 / 염증성 장질환 / 외상 / 관류저하(마취)',
'기력·식욕 감소 / 구토·설사 / 체중감소 / 황달 / 탈수 / 다음다뇨 / 복통 / 쇼크',
'수액 / 항구토제 / 항생제·소염제 / 식이요법',
'DMB 기준 단백질 30~40%, 지방 25% 이하(비만일 경우 15% 이하)의 식단',
sysdate, sysdate);

INSERT INTO PETDISEASE
(disno, adminid, pettypeid, disname, definition, cause, symptom, treatment, tip, CREATEDAT, UPDATEDAT)
VALUES
(petdisease_seq.NEXTVAL, 100, 1, '지방간',
'개별 간세포가 50% 이상 지방으로 구성되면 지방간이라고 말한다.',
'영양 부족(식욕부진) / 간질환 / 비만',
'식욕부진 / 체중감소 / 황달 / 구토 / 설사·배변 장애 / 어두운 소변',
'영양 공급 / 비위관 / 수액 처치',
'DMB 기준 단백질 30~45%, 칼륨 0.8~1.0%의 식단',
sysdate, sysdate);

-- =========================
-- DOG (pettypeid=2)
-- =========================

INSERT INTO PETDISEASE
(disno, adminid, pettypeid, disname, definition, cause, symptom, treatment, tip, CREATEDAT, UPDATEDAT)
VALUES
(petdisease_seq.NEXTVAL, 100, 2, '간부전',
'간부전은 간 기능이 저하되는 상태이며 급성은 2주 이내 급격히 악화되고 회복 가능성이 있으나 만성은 장기간 진행돼 회복이 어렵다.',
'독극물 / 약물 / 감염 / 구리 축적 / 혈관 기형(간문맥 션트) / 종양',
'구토·설사 / 식욕부진 / 체중감소 / 복부 팽창·복수 / 황달 / 다음다뇨 / 간성뇌증·응고 이상',
'원인 교정(중독·감염·종양 등) / 수액·약물(대증치료) / 수술·항암 치료',
'DMB 기준 단백질 15~20%의 식단',
sysdate, sysdate);

INSERT INTO PETDISEASE
(disno, adminid, pettypeid, disname, definition, cause, symptom, treatment, tip, CREATEDAT, UPDATEDAT)
VALUES
(petdisease_seq.NEXTVAL, 100, 2, '방광염',
'방광염은 방광에 염증이 생긴 것을 말한다.',
'세균 감염 / 기저질환(당뇨·쿠싱 등) / 결석·종양·비정상적 구조',
'혈뇨 / 빈뇨 / 배뇨곤란 / 통증',
'항생제(세균) / 외과적 제거(결석·종양) / 항염증·진통 처치',
'수분 섭취를 늘리는 것',
sysdate, sysdate);

INSERT INTO PETDISEASE
(disno, adminid, pettypeid, disname, definition, cause, symptom, treatment, tip, CREATEDAT, UPDATEDAT)
VALUES
(petdisease_seq.NEXTVAL, 100, 2, '신부전(급성)',
'신장이 더 이상 제대로 기능하지 않을 때 발생하며 급성 신부전은 일반적으로 질병이 발생한지 2주 이하인 경우를 말한다.',
'신장 혈류 감소(탈수·출혈·쇼크 등) / 염증·감염(사구체신염·신우신염 등) / 요로 폐쇄 / 약물·독극물 / 감염병(렙토스피라 등)',
'급작스러운 침울 / 식욕부진 / 구토·설사 / 탈수 / 핍뇨·무뇨증 / 저체온 / 대사산증(빠른 맥박·호흡곤란)',
'수액 요법 / 약물 치료 / 혈액 투석',
'DMB 기준 단백질 14~20%, 칼륨 0.4~0.8%의 식단',
sysdate, sysdate);

INSERT INTO PETDISEASE
(disno, adminid, pettypeid, disname, definition, cause, symptom, treatment, tip, CREATEDAT, UPDATEDAT)
VALUES
(petdisease_seq.NEXTVAL, 100, 2, '신부전(만성)',
'신장이 더 이상 제대로 기능하지 않을 때 발생하며 일반적으로 질병이 발생한지 2주를 초과한 경우를 말한다.',
'세균 감염 / 만성 요로 폐쇄(부분 폐쇄) / 신장 독소 / 면역 질환 / 아밀로이드증 / 종양·염증',
'식욕부진 / 구토·설사 / 다음다갈 / 다뇨·야뇨증 / 체중감소 / 탈수 / 구취(암모니아 냄새) / 요독증 / 저체온 / 대사산증(호흡수 증가)',
'수액 요법 / 약물 치료 / 복막 투석 / 식이요법',
'DMB 기준 단백질 14~20%, 칼륨 0.4~0.8%의 식단',
sysdate, sysdate);

INSERT INTO PETDISEASE
(disno, adminid, pettypeid, disname, definition, cause, symptom, treatment, tip, CREATEDAT, UPDATEDAT)
VALUES
(petdisease_seq.NEXTVAL, 100, 2, '심근증',
'심장 근육 기능 장애로 심장에 문제를 일으키는 질병이며 질병 진행 양상에 따라 확장성, 비대성, 제한성으로 나뉜다.',
'유전질환(확장성)',
'가쁜 호흡·식욕저하(확장성) / 호흡곤란·기침·폐에 체액 축적(비대성) / 흉수·혈전·폐수종(제한성)',
'약물 치료(이뇨제·ACE 억제제) / 지속적 초음파 촬영',
'DMB 기준 나트륨 0.375~0.625%(초기), 0.2~0.375%(중증도 이상)의 식단',
sysdate, sysdate);

INSERT INTO PETDISEASE
(disno, adminid, pettypeid, disname, definition, cause, symptom, treatment, tip, CREATEDAT, UPDATEDAT)
VALUES
(petdisease_seq.NEXTVAL, 100, 2, '췌장염',
'췌장염은 췌장에 염증이 생기는 질병으로 췌장이 소화효소를 제대로 분비하지 못해 소화 기능이 떨어진다.',
'고지방 식이 / 약물(스테로이드) / 유전질환',
'구토·설사 / 식욕부진 / 복통 / 발열 / 발작·쇼크',
'수액 치료 / 혈장 수혈 / 초저지방 식이 / 약물 치료',
'DMB 기준 단백질 15~30%, 지방 15% 이하(비만일 경우 10% 이하)의 식단',
sysdate, sysdate);

INSERT INTO PETDISEASE
(disno, adminid, pettypeid, disname, definition, cause, symptom, treatment, tip, CREATEDAT, UPDATEDAT)
VALUES
(petdisease_seq.NEXTVAL, 100, 2, '위염',
'위벽 점막에 염증이 발생하는 질병으로 원인에 따라 급성 위염과 만성 위염으로 구분된다.',
'이물·부패한 음식·과식(급성) / 기저질환·헬리코박터균·만성 요독증·알레르기(만성)',
'구토·설사 / 혈변 / 발열 / 탈수',
'절수·금식(급성) / 수액 치료 / 시술(이물 제거)',
'DMB 기준 지방 12~15%의 식단',
sysdate, sysdate);






















select * from users;

-- 1단계: NULL 허용으로 컬럼 추가
ALTER TABLE users ADD role VARCHAR2(50 CHAR);

-- 2단계: 기존 데이터 채우기
UPDATE users SET role = 'USER';
UPDATE users SET role = 'ADMIN' where email='5@5';

-- 3단계: NOT NULL 제약 추가
ALTER TABLE users MODIFY role NOT NULL;




desc execsns;
DELETE FROM images WHERE post_id NOT IN (SELECT post_id FROM execsns);
COMMIT;
desc execinfo;
drop table execinfo;
drop table walkingcourse;

commit;


-- 1. 임시 컬럼 추가
ALTER TABLE execsns ADD econtent_tmp CLOB;

-- 2. 데이터 복사
UPDATE execsns SET econtent_tmp = econtent;

-- 3. 기존 컬럼 삭제
ALTER TABLE execsns DROP COLUMN econtent;

-- 4. 컬럼명 변경
ALTER TABLE execsns RENAME COLUMN econtent_tmp TO econtent;




-- 1단계: NULL 허용으로 컬럼 추가
ALTER TABLE users ADD role VARCHAR2(50 CHAR);

-- 2단계: 기존 데이터 채우기
UPDATE users SET role = 'USER';

-- 3단계: NOT NULL 제약 추가
ALTER TABLE users MODIFY role NOT NULL;




-- EXECSNS 관련 구문

select * from execsns where postid='1';


-- 댓글기능 (본인 파트 테이블에 맞게 변경하기.)
-- COMMENTS 테이블 생성 (Oracle)
-- CREATE
create table comments (
    cid                 number(19)         primary key,   -- 댓글 기본키
    comment             clob               not null,      -- 댓글
    userid              number(19)         not null,      -- 사용자아이디(외래키)
    postid              number(19)         not null,      -- 게시글아이디(외래키)
    commentid           number(19),        null           -- 대댓글아이디(외래키)
    commentcreatedat    date               default sysdate not null,  -- 댓글등록일
    commentupdatedat    date               default sysdate            -- 댓글수정일
);

-- 제약조건 정의 (PK / FK)
-- Primary Key
--alter table comments
--add constraint comments_pk
--primary key (cid);

-- FK – 사용자 참조
alter table comments
add constraint comments_fk_users
foreign key (userid)
references users (userid);


-- FK – 게시글 참조
alter table comments
add constraint comments_fk_execsns
foreign key (postid)
references execsns (postid);

-- FK – 대댓글 (자기 자신 참조)
alter table comments
add constraint comments_fk_parent
foreign key (commentid)
references comments (cid);

-- 시퀀스 생성 (cid 자동 증가)
create sequence comments_seq;
--START WITH 1
--INCREMENT BY 1
--NOCACHE;

-- INSERT
-- 1. 일반 댓글 (부모 댓글)
insert into comments (
    cid,
    comment,
    userid,
    postid,
    commentid
) values (
    comments_seq.nextval,
    '첫 번째 댓글입니다.',
    1,          -- 사용자 ID
    1,          -- 게시글 ID
    NULL       -- 부모 댓글 없음
);

-- 2. 대댓글 (부모댓글의 1번째 대댓글)
insert into comments (
    cid,
    comment,
    userid,
    postid,
    commentid
) VALUES (
    comments_seq.nextval,
    '첫 번째 댓글에 대한 대댓글입니다.',
    2,          -- 다른 사용자
    1,          -- 동일 게시글
    1          -- 부모 댓글 cid
);

-- 3. 또 다른 대댓글(부모댓글의 2번째 대댓글)
INSERT INTO COMMENTS (
    cid,
    comment,
    userid,
    postid,
    commentid
) VALUES (
    comments_seq.nextval,
    '저도 이 댓글에 답글 남겨요.',
    3,
    1,
    1
);
-- SELECT
-- ① 특정 게시글의 댓글 + 대댓글 조회 (부모 → 자식 순서)
SELECT
    LEVEL                         AS depth,
    c.cid,
    c.comment,
    c.userid,
    c.postid,
    c.commentid,
    c.commentcreatedat,
    c.commentupdatedat
FROM comments c
WHERE c.postid = 100
START WITH c.commentid IS NULL
CONNECT BY PRIOR c.cid = c.commentid
ORDER SIBLINGS BY c.commentcreatedat;

-- 운동 추천 AI 파트
-- select postid from execsns where etitle LIKE '%ai가 준키워드%'	 ← 이런식으로 select 구문 다시 조정하기.
SELECT title, exercise_name
FROM sns_table
WHERE title LIKE '%' || :keyword || '%'
ORDER BY created_at DESC
FETCH FIRST 20 ROWS ONLY;


-- UPDATE
-- ② (실무형) 작성자 본인만 수정 가능하게
UPDATE comments
SET
    comment = '본인만 수정 가능한 댓글입니다.',
    commentupdatedat = SYSDATE
WHERE cid = 1
  AND userid = 10;

-- DELETE (① VS ② )
-- ① 특정 댓글 + 모든 하위 대댓글 삭제
DELETE FROM comments
WHERE cid IN (
    SELECT cid
    FROM comments
    START WITH cid = 10
    CONNECT BY PRIOR cid = commentid
);
--동작 방식
--START WITH cid = 10 → 기준 댓글
--CONNECT BY PRIOR cid = commentid → 대댓글 트리 탐색
--부모 + 자식(대댓글) 모두 선택
--해당 결과만 DELETE


-- ② 논리 삭제 (대댓글이 있을때 추천/실무에서 가장 많이 사용)
UPDATE comments
SET
    comment = '[삭제된 댓글입니다.]',
    commentupdatedat = SYSDATE
WHERE cid = 1;
--이유
--대댓글 유지 가능
--댓글 트리 구조 유지



-----------------------------------------------------------------
-- SELECT (선택해서 사용)
-- ① 특정 게시글의 댓글 + 대댓글 조회 (부모 → 자식 순서)
SELECT
    LEVEL                         AS depth,
    c.cid,
    c.comment,
    c.userid,
    c.postid,
    c.commentid,
    c.commentcreatedat,
    c.commentupdatedat
FROM comments c
WHERE c.postid = 100
START WITH c.commentid IS NULL
CONNECT BY PRIOR c.cid = c.commentid
ORDER SIBLINGS BY c.commentcreatedat;


-- ② 특정 댓글 1건 조회
SELECT
    cid,
    comment,
    userid,
    postid,
    commentcreatedat,
    commentupdatedat
FROM comments
WHERE cid = 1;


-- ③ 특정 사용자가 작성한 댓글 목록
SELECT
    cid,
    comment,
    postid,
    commentcreatedat
FROM comments
WHERE userid = 10
ORDER BY commentcreatedat DESC;

-- ④ 특정 댓글의 대댓글만 조회
SELECT
    cid,
    comment,
    userid,
    commentcreatedat
FROM comments
WHERE commentid = 1
ORDER BY commentcreatedat;


-- UPDATE
-- ① 댓글 내용 수정
UPDATE comments
SET
    comment = '댓글 내용을 수정했습니다.',
    commentupdatedat = SYSDATE
WHERE cid = 1;



-- DELETE
-- ① 물리 삭제 (대댓글이 없는 경우)
DELETE FROM comments
WHERE cid = 3;


-- ② 대댓글이 없는지 확인 후 삭제(대댓글이 없는 경우에만 삭제)
DELETE FROM comments
WHERE cid = 3
  AND NOT EXISTS (
      SELECT 1
      FROM comments c2
      WHERE c2.commentid = 3
  );

-- ③ 논리 삭제 (대댓글이 있을때 추천/실무에서 가장 많이 사용)
UPDATE comments
SET
    comment = '[삭제된 댓글입니다.]',
    commentupdatedat = SYSDATE
WHERE cid = 1;
--이유
--대댓글 유지 가능
--댓글 트리 구조 유지

-- ④ 게시글 기준 댓글 전체 삭제 (관리자용)
DELETE FROM comments
WHERE postid = 100;
-----------------------------------------------------------------



-- 운동정보기능()  -- 필요 없음.X
--INFOSEARCH
--- KEYWORD            -- 입력 키워드
--- TITLE              -- 기준 제목
--- AI_REASON          -- AI가 추천한 이유
--- EXERCISE_NAME      -- 추천 운동명
--create table execinfosearch(
--    infoid        int           primary key,     -- 운동정보검색기본키
--    keyword       varchar2(50)  not null,        -- 입력 키워드
--    infotitle     varchar2(50)  not null,        -- SNS 기준 제목
--    aireason      varchar2(100) not null,        -- AI가 추천한 이유
--    execname      varchar2(50)  not null         -- 추천 운동명
--);

SELECT postid
FROM execsns
WHERE etitle LIKE '%' || :keyword || '%';






-- 날씨정보기능 

-- 산책코스 추천 기능(crud)

-- 챌린지




-- 최종


