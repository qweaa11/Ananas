package com.spring.bookmanage.member.PMGcontroller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.bookmanage.common.AES256;
import com.spring.bookmanage.member.PMGmodel.MemberVO;
import com.spring.bookmanage.member.PMGservice.InterPMGService;

@Controller
public class PMGController {

	// 의존객체 주입하기(DI : Dependency Injection)
	@Autowired
	private InterPMGService service;
	
	@Autowired
	private AES256 aes;
	
	@RequestMapping(value="/memberDetail.ana", method= {RequestMethod.GET})
	public String member(HttpServletRequest req, MemberVO memberVO) {
		
		String idx = req.getParameter("idx");
		
		memberVO = service.findOneMember(idx);
		
		req.setAttribute("memberVO", memberVO);
		
		return "member/memberDetail.tiles1";
	}// end of member
	
}
