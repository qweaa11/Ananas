package com.spring.bookmanage.member.YSWservice;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.bookmanage.library.Yjkmodel.YjkVO;
import com.spring.bookmanage.member.YSWmodel.InterYSWDAO;
import com.spring.bookmanage.member.YSWmodel.YSWMemberVO;

@Service
public class YSWService implements InterYSWService {
	
	@Autowired
	private InterYSWDAO dao;
	

	//===== 아이디 중복 체크 요청. =====
	@Override
	public int idDuplicate(String memberid) {

		int result = dao.idDuplicate(memberid);
		return result;
	}

	
	//===== 회원등록 =====
	@Override
	public int memberRegistEnd(YSWMemberVO membervo) {

		int result = dao.memberRegistEnd(membervo);
		return result;
	}

	
	//===== 조건을 이용해서 사서 목록 가져오기. =====
	@Override
	public List<YjkVO> findListWithOption(HashMap<String, String> paraMap) {

		List<YjkVO> librarianList = dao.findListWithOption(paraMap);
		return librarianList;
	}

	
	//===== 조건이 없을 때 사서 목록 가져오기. =====
	@Override
	public List<YjkVO> findListNoneOption() {

		List<YjkVO> librarianList = dao.findListNoneOption();
		return librarianList;
	}

}
