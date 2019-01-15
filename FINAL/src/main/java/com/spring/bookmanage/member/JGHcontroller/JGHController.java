package com.spring.bookmanage.member.JGHcontroller;

import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
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

		List<MemberVO> memberList = null;
		String colname = request.getParameter("colname");
		String searchWord = request.getParameter("searchWord");

		HashMap<String, String> parameterMap = new HashMap<>();
		parameterMap.put("colname", colname);
		parameterMap.put("searchWord", searchWord);

		if(searchWord != null && !searchWord.trim().isEmpty()) {
			System.out.println("여기 찍혀야함");
			memberList = service.searchList(parameterMap);
			request.setAttribute("colname", colname);
			request.setAttribute("searchWord", searchWord);
		} else {
			memberList = service.noSearchList();
		}// end of if~else

		for(MemberVO memberVO : memberList) {
			memberVO.setEmail(aes.decrypt(memberVO.getEmail()));
			memberVO.setPhone(aes.decrypt(memberVO.getPhone()));
		}// end of for

		request.setAttribute("memberList", memberList);

		return "member/memberList.tiles1";
	}// end of list

}