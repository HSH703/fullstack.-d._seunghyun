package com.thejoa703.repository;

import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.thejoa703.entity.AppUser;


@Repository //★
public interface AppUserRepository extends JpaRepository<AppUser, Long> { // Entity, PK(자료형 & 뭘(Id ,,,) 만들었는지 주의!!) 입력
	// email + provider로 사용자 조회 - Optional: 하나의 자료형으로 처리
	Optional<AppUser> findByEmailAndProvider( String email, String provider );
	Optional<AppUser> findByEmail(String email);  // 이메일로 겁색
	
	// oracle_11_ver. 이므로 count 인식 안될수도 있기 때문에 count 별도로 작성
	//닉네임 중복 체크
	long countByNickname(String nickname);
	default boolean existsByNickname(String nickname) {
		return countByNickname(nickname)>0;
	}
	
	//이메일 중복 체크
	long countByEmail(   String email   );
	default boolean existsByEmail(String email) {
		return countByEmail(email)>0;
	}

}
/*
CREATE  : save(CREATE/INSERT)     - INSERT INTO appuser (컬럼1, 컬럼2,,,) values (?,?,,,,)
READ    : findAll  - SELECT * from appuser (전체조회)
          findById - SELECT * from appuwer where id=? ( 단건 조회 / 사용자조회 )
UPDATE  : save     - update appuser set 컬럼1=? , 컬럼2=? where id=?
DELETE  : delete   - delete from appuser where id=?

         사용자      관리자
CREATE   ◎회원가입    ◎회원가입
READ     로그인, 이메일중복, 닉네임중복 
UPDATE   ◎닉네임수정, ◎이미지수정
DELETE   ◎회원탈퇴

*/
