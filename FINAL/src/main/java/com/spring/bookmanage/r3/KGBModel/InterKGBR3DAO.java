package com.spring.bookmanage.r3.KGBModel;

import java.util.HashMap;
import java.util.List;

import com.spring.bookmanage.member.JGHmodel.MemberVO;

public interface InterKGBR3DAO {

	List<MemberVO> findAllMemberBySearchWord(HashMap<String, String> paraMap);
	// 컬럼명과 검색어를 받아 회원을 조회해오는 메소드 

	MemberVO findOneMemberBymemberid(String memberid);
	// 아이디를 받아 한명의 회원을 조회해오는 메소드

}
