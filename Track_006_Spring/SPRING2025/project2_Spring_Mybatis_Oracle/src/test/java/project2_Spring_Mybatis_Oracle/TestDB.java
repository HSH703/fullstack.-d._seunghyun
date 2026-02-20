package project2_Spring_Mybatis_Oracle;
//import 주의!!

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.context.ApplicationContext;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.mock.web.*; //## 가짜이미지파일

import com.thejoeun703.dao.AppUserMapper;
import com.thejoeun703.dto.AppUser;
import com.thejoeun703.service.AppUserSecurityService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:config/root-context.xml" , "classpath:config/security-context.xml"})
public class TestDB {
	@Autowired ApplicationContext context;
	@Autowired DataSource ds;
	@Autowired SqlSession sqlSession;
	@Autowired AppUserMapper dao;
	@Autowired PasswordEncoder  pwencoder;  //import org.springframework.security.crypto.password.PasswordEncoder;
	@Autowired AppUserSecurityService service;
	
	
	@Test public void test5() {
		//////////////////// select
		System.out.println(service.readAuth("2@2"));
		
		//////////////////// select
//		System.out.println  ( service.selectEmail("2@2") );

//		//////////////////// delete
//		AppUser dto = new AppUser(); 
//		dto.setAppUserId(186);  dto.setPassword("2"); dto.setEmail("2@2");
//	  //있는번호                   비밀번호                     이메일
//		System.out.println(service.delete(dto));

		//////////////////// update
//		AppUser dto = new AppUser(); 
//		dto.setMbtiTypeId(1);  dto.setUfile("1.png");
//		dto.setMobile("2222"); dto.setNickname("nickname2");
//		dto.setPassword("2"); dto.setEmail("2@2");
//	  //import org.springframework.mock.web.*;  가짜이미지파일
//		MockMultipartFile file = new MockMultipartFile("file2","file2.txt","text.plain","".getBytes() );
//		dto.setAppUserId(186);
//		System.out.println(service.update(file,dto));
		
		//////////////////// insert
//		AppUser dto = new AppUser(); 
//		dto.setEmail("2@2"); dto.setPassword("2"); 
//		dto.setMbtiTypeId(1); dto.setUfile("1.png");
//		dto.setMobile("111111"); dto.setNickname("nickname");
//		MockMultipartFile file = new MockMultipartFile("file","file.txt","text.plain","".getBytes() );
//		System.out.println(service.insert(file,dto));
		////////////////////		
	}
	
	@Ignore public void test4() {
		//////////////////// readAuth
//		AppUser dto = new AppUser();
//		dto.setEmail("1@1");
//		System.out.println(dao.readAuth(dto));
	
		//////////////////// selectPassword
//		AppUser dto = new AppUser();
//		dto.setEmail("1@1");
//		System.out.println(dao.selectPassword(dto));
		
		//////////////////// select
//		AppUser dto = new AppUser();
//		dto.setEmail("1@1");
//		System.out.println  ( dao.select(dto) );
		
		//////////////////// delete
//		AppUser dto = new AppUser(); 
//		dto.setAppUserId(170); //## 있는번호
//		System.out.println(dao.delete(dto));
		
		//////////////////// update
//		AppUser dto = new AppUser();
//		dto.setMbtiTypeId(2); dto.setUfile("2.png");
//		dto.setMobile("2222"); dto.setNickname("nickname2");
//		dto.setAppUserId(168); //##있는번호
//		System.out.println(dao.update(dto));
		
		//////////////////// insert
//		AppUser dto = new AppUser(); 
//		dto.setEmail("1@1"); dto.setPassword( pwencoder.encode("1") ); 
//		dto.setMbtiTypeId(1); dto.setUfile("1.png");
//		dto.setMobile("111111"); dto.setNickname("nickname");
//		System.out.println(dao.insert(dto));
		////////////////////  (실행시 select(All) 할때만 표형식으로 나옴)
							//( ㄴinsert, update, delete때에는 표대신 1(성공), 0(실패)이 나와야함)
	}
	
	@Ignore public void test1() { System.out.println(context); }
	@Ignore public void test2() { System.out.println(ds); }
	@Ignore public void test3() { System.out.println(sqlSession); }

}
