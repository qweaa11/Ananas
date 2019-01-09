package com.spring.bookmanage.member.JGHmodel;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAO implements MemberMapper {
	@Autowired private SqlSessionTemplate sqlsession;

	@Override
	public List<MemberVO> findAllMember() {
		List<MemberVO> memberList = sqlsession.selectList("jgh.findAllMember");

		return memberList;
	}// end of findAllMember
}