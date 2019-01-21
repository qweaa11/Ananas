package com.spring.bookmanage.member.JGHmodel;

import java.util.HashMap;
import java.util.List;

public interface MemberMapper {
	/**
	 * 회원목록 전체조회
	 */
	List<MemberVO> findAllMember();

	/**
	 * 검색설정에 따른 회원목록 조회
	 * @param parameterMap
	 * @return
	 */
	List<MemberVO> findAllMemberBySearchWord(HashMap<String, String> parameterMap);
}
