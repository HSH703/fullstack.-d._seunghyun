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
@Table(name= "RETWEETS" , 
	uniqueConstraints = @UniqueConstraint(
		      name="UK_RETWEET_USER_ORIG" ,   
		      columnNames = {"APP_USER_ID" , "ORIGINAL_POST_ID"}
	) //UNIQUE
)
@Getter  @Setter  @NoArgsConstructor
public class Retweet {
   @Id
   @GeneratedValue(strategy = GenerationType.SEQUENCE , generator = "retweet_seq")  //시퀀스 사용
   @SequenceGenerator(name = "retweet_seq", sequenceName = "RETWEET_SEQ" , allocationSize = 1) 
   private Long id; //PK
   
   @Column(nullable = false , name="CREATED_AT")
   private LocalDateTime createdAt; // 생성일시
   
   @ManyToOne
   @JoinColumn( name="APP_USER_ID" , nullable = false)
   private AppUser user; // 리트윅한 사람(리트윗시점)

   @ManyToOne
   @JoinColumn( name="ORIGINAL_POST_ID" , nullable = false)
   private Post originalPost;   // 원본 게시글
   

   @PrePersist
   void onCreate() {
      this.createdAt = LocalDateTime.now();
   }


   public Retweet(AppUser user, Post originalPost) {
	super();
	this.user = user;
	this.originalPost = originalPost;
   }
   
}

/*  
    usingField
	1번유저	1번글
	2번유저	1번글
*/

