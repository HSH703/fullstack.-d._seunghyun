package Ex005;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.thejoeun703.dao.AppUserDao;
import com.thejoeun703.dto.AppUserDto;
import com.thejoeun703.service.AppUserService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:config/root-context.xml")
public class Test_Board {
	@Autowired ApplicationContext context;
	@Autowired DataSource ds;
	@Autowired SqlSession session;
	@Autowired AppUserDao dao;
	@Autowired AppUserService service;
	
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

	@Test	 public void test5()  {
		//6. delete
//		AppUserDto dto = new AppUserDto();
//		dto.setPassword("1"); dto.setAppUserId(83);
//		System.out.println("6. " + service.delete(dto));
		
		//5. update
//		AppUserDto dto = new AppUserDto();
//		dto.setAppUserId(83);  dto.setMbtiTypeId(2); dto.setPassword("1"); 
//		System.out.println("5. " + service.update(dto));

		//4. selectLogin
//		AppUserDto dto = new AppUserDto();
//		dto.setEmail("b@b"); dto.setPassword("1111"); 
//		System.out.println("4. " + service.selectLogin(dto));
		
		//3. select
//		System.out.println("3. " + dao.select(103));
		
		//2. insert
//		AppUserDto dto = new AppUserDto();
//		dto.setEmail("b@b");  dto.setPassword("1111"); dto.setMbtiTypeId(1);
//		insert into appuser (APP_USER_ID , EMAIL, PASSWORD, MBTI_TYPE_ID)  
//		values (appuser_seq.nextval, 'a@a' , '1111',1);
//		System.out.println("2. " + service.insert(dto));
		
		//1. selectAll
		System.out.println("1." + service.selectAll());
	}
}
