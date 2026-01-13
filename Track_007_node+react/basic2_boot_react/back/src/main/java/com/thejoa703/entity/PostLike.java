package com.thejoa703.entity;

import java.time.LocalDateTime;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.PrePersist;
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Table;
import jakarta.persistence.UniqueConstraint;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity    
@Table(name= "POST_LIKES" , 
	uniqueConstraints = @UniqueConstraint(
		      columnNames = {"APP_USER_ID" , "POST_ID"}
	) //UNIQUE
)
@Getter  @Setter  @NoArgsConstructor
public class PostLike {
   @Id
   @GeneratedValue(strategy = GenerationType.SEQUENCE , generator = "post_like_seq")  //시퀀스 사용
   @SequenceGenerator(name = "post_like_seq", sequenceName = "POST_LIKE_SEQ" , allocationSize = 1) 
   private Long id; //PK
   
   @Column(nullable = false , name="CREATED_AT")
   private LocalDateTime createdAt; // 생성일시
   
   @ManyToOne
   @JoinColumn( name="APP_USER_ID" , nullable = false)
   private AppUser user; // 리트윅한 사람(리트윗시점)

   @ManyToOne
   @JoinColumn( name="POST_ID" , nullable = false)
   private Post post;   // 원본 게시글
   

   @PrePersist
   void onCreate() {
      this.createdAt = LocalDateTime.now();
   }


   public PostLike(AppUser user, Post post) {
	super();
	this.user = user;
	this.post = post;
   }
   
}

/*  
    usingField
	1번유저	1번글
	2번유저	1번글
*/

