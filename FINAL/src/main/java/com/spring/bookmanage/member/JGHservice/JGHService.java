package com.spring.bookmanage.member.JGHservice;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.bookmanage.member.JGHmodel.MemberMapper;
import com.spring.bookmanage.member.JGHmodel.MemberVO;

@Service
public class JGHService {
	@Autowired private MemberMapper mapper;

	/**
	 * 회원 전체목록 불러오기
	 * @return
	 */
	public List<MemberVO> listService() {
		List<MemberVO> memberList = mapper.findAllMember();

		return memberList;
	}// end of listService

	/**
	 * 검색설정에 따른 회원목록 불러오기
	 * @param parameterMap
	 * @return
	 */
	public List<MemberVO> searchList(HashMap<String, String> parameterMap) {
		List<MemberVO> memberListBySearchWord = mapper.findAllMemberBySearchWord(parameterMap);

		return memberListBySearchWord;
	}// end of listService

	/**
	 * 회원 전체목록 불러오기
	 * @param parameterMap
	 * @return
	 */
	public List<MemberVO> noSearchList() {
		List<MemberVO> memberListByNoSearchWord = mapper.findAllMember();

		return memberListByNoSearchWord;
	}// end of noSearchList
}