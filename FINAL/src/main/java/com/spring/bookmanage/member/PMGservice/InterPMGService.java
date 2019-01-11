package com.spring.bookmanage.member.PMGservice;

import com.spring.bookmanage.member.PMGmodel.MemberVO;

public interface InterPMGService {

	MemberVO findOneMember(String idx);
	
}
