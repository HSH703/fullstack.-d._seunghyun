-- 테스트
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


