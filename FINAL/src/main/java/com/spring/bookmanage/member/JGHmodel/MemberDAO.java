package com.spring.bookmanage.member.JGHmodel;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAO implements MemberMapper {
	@Autowired private SqlSessionTemplate sqlsession;

	/**
	 * 회원목록 전체조회
	 */
	@Override
	public List<MemberVO> findAllMember() {
		List<MemberVO> memberList = sqlsession.selectList("jgh.findAllMember");

		return memberList;
	}// end of findAllMember

	/**
	 * 검색설정에 따른 회원목록 조회
	 */
	@Override
	public List<MemberVO> findAllMemberBySearchWord(HashMap<String, String> parameterMap) {
		List<MemberVO> memberListBySearchWord = sqlsession.selectList("jgh.findAllMemberBySearchWord", parameterMap);

		return memberListBySearchWord;
	}// end of findAllMemberBySearchWord
}