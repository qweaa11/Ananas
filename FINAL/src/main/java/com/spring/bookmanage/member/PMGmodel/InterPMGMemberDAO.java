package com.spring.bookmanage.member.PMGmodel;

public interface InterPMGMemberDAO {

	PMGMemberVO findOneMemberByIdx(String idx);
	// idx로 회원상세 정보 보여주기
	
	int EditActivityOneMemberByIdx(String idx);
	
	int EditInactivityOneMemberByIdx(String idx);
	
	int EditStopOneMemberByIdx(String idx);
	
	
}
