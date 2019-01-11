package com.spring.bookmanage.member.PMGservice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.bookmanage.common.AES256;
import com.spring.bookmanage.member.PMGmodel.MemberDAO;
import com.spring.bookmanage.member.PMGmodel.MemberVO;

@Service
public class PMGService implements InterPMGService {

	@Autowired
	private MemberDAO dao;
	
	@Autowired
	private AES256 aes;
	
	@Override
	public MemberVO findOneMember(String idx) {
		MemberVO memberVO = dao.findOneMember(idx);
		return memberVO;
	}

}
