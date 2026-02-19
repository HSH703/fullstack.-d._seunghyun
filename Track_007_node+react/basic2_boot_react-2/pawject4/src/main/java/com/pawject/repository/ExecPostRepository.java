//package com.pawject.repository;
//
//import java.util.List;
//
//import org.springframework.data.jpa.repository.JpaRepository;
//import org.springframework.data.jpa.repository.Query;
//import org.springframework.data.repository.query.Param;
//import org.springframework.stereotype.Repository;
//
//import com.pawject.domain.ExecPost;
//
//import oracle.jdbc.proxy.annotation.Post;
// 
//
//@Repository  //★
//public interface ExecPostRepository extends JpaRepository<Post, Long> { //Entity , PK ★
//	// 해쉬태그 이름으로 게시글 검색 (글 쓰기후 검색확인)
//	List<ExecPost> findByHashtags_NameAndDeletedFalse(String name);
//
//	// 조회 :  삭제되지 않은 게시글 
//	List<ExecPost> findByDeletedFalse();
//	
//	// 전체게시글 조회 - Oracle 네이티브 페이징  
//	//org.springframework.data.jpa.repository.Query;
//	//org.springframework.data.repository.query.Param  ##
//    @Query(
//    	      value = "SELECT * FROM ( " +
//    	              "SELECT p.*, ROWNUM AS rnum " +
//    	              "FROM (SELECT * FROM POSTS WHERE DELETED = 0 ORDER BY CREATED_AT DESC) p " + 
//    	              ") " +
//    	              "WHERE rnum BETWEEN :start AND :end",
//    	      nativeQuery = true
//    	)  
//    List<ExecPost> findPostsWithPaging(@Param("start") int start, @Param("end") int end);  //  오타  ##
//    /////////////////////////////////
//    //List<Post>  findPostsWithPaging( @Param("start") int start, @Param("end") int end );
//}
// 
///*
//CREATE : save     -   INSERT INTO  테이블명 (컬럼1,컬럼2,,) values (?,?,,)
//READ   : findAll  -   SELECT  * from 테이블명  
//         findById -   SELECT  * from 테이블명   where id=? 
//UPDATE : save     -   update  테이블명   set 컬럼1=? ,컬럼2=?  where   id=? 
//DELETE : deleteById - delete from 테이블명   where id=?
//*/