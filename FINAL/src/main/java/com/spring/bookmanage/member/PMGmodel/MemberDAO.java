package com.spring.bookmanage.member.PMGmodel;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAO implements InerMemberDAO {

	@Autowired
	private SqlSessionTemplate sqlsession;

	@Override
	public MemberVO findOneMember(String idx) {
		MemberVO memberVO = sqlsession.selectOne("PMG.findOneMember", idx);
		return memberVO;
	}

	
	
	
	
}
