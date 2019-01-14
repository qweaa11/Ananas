package com.spring.bookmanage.member.PMGcontroller;

import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.bookmanage.common.AES256;
import com.spring.bookmanage.member.PMGmodel.PMGMemberVO;
import com.spring.bookmanage.member.PMGservice.PMGService;

@Controller
public class PMGController {

	// 의존객체 주입하기(DI : Dependency Injection)
	@Autowired
	private PMGService service;
	
	// 양방향 암호화 AES256을 사용하여 암호화/복호화 하기 위한 클래스 의존객체 주입하기
	@Autowired
	private AES256 aes;
	
	@RequestMapping(value="/memberDetail.ana", method= {RequestMethod.GET})
	public String member(PMGMemberVO pmgMemberVO, HttpServletRequest req) {
		
		String idx = req.getParameter("idx");
		
		pmgMemberVO = service.findOneMemberByIdx(idx);
		try {
			pmgMemberVO.setEmail(aes.decrypt(pmgMemberVO.getEmail()));
			
			
			
			
			
			pmgMemberVO.setPhone(aes.decrypt(pmgMemberVO.getPhone()));
		} catch (UnsupportedEncodingException | GeneralSecurityException e) {			
			e.printStackTrace();
		}
		
		req.setAttribute("pmgMemberVO", pmgMemberVO);
		
		return "member/memberDetail.tiles1";
	}// end of member
	
}
