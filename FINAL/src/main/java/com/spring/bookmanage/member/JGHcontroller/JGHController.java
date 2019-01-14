package com.spring.bookmanage.member.JGHcontroller;

import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.bookmanage.common.AES256;
import com.spring.bookmanage.member.JGHmodel.MemberVO;
import com.spring.bookmanage.member.JGHservice.JGHService;

@Controller
public class JGHController {
	@Autowired private JGHService service;
	@Autowired AES256 aes;

	@RequestMapping(value = "memberList.ana", method = {RequestMethod.GET})
	public String list(HttpServletRequest request)
			throws NoSuchAlgorithmException, UnsupportedEncodingException, GeneralSecurityException {
		String colname = request.getParameter("colname");
		String search = request.getParameter("search");
		List<MemberVO> memberList = service.listService();
		for(MemberVO memberVO : memberList) {
			memberVO.setEmail(aes.decrypt(memberVO.getEmail()));
			memberVO.setPhone(aes.decrypt(memberVO.getPhone()));
		}// end of for

		request.setAttribute("memberList", memberList);

		return "member/memberList.tiles1";
	}// end of list

	@RequestMapping(value = "searchEnd.ana", method = {RequestMethod.GET})
	public String search(HttpServletRequest request) {

		return "member/searchEnd.tiles1";
	}// end of search
}