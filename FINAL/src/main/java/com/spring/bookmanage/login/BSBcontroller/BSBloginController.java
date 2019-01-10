package com.spring.bookmanage.login.BSBcontroller;

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
public class BSBloginController {
	
	// =====#35.의존객체 주입하기(DI : Dependency Injection) =====
			@Autowired
			private BSBInterLoginService service;
			
			
	
	@RequestMapping(value="/adminLogin.ana",method= {RequestMethod.GET})
	public String adminLogin(HttpServletRequest req) {

		return "adminLoginform.notiles";
	}
	
	@RequestMapping(value="/adminLoginEnd.ana",method= {RequestMethod.POST})
	public String adminLoginEnd(HttpServletRequest req) {
		
			String libid = req.getParameter("libid");
			String pwd = req.getParameter("pwd");
			
			HashMap<String, String> map = new HashMap<String, String>();
			map.put("LIBID", libid);
			map.put("PWD", SHA256.encrypt(pwd));
			
			BSBMemberVO loginuser = service.getLoginMember(map);
			////////////////////////////////////////////////////
			
			HttpSession session = req.getSession();
			
			if(loginuser == null) {
				String msg = "아이디 또는 암호가 틀립니다.";
				String loc = "javascript:history.back()";
				
				req.setAttribute("msg", msg);
				req.setAttribute("loc", loc);
				
				return "msg";
			
			}
			else {
				// 아무런 이상없이 로그인 하는 경우
				session.setAttribute("loginuser", loginuser);
				
				if(session.getAttribute("gobackURL") != null) { // 세션에 저장된 돌아갈 페이지의 주소(gobackURL)
					String gobackURL =  (String)session.getAttribute("gobackURL");
					
					req.setAttribute("gobackURL", gobackURL);
					
					session.removeAttribute("gobackURL");
				}
				
				
		
			return "adminLoginEnd.notiles";
		}
	
	}
}
