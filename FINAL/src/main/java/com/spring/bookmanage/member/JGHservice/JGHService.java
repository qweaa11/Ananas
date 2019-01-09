package com.spring.bookmanage.member.JGHservice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.bookmanage.member.JGHmodel.MemberMapper;
import com.spring.bookmanage.member.JGHmodel.MemberVO;

@Service
public class JGHService {
	@Autowired private MemberMapper mapper;

	public List<MemberVO> listService() {
		List<MemberVO> memberList = mapper.findAllMember();

		return memberList;
	}// end of listService
}