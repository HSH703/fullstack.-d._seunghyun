package com.thejoeun703.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired; 
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.thejoeun703.dto.Sboard1Dto;
import com.thejoeun703.service.Sboard1Service;

@RestController //@Controller + @ResponseBody
public class SearchController {
	
	@Autowired private Sboard1Service service;
	
	@RequestMapping("/searchTest")
	//@ResponseBody  //해당하는 값을 던져줌 (Ajax기본원리)
	public String hi() {
		//처리하고
		return "HI"; //값줄게(@ResponseBody)
	}
	
	@RequestMapping("/selectSearch")
	public List<Sboard1Dto> selectSearch(@RequestParam("search") String search) {
		return service.selectSearch(search); //값줄게(@ResponseBody)
	}
}

/*
@Controller  
public class SearchController {
	
	@Autowired private Sboard1Service service;
	@RequestMapping("/searchTest")
	@ResponseBody  //해당하는 값을 던져줌 (Ajax기본원리)
	public String hi() {
		//처리하고
		return "HI"; //값줄게(@ResponseBody)
	}

*/