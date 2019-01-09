package com.spring.bookmanage.member.JGHmodel;

import java.util.List;

public interface MemberMapper {
	/**
	 * 회원목록 전체조회
	 */
	List<MemberVO> findAllMember();
}
