//package com.pawject;
//
//import static org.assertj.core.api.Assertions.assertThat;
//
//import java.util.List;
//
//import org.junit.jupiter.api.DisplayName;
//import org.junit.jupiter.api.Test;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.boot.test.context.SpringBootTest;
//import org.springframework.transaction.annotation.Transactional;
//
//import com.pawject.domain.ExecComment;
//import com.pawject.domain.ExecImage;
//import com.pawject.dto.exec.ExecsmartDto;
//import com.pawject.repository.ExecCommentRepository;
//import com.pawject.repository.ExecImageRepository;
//
//@SpringBootTest
//@Transactional
//class Pawject4ApplicationTests_Exec_Respository_2 {
//
//    @Autowired
//    private ExecCommentRepository execCommentRepository;
//
//    @Autowired
//    private ExecImageRepository execImageRepository;
//
//    @Test
//    @DisplayName("ExecsmartDto를 구성하기 위해 댓글과 이미지를 조회한다")
//    void testFindCommentsAndImagesByPostId() {
//        // given
//        int postId = 1; // 테스트용 게시글 ID (DB에 존재하는 값으로 맞춰야 함)
//
//        // when
//        List<ExecComment> comments = execCommentRepository.findByPost_Postid(postId);
//        List<ExecImage> images   = execImageRepository.findByPost_Postid(postId);
//
//        // ExecsmartDto를 직접 생성 (Repository는 따로 만들지 않음)
//        ExecsmartDto dto = new ExecsmartDto();
//        dto.setPostid(postId);
//        dto.setComments(comments);
//        dto.setImages(images);
//
//        // then
//        assertThat(dto.getComments()).isNotNull();
//        assertThat(dto.getImages()).isNotNull();
//
//        // 필요하다면 사이즈 검증
//        System.out.println("댓글 개수: " + dto.getComments().size());
//        System.out.println("이미지 개수: " + dto.getImages().size());
//    }
//}