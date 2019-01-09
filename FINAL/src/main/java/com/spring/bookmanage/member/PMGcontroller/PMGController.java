package com.spring.bookmanage.member.PMGcontroller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PMGController {

	@RequestMapping(value="/memberDetail.ana", method= {RequestMethod.GET})
	public String member(HttpServletRequest req) {
		
		return "member/memberDetail.tiles1";
	}
	
}
