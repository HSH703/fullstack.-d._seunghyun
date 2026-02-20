//package com.pawject;
//
//import static org.assertj.core.api.Assertions.assertThat;
//
//import java.util.List;
//import java.util.Optional;
//import java.util.UUID;
//
//import org.junit.jupiter.api.BeforeEach;
//import org.junit.jupiter.api.DisplayName;
//import org.junit.jupiter.api.Test;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.boot.test.context.SpringBootTest;
//import org.springframework.transaction.annotation.Transactional;
//
//import com.pawject.domain.ExecComment;
//import com.pawject.domain.ExecImage;
//import com.pawject.domain.User;
//import com.pawject.repository.ExecCommentRepository;
//import com.pawject.repository.ExecImageRepository;
//import com.pawject.repository.UserRepository;
//
///**
// * Repository CRUD 통합테스트
// * 순서 : AppUser →
//*/
//@SpringBootTest
//@Transactional  // org.springframework.transaction.annotation.Transactional
//class Pawject4ApplicationTests_Exec_Respository_1 {
//	
//	@Autowired private UserRepository          userRepository;
//	@Autowired private ExecImageRepository     execImageRepository;
//	@Autowired private ExecCommentRepository   execCommentRepository;
//	//테스트 공통 데이터
//	private User user1;
//	private User user2;
//	//private Post post;
//	
//	/**
//	 * 공통 준비 : 사용자 2명 생성
//	 */
//    @BeforeEach
//    void setup() {
//        String email1 = "user1_" + UUID.randomUUID() + "@test.com";
//        String email2 = "user2_" + UUID.randomUUID() + "@test.com";
//
//        user1 = new User();
//        user1.setEmail(email1);
//        user1.setPassword("pass123");
//        user1.setNickname("user1");
//        user1.setProvider("local");
//
//        user2 = new User();
//        user2.setEmail(email2);
//        user2.setPassword("pass123");
//        user2.setNickname("user2");
//        user2.setProvider("local");
//
//        userRepository.save(user1);
//        userRepository.save(user2);
//    }
//    // ---------------------------------------------------------------------
//    // CommentRepository - 특정게시글의 삭제되지 않은 댓글 목록 조회 /삭제되지 않은 댓글 수 집계????
//    // ---------------------------------------------------------------------
//	@Test
//	@DisplayName("■ CommentRepository-CRUD ")
//	void testCommentRepository() {
//		// 댓글 생성
//		ExecComment comment = new ExecComment();	
//		comment.setContent("테스트 댓글"); 
//		comment.setUser(user2);
//		//comment.setPost(post);
//		comment.setDeleted(false);
//		execCommentRepository.save(comment);
//		
//		// 특정게시글의 삭제되지 않은 댓글 목록 조회
////		List<Comment>  comments = execCommentRepository.findByPostIdAndDeletedFalse(post.getId());
////		assertThat(comments).hasSize(1);
//		
//		// 댓글 수정
//		comment.setContent("수정된 댓글");
//		execCommentRepository.save(comment);
//		assertThat(  execCommentRepository.findById( comment.getId() ).get().getContent()  ).isEqualTo("수정된 댓글");
//		
//		// soft delete 처리 댓글 삭제 - 삭제되지 않은 댓글 수 집계
////		comment.setDeleted(true);
////		execCommentRepository.save(comment);
////		assertThat(  execCommentRepository.countByPostIdAndDeletedFalse(post.getId())  ).isEqualTo(0L);
//
//	}
//
//    
//    
//    
//    
//    
//
//    // ---------------------------------------------------------------------
//    // CommentRepository_1 - 댓글 저장 및 조회
//    // ---------------------------------------------------------------------
////    @Test
////    @DisplayName("■ ExecCommentRepository_1-CRUD ")
////    void testCommentRepository() {
////        ExecComment comment = new ExecComment();
////        comment.setContent("SpringBootTest 댓글입니다.");
////        comment.setUser(user1);
////
////        ExecComment saved = execCommentRepository.save(comment);
////
////        assertThat(saved.getId()).isNotNull();
////        assertThat(saved.getContent()).isEqualTo("SpringBootTest 댓글입니다.");
////        assertThat(saved.getUser().getUserId()).isEqualTo(user1.getUserId());
////    }
//
//    // ---------------------------------------------------------------------
//    // CommentRepository_2 - 삭제되지 않은 댓글 조회 테스트
//    // ---------------------------------------------------------------------
////    @Test
////    @DisplayName("■ ExecCommentRepository_2-CRUD ")
////    void testFindByDeletedFalse() {
////        ExecComment comment1 = new ExecComment();
////        comment1.setContent("첫 번째 댓글");
////        comment1.setUser(user2);
////        comment1.setDeleted(false);
////
////        ExecComment comment2 = new ExecComment();
////        comment2.setContent("삭제된 댓글");
////        comment2.setUser(user2);
////        comment2.setDeleted(true);
////
////        execCommentRepository.save(comment1);
////        execCommentRepository.save(comment2);
////
////        List<ExecComment> activeComments = execCommentRepository.findByDeletedFalse();
////
////        assertThat(activeComments).hasSize(1);
////        assertThat(activeComments.get(0).getContent()).isEqualTo("첫 번째 댓글");
////    }
//
//	
//	
//
//}
//
///*
//          사용자      관리자
//CREATE    ◎회원가입    ◎회원가입
//READ      로그인, 이메일중복, 닉네임중복 
//UPDATE    ◎닉네임수정, ◎이미지수정
//DELETE    ◎회원탈퇴
//*/
//
//
