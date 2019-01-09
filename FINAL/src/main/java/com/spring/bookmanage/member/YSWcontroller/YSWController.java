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
		
		String memberid = req.getParameter("memberid");
		String pwd = req.getParameter("pwd");
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String phone = req.getParameter("phone");
		String addr1 = req.getParameter("addr1");
		String addr2 = req.getParameter("addr2");
		String post = req.getParameter("post");
		String yyyy = req.getParameter("yyyy");
		String mm = req.getParameter("mm");
		String dd = req.getParameter("dd");
		String gender = req.getParameter("gender");
		
		System.out.println("memberid :"+memberid);
		System.out.println("pwd :"+pwd);
		System.out.println("name :"+name);
		System.out.println("email :"+email);
		System.out.println("phone :"+phone);
		System.out.println("addr1 :"+addr1);
		System.out.println("addr2 :"+addr2);
		System.out.println("post :"+post);
		System.out.println("yyyy :"+yyyy);
		System.out.println("mm :"+mm);
		System.out.println("dd :"+dd);
		System.out.println("gender :"+gender);
		
		YSWMemberVO membervo = null;
		
		membervo.setMemberid(memberid);
		membervo.setPwd(pwd);
		membervo.setName(name);
		membervo.setEmail(email);
		membervo.setPhone(phone);
		membervo.setAddr1(addr1);
		membervo.setAddr2(addr2);
		membervo.setPost(post);
		membervo.setYyyy(yyyy);
		membervo.setMm(mm);
		membervo.setDd(dd);
		membervo.setGender(Integer.parseInt(gender));
		
		int result = 0;
		
		result = service.memberRegistEnd(membervo);
		
		return result;
	}


}
