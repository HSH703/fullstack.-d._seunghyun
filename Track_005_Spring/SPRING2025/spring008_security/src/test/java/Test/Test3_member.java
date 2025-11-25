package Test;

import javax.sql.DataSource;
import org.apache.ibatis.session.SqlSession;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.ApplicationContext;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import com.thejoeun703.dao.AppUserDao;
import com.thejoeun703.dto.AppUserAuthDto;
import com.thejoeun703.dto.AppUserDto;
import com.thejoeun703.dto.AuthDto;
import com.thejoeun703.service.AppUserService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:config/root-context.xml", "classpath:config/security-context.xml"})
public class Test3_member {
	@Autowired ApplicationContext context;
	@Autowired DataSource ds;
	@Autowired SqlSession session;
	@Autowired AppUserDao dao;
	@Autowired AppUserService service;
	@Autowired @Qualifier("PasswordEncoder")  PasswordEncoder pswencoder;
	
	@Test public void test9() {
		//4. 유저읽어오기
		AppUserAuthDto rdto = new AppUserAuthDto();
		rdto.setEmail("2@2");
		System.out.println(dao.readAuth(rdto));
		
		//3. 권한멤버	 1@1 ROLE_ADMIN, ROLE_MEMBER / 2@2  ROLE_MEMBER / 3@3  ROLE_MEMBER
//		AuthDto adto = new AuthDto();
//		adto.setEmail("1@1"); adto.setAuth("ROLE_ADMIN");
//		adto.setEmail("3@3"); adto.setAuth("ROLE_MEMBER");
//		System.out.println(dao.insertAuth(adto));
		
		//2. 회원가입 1@1  1 / 2@2  2 / 3@3  3 (암호화)
//		AppUserDto dto = new AppUserDto();
//		dto.setEmail("3@3"); dto.setPassword(pswencoder.encode("3")); dto.setMbtiTypeId(1);
//		System.out.println("2. " + service.insert(dto));
		
		//1. 전체
//		System.out.println(dao.selectAll());
	}

	
	
	
	
	@Ignore  public void test1() {System.out.println(context);}
	@Ignore  public void test2() {System.out.println(ds);}
	@Ignore  public void test3() {System.out.println(session);}
	@Ignore	 public void test4()  {
		//6. delete
//		AppUserDto dto = new AppUserDto();
//		dto.setPassword("1"); dto.setAppUserId(83);
//		System.out.println("6. " + dao.delete(dto));
		
		//5. update
//		AppUserDto dto = new AppUserDto();
//		dto.setAppUserId(83);  dto.setMbtiTypeId(2); dto.setPassword("1"); 
//		System.out.println("5. " + dao.update(dto));

		//4. selectLogin
//		AppUserDto dto = new AppUserDto();
//		dto.setEmail("b@b"); dto.setPassword("1111"); 
//		System.out.println("4. " + dao.selectLogin(dto));
		
		//3. select
//		System.out.println("3. " + dao.select(103));
		
		//2. insert
//		AppUserDto dto = new AppUserDto();
//		dto.setEmail("b@b");  dto.setPassword("1111"); dto.setMbtiTypeId(1);
//		insert into appuser (APP_USER_ID , EMAIL, PASSWORD, MBTI_TYPE_ID)  
//		values (appuser_seq.nextval, 'a@a' , '1111',1);
//		System.out.println("2. " + dao.insert(dto));
		
		//1. selectAll
//		System.out.println("1." + dao.selectAll());
	}

	@Ignore	 public void test5()  {
		//6. delete
//		AppUserDto dto = new AppUserDto();
//		dto.setPassword("1111"); dto.setAppUserId(105);
//		System.out.println("6. " + service.delete(dto));
		
		//5. update
//		AppUserDto dto = new AppUserDto();
//		dto.setAppUserId(105);  dto.setMbtiTypeId(1); dto.setPassword("1111"); 
//		System.out.println("5. " + service.update(dto));

		//4. selectLogin
//		AppUserDto dto = new AppUserDto();
//		dto.setEmail("c@c"); dto.setPassword("1111"); 
//		System.out.println("4. " + service.selectLogin(dto));
		
		//3. select
//		System.out.println("3. " + dao.select(105));
		
		//2. insert
//		AppUserDto dto = new AppUserDto();
//		dto.setEmail("c@c");  dto.setPassword("1111"); dto.setMbtiTypeId(1);
//		System.out.println("2. " + service.insert(dto));
		
		//1. selectAll
//		System.out.println("1." + service.selectAll());
	}
	@Ignore public void test6() {
//		System.out.println(dao.iddouble("5@5")); //코드가 있으면? 1
//		System.out.println(dao.iddouble("9@9")); //코드가 없으면? 0
	}
	@Ignore public void test7() {
		//4. 삭제
//		AppUserDto dto = new AppUserDto(); dto.setAppUserId(119);
//		System.out.println(dao.deleteAdimin(dto));
		//3. 해당유저값 확인
//		System.out.println(dao.select(119));
		//2. 수정
//		AppUserDto dto = new AppUserDto();
//		dto.setMbtiTypeId(3); dto.setAppUserId(119);
//		System.out.println(dao.updateAdimin(dto));
		//1. 전체
//		System.out.println(dao.selectAll()); 
	}
	@Ignore public void test8() {
//		AppUserDto dto = new AppUserDto();
//		System.out.println(service.deleteAdimin(dto)); 
//		System.out.println(service.updateAdimin(dto)); 
	}
		
}









