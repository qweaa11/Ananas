package com.spring.bookmanage.r3.KGBModel;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.bookmanage.member.JGHmodel.MemberVO;

@Repository
public class KGBR3DAO implements InterKGBR3DAO {
	
	@Autowired
	SqlSessionTemplate sqlsession;

	@Override
	public List<MemberVO> findAllMemberBySearchWord(HashMap<String, String> paraMap) {
		
		List<MemberVO> memberList = sqlsession.selectList("kgb.findAllMemberBySearchWord", paraMap);
		
		return memberList;
	}// end of findAllMemberBySearchWord()--------------------------------

	@Override
	public MemberVO findOneMemberBymemberid(String memberid) {
		
		MemberVO memberVO = sqlsession.selectOne("kgb.findOneMemberBymemberid", memberid);
		
		return memberVO;
	}// findOneMemberBymemberid()--------------------

	
	@Override
	public List<KGBBookVO> findAllBookBySearchWord(HashMap<String, String> paraMap) {
		
		List<KGBBookVO> bookList = sqlsession.selectList("kgb.findAllBookBySearchWord", paraMap);
		
		return bookList;
	}// end of findAllBookBySearchWord()-------------------


}
