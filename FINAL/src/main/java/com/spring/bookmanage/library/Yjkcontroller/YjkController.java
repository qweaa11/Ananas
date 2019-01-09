package com.spring.bookmanage.library.Yjkcontroller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.bookmanage.common.AES256;
import com.spring.bookmanage.library.Yjkmodel.YjkDAO;
import com.spring.bookmanage.library.Yjkmodel.YjkVO;
import com.spring.bookmanage.library.Yjkservice.InterYjkService;

@Controller
public class YjkController {
	
	//==== 의존객체 주입하기(DI : Dependency Injection)  ====
	@Autowired
	private InterYjkService service;
	
	//===== 양방향 암호화 알고리즘인 AES256을 사용하여 암호화/복호화 하기 위한 클래스 의존객체 주입하기(DI : Dependency Injection)  =====
	@Autowired
	private AES256 aes;
	
	// ==== 관리자 등록하기 ==== //
	@RequestMapping(value="/adminRegist.ana",method= {RequestMethod.GET})
	public String adminRegistEnd() {
		
		return "adminRegist.notiles";
	}
	
	// ==== 관리자 등록하기 ==== //
	@RequestMapping(value="/adminRegistEnd.ana",method= {RequestMethod.GET})
	public String adminRegistEnd(HttpServletRequest req) {
		
		YjkVO adminvo = new YjkVO();
		
		String libid = req.getParameter("libid");
		String pwd = req.getParameter("pwd");
		String name = req.getParameter("name");
		String tel = req.getParameter("tel");
		String libcode_fk = req.getParameter("libcode_fk");
		String status = req.getParameter("status");
		
		adminvo.setLibid(libid);
		adminvo.setPwd(pwd);
		adminvo.setName(name);
		adminvo.setTel(tel);
		adminvo.setLibcode_fk(libcode_fk);
		adminvo.setStatus(status);
		
		int n = service.adminRegistEnd(adminvo);
		
		if(n == 1) {
			
			String msg = "회원가입 되었습니다.";
			String loc = "javascript:history.back()";
			
			req.setAttribute("msg", msg);
			req.setAttribute("loc", loc);
			
			return "msg";
					
		}
		else {
			
			String msg = "회원가입 실패하였습니다.";
			String loc = "javascript:history.back()";
			
			req.setAttribute("msg", msg);
			req.setAttribute("loc", loc);
			
			return "msg";
		}

	}
	
	// ==== 아이디 중복체크 ==== //
	@RequestMapping(value="/idDuplicateCheck.ana",method= {RequestMethod.POST})
	@ResponseBody
	public HashMap<String, String> idDuplicateCheck(YjkVO yjkvo) {
		
		HashMap<String, String> returnMap = new HashMap<String, String>();
		
		int n = service.idDuplicateCheck(yjkvo);
		
		String libid = yjkvo.getLibid();
		
	//	System.out.println(libid);
		
		if(n == 1) {
			returnMap.put("LIBID", yjkvo.getLibid());
		}
		
		return returnMap;
	}

}
