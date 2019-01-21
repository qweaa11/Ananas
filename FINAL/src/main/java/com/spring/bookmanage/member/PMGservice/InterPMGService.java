package com.spring.bookmanage.member.PMGservice;

import com.spring.bookmanage.member.PMGmodel.PMGMemberVO;

public interface InterPMGService {

	PMGMemberVO findOneMemberByIdx(String idx);
	// idx로 회원상세 정보 보여주기
	
	// 0 활동, 1 휴면, 2 정지, 3 탈퇴, 4 영구정지
	int EditActivityOneMemberByIdx(String idx);
	// idx로 회원상태 활동으로 변경(status => 0)
	int EditInactivityOneMemberByIdx(String idx);
	// idx로 회원상태 휴면해제(활동)으로 변경(status => 0)	
	int EditWithdrawalOneMemberByIdx(String idx);
	// idx로 회원상태 탈퇴로 변경(status => 3)
	int EditShutdownOneMemberByIdx(String idx);
	// idx로 회원상태 영구정지로 변경(status => 4)
	
}
