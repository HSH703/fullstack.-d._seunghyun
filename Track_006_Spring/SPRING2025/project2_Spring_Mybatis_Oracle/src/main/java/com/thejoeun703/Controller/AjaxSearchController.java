package com.thejoeun703.Controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.thejoeun703.dto.AppUserDto;
import com.thejoeun703.service.AppUserService;

//@Controller     처리 (service) + 화면
@RestController //처리(service) + 나온값 
public class AjaxSearchController {
	
	@Autowired AppUserService service;	
	
	//http://localhost:8282/project2_Spring_Mybatis_Oracle/iddouble?email=5@5
	@RequestMapping("/iddouble")
	public Map<String, Object> iddouble(@RequestParam String email){
		Map<String, Object> result = new HashMap<>();
		result.put("cnt", service.iddouble(email));
		return result;
	}
	//////////////////////////////////////////
	//http://localhost:8282/EX005_member/selectAll   appUserId 번호확인
	/* admin 유저관리 - 전체유저정보 selectAll
	 * 				/ 아이디주면 해당 유저정보찾기 select 
	 * 				/ 수정하기 updateAdimin
	 * 				/ 삭제하기 deleteAdimin */
	@RequestMapping("/selectAll")
	public List<AppUserDto> selectAll(){
		return service.selectAll();
	}
	//http://localhost:8282/EX005_member/select?appUserId=121
	@RequestMapping("/select")
	public Map<String, Object> select(@RequestParam int appUserId){
		Map<String, Object> result = new HashMap<>();
		result.put("result", service.select(appUserId));
		return result;
	}
	/////////////////////////////////////////////////////
	//http://localhost:8282/EX005_member/updateAdmin?appUserId=121&mbtiTypeId=3
	@RequestMapping("/updateAdmin")
	public Map<String, Object> updateAdmin(@RequestParam int appUserId,
										   @RequestParam int mbtiTypeId){
		Map<String, Object> result = new HashMap<>();
		AppUserDto dto = new AppUserDto();
		dto.setAppUserId(appUserId); dto.setMbtiTypeId(mbtiTypeId);
		result.put("result", service.updateAdimin(dto));
		return result;
	}
	//http://localhost:8282/EX005_member/deleteAdmin?appUserId=121
	@RequestMapping("/deleteAdmin")
	public Map<String, Object> deleteAdmin(@RequestParam int appUserId){
		Map<String, Object> result = new HashMap<>();
		AppUserDto dto = new AppUserDto();
		dto.setAppUserId(appUserId);
		result.put("result", service.deleteAdimin(dto));
		return result;
	}

}
