package com.spring.bookmanage.member.YSWmodel;


import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.bookmanage.library.Yjkmodel.YjkVO;


@Repository
public class YSWDAO implements InterYSWDAO {
	
	@Autowired
	private SqlSessionTemplate sqlsession;

	
	//===== 아이디 중복 체크 요청. =====
	@Override
	public int idDuplicate(String memberid) {

		int result = sqlsession.selectOne("YSW.idDuplicate", memberid);
		return result;
	}

	
	//===== 회원등록 =====
	@Override
	public int memberRegistEnd(YSWMemberVO membervo) {

		int result = sqlsession.insert("YSW.memberRegistEnd", membervo);
		return result;
	}

	
	//===== 조건을 이용해서 사서 목록 가져오기. =====
	@Override
	public List<YjkVO> findLibrarianListWithOption(HashMap<String, String> paraMap) {
		
		List<YjkVO> librarianList = sqlsession.selectList("YSW.findLibrarianListWithOption", paraMap);
		return librarianList;
	}

	
	//===== 조건이 없을 때 사서 목록 가져오기. =====
	@Override
	public List<YjkVO> findLibrarianListWithoutOption() {

		List<YjkVO> librarianList = sqlsession.selectList("YSW.findLibrarianListWithoutOption");
		return librarianList;
	}

}
