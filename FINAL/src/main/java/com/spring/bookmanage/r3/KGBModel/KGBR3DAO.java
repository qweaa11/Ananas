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

	
	@Override
	public int addAllRentalById(HashMap<String, String> paraMap) throws Throwable{
		
		String[] memberidArr = paraMap.get("MEMBERIDS").split(",");
		String[] bookidArr = paraMap.get("BOOKIDS").split(",");
		String[] nameArr = paraMap.get("NAMES").split(",");
		String[] deadlineArr = paraMap.get("DEADLINES").split(",");
		
		int result = 0;
		
		for(int i=0; i < memberidArr.length; i++) {
			HashMap<String, String> map = new HashMap<String, String>();
			map.put("MEMBERID", memberidArr[i]);
			map.put("BOOKID", bookidArr[i]);
			map.put("NAME", nameArr[i]);
			map.put("DEADLINE", deadlineArr[i]);
			
			int n = sqlsession.insert("kgb.addAllRentalById", map);
			
			result += n;
			
			
			
		}// end of for()------------------
		
		if(result != memberidArr.length) {
			Throwable ex = new Throwable(); 
			
			throw ex;
		}
		
		return 1;
	}// end of addAllRentalById()--------------------


}
