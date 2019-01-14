package com.spring.bookmanage.member.PMGmodel;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PMGMemberDAO implements InterPMGMemberDAO {

	// 의존객체 주입하기(DI : Dependency Injection)
	@Autowired
	private SqlSessionTemplate sqlsession;
	
	@Override
	public PMGMemberVO findOneMemberByIdx(String idx) {
		PMGMemberVO pmgMemberVO = sqlsession.selectOne("PMG.findOneMemberByIdx", idx);
		return pmgMemberVO;
	}

	
	
}
