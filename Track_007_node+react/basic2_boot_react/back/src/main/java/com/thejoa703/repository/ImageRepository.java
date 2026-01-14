package com.thejoa703.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.thejoa703.entity.Image;

// CRUD가 이미 들어가 있기 때문에 손 댈것이 없으면 작성을 안해도 됨.
@Repository //★
public interface ImageRepository extends JpaRepository<Image, Long> { // Entity, PK(자료형 & 뭘(Id ,,,) 만들었는지 주의!!) 입력

}
/*
CREATE  : save(CREATE/INSERT)     - INSERT INTO 테이블명 (컬럼1, 컬럼2,,,) values (?,?,,,,)
READ    : findAll  - SELECT * from 테이블명 (전체조회)
          findById - SELECT * from 테이블명 where id=? ( 단건 조회 )
UPDATE  : save     - update 테이블명 set 컬럼1=? , 컬럼2=? where id=?
DELETE  : delete   - delete from 테이블명 where id=?

*/
