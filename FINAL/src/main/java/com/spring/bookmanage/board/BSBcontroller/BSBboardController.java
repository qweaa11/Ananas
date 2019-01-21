package com.spring.bookmanage.board.BSBcontroller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.spring.bookmanage.common.AES256;
import com.spring.bookmanage.common.SHA256;
import com.spring.bookmanage.login.BSBmodel.BSBMemberVO;
import com.spring.bookmanage.login.BSBservice.BSBInterLoginService;

@Controller
public class BSBboardController {
	
	// =====#35.의존객체 주입하기(DI : Dependency Injection) =====
			@Autowired
			private BSBInterLoginService service;
			
			
	
	@RequestMapping(value="/board.ana",method= {RequestMethod.GET})
	public String adminLogin(HttpServletRequest req) {
		
		

		return "board/board.tiles1";
	}
	
	
}
