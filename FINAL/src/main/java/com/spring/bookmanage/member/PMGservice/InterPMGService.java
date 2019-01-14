package com.spring.bookmanage.member.PMGservice;

import com.spring.bookmanage.member.PMGmodel.PMGMemberVO;

public interface InterPMGService {

	PMGMemberVO findOneMemberByIdx(String idx);
	// idx로 회원상세 정보 보여주기
	
	
}
