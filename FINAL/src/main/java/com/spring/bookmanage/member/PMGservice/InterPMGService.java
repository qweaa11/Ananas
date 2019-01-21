package com.spring.bookmanage.member.PMGservice;

import com.spring.bookmanage.member.PMGmodel.PMGMemberVO;

public interface InterPMGService {

	PMGMemberVO findOneMemberByIdx(String idx);
	// idx로 회원상세 정보 보여주기
	
	int EditActivityOneMemberByIdx(String idx);
	// idx로 회원상태 활동으로 변경
	int EditInactivityOneMemberByIdx(String idx);
	// idx로 회원상태 휴면해제(활동)으로 변경
	int EditStopOneMemberByIdx(String idx);
	// idx로 회원상태 정지로 변경
	
}