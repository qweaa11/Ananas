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
	
	//===== ȸ����� ������ ��û. =====
	@RequestMapping(value="/memberRegist.ana", method= {RequestMethod.GET})
	public String registUser(HttpServletRequest req) {
				
		return "memberRegist.notiles";  
	}
	
	
	//===== ���̵� �ߺ� üũ ��û. =====
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
	
	
	//===== ȸ����� =====
	@RequestMapping(value="/memberRegistEnd.ana", method= {RequestMethod.POST})
	public int memberRegistEnd(HttpServletRequest req) {
		
		YSWMemberVO membervo = null;
		
		int result = 0;
		
		result = service.memberRegistEnd(membervo);
		
		return result;
	}


}
