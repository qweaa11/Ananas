package com.spring.bookmanage.member.YSWcontroller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.bookmanage.member.YSWmodel.YSWMemberVO;
import com.spring.bookmanage.member.YSWservice.InterYSWService;


@Controller
@Component
public class YSWController {
	
	@Autowired
	private InterYSWService service;
	
	//===== 회원등록 페이지 요청. =====
	@RequestMapping(value="/memberRegist.ana", method= {RequestMethod.GET})
	public String registUser(HttpServletRequest req) {
				
		return "memberRegist.notiles";  
	}
	
	
	//===== 아이디 중복 체크 요청. =====
	@RequestMapping(value="/idDuplicate.ana", method= {RequestMethod.POST})
	@ResponseBody
	public HashMap<String,Integer> idDuplicate(HttpServletRequest req) {
		
		String memberid = req.getParameter("memberid");
		System.out.println("memberid : " + memberid);
		
		int result = service.idDuplicate(memberid);
		
		System.out.println("result : " + result);
		
		HashMap<String,Integer> resultMap = new HashMap<String,Integer>();
		
		resultMap.put("result", result);
		
		return resultMap;
	}
	
	
	//===== 회원등록 =====
	@RequestMapping(value="/memberRegistEnd.ana", method= {RequestMethod.POST})
	public int memberRegistEnd(HttpServletRequest req) {
		
		YSWMemberVO membervo = null;
		
		int result = 0;
		
		result = service.memberRegistEnd(membervo);
		
		return result;
	}


}
