package com.spring.bookmanage.JDScontroller;

import java.util.HashMap;
import java.util.List;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.bookmanage.JDSmodel.MemberVO;
import com.spring.bookmanage.JDSservice.InterLoginService;
import com.spring.bookmanage.common.AES256;
import com.spring.bookmanage.common.SHA256;

	//===== #30. 컨트롤러 선언  =====
	@Controller
	@Component
	/* XML에서 빈을 만드는 대신에 클래스명 앞에 @Component 어노테이션을 적어주면 해당 클래스는 bean으로 자동 등록된다. 
	  그리고 bean의 이름(첫글자는 소문자)은 해당 클래스명이 된다. */
	public class LoginController {
		
		// =====#35.의존객체 주입하기(DI : Dependency Injection) =====
		@Autowired
		private InterLoginService service;
		
		// =====#45. 양방향 암호화 알고리즘인 AES256를 사용하여 암호화/복호화 하기 위한 클래스 의존객체 주입하기(DI : Dependency Injection) =====
		@Autowired
		private AES256 aes;

		// =====#36. 메인페이지 요청 =====
		@RequestMapping(value="/index.ana", method= {RequestMethod.GET})
		public String index(HttpServletRequest req) {
			
			List<String> imgfilenameList = service.getImgfilenameList();
			
			req.setAttribute("imgfilenameList", imgfilenameList);
			
			return "main/index.tiles1";
			// /book/src/main/webapp/WEB-INF/views/tiles1/main/index.jsp 파일을 생성한다.
		}
		
		// =====#40. 로그인 폼 페이지 요청 =====
		@RequestMapping(value="/login.ana", method= {RequestMethod.GET})
		public String login(HttpServletRequest req) {
			
			return "login/loginform.tiles1";
			// /book/src/main/webapp/WEB-INF/views/tiles1/login/loginform.jsp 파일을 생성한다.
		}
		
		// ===== #41. 로그인 여부 알아오기 및 마지막으로 로그인한 날짜 기록하기
		@RequestMapping(value="/loginEnd.ana", method= {RequestMethod.POST})
		public String loginEnd(HttpServletRequest req) {
			
			String userid = req.getParameter("userid");
			String pwd = req.getParameter("pwd");
			
			HashMap<String, String> map = new HashMap<String, String>();
			map.put("USERID", userid);
			map.put("PWD", SHA256.encrypt(pwd));
			
			MemberVO loginuser = service.getLoginMember(map);
			///////////////////////////////////////////////////////////////////////////////
			
			HttpSession session = req.getSession();
			
			if(loginuser == null) {
				String msg = "아이디 또는 암호가 틀립니다.";
				String loc = "javascript:history.back()";
				
				req.setAttribute("msg", msg);
				req.setAttribute("loc", loc);
				
				return "msg";
			}
			
			else if(loginuser != null && loginuser.isIdleStatus() == true) {
				// 로그인을 한지 1년이 지나서 휴면 상태로 빠진 경우
				String msg = "로그인을 한지 1년이 지너서 휴면상태로 되었습니다. 관리자에게 문의 바랍니다.";
				String loc = "javascript:history.back()";
				
				req.setAttribute("msg", msg);
				req.setAttribute("loc", loc);
				
				return "msg";
			}
			
			else if(loginuser != null && loginuser.isRequirePwdChange() == true) {
				// 암호를 최근 6개월 이내에 변경하지 않았을 경우
				String msg = "암호를 최근 6개월이내에 변경하지 않으셨습니다. 암호 변경을 위해 나의 정보 페이지로 이동합니다.";
				String loc = req.getContextPath()+"/myinfo.ana";
				
				req.setAttribute("msg", msg);
				req.setAttribute("loc", loc);
				
				session.setAttribute("loginuser", loginuser);
				
				return "msg";
			}
			
			else {
				// 아무런 이상없이 로그인 하는 경우
				session.setAttribute("loginuser", loginuser);
				
				if(session.getAttribute("gobackURL") != null) {
					//세션에 저장된 돌아갈  페이지의 주소(gobackURL) 
					String gobackURL = (String)session.getAttribute("gobackURL");
					req.setAttribute("gobackURL", gobackURL);
					
					session.removeAttribute("gobackURL");
				}
				
				return "login/loginEnd.tiles1";
				// /book/src/main/webapp/WEB-INF/views/tiles1/login/loginEnd.jsp 파일을 생성한다.
			}
		}
		
		@RequestMapping(value="/myinfo.ana", method={RequestMethod.GET})
		public String myinfo(HttpServletRequest req) {
			return "login/myinfo.tiles1";
		    //  /book/src/main/webapp/WEB-INF/views/tiles1/login/myinfo.jsp 파일을 생성한다.
		}
		
		// ===== #50. 로그아웃 완료 요청. =====
			@RequestMapping(value="/logout.ana", method={RequestMethod.GET})
			public String logout(HttpServletRequest req, HttpSession session) {
				
				 session.invalidate();
			  	
				 String msg = "로그아웃 되었습니다."; 
				 String ctxPath = req.getContextPath();
				 String loc = ctxPath+"/index.ana";
					
				 req.setAttribute("msg", msg);
				 req.setAttribute("loc", loc);
					
				 return "msg";
			}
			
	}
