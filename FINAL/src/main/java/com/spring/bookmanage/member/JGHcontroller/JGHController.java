package com.spring.bookmanage.member.JGHcontroller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.bookmanage.member.JGHmodel.MemberVO;
import com.spring.bookmanage.member.JGHservice.JGHService;

@Controller
public class JGHController {
	@Autowired private JGHService service;

	@RequestMapping(value="memberList.ana", method = {RequestMethod.GET})
	public String list() {
		List<MemberVO> memberList = service.listService();

		return "member/memberList.tiles1";
	}// end of list
}