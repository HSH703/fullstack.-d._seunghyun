package com.thejoeun703.Controller;

import java.util.HashMap;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.thejoeun703.service.AppUserService;

//@Controller     처리 (service) + 화면
@RestController //처리(service) + 나온값 
public class AdminAjaxController2 {
	
	@Autowired AppUserService service;	
	
	//http://localhost:8282/EX005/iddouble?email=5@5
	@RequestMapping("/iddouble")
	public Map<String, Object> iddouble(@RequestParam String email){
		Map<String, Object> result = new HashMap<>();
		result.put("cnt", service.iddouble(email));
		return result;
	}
	
}
