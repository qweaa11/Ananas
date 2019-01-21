package com.spring.bookmanage.member.PMGmodel;

public interface InterPMGMemberDAO {

	PMGMemberVO findOneMemberByIdx(String idx);
	// idx로 회원상세 정보 보여주기
	
	int EditActivityOneMemberByIdx(String idx);
	
	int EditInactivityOneMemberByIdx(String idx);
<<<<<<< HEAD
	// idx로 회원상태 휴면해제(활동)으로 변경	
	int EditWithdrawalOneMemberByIdx(String idx);
	// idx로 회원상태 탈퇴로 변경(status => 3)
	int EditShutdownOneMemberByIdx(String idx);
	// idx로 회원상태 영구정지로 변경(status => 4)
=======
	
	int EditStopOneMemberByIdx(String idx);
>>>>>>> branch 'master' of https://github.com/qweaa11/Ananas.git
	
	
}
