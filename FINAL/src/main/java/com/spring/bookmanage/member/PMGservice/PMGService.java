package com.spring.bookmanage.member.PMGservice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.bookmanage.common.AES256;
import com.spring.bookmanage.member.PMGmodel.PMGMemberDAO;
import com.spring.bookmanage.member.PMGmodel.PMGMemberVO;

@Service
public class PMGService implements InterPMGService {

	// 의존객체 주입하기(DI : Dependency Injection)
	@Autowired
	private PMGMemberDAO dao;
	
	// 양방향 암호화 AES256을 사용하여 암호화/복호화 하기 위한 클래스 의존객체 주입하기
	@Autowired
	private AES256 aes;
	
	@Override
	public PMGMemberVO findOneMemberByIdx(String idx) {		
		PMGMemberVO pmgMemberVO = dao.findOneMemberByIdx(idx);
		return pmgMemberVO;
	}

	@Override
	public int EditActivityOneMemberByIdx(String idx) {
		int n = dao.EditActivityOneMemberByIdx(idx);
		return n;
	}

	@Override
	public int EditInactivityOneMemberByIdx(String idx) {
		int n = dao.EditInactivityOneMemberByIdx(idx);
		return n;
	}

	@Override
	public int EditStopOneMemberByIdx(String idx) {
		int n = dao.EditStopOneMemberByIdx(idx);
		return n;
	}

	
	
}
