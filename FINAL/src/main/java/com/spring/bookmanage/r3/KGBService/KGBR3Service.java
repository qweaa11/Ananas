package com.spring.bookmanage.r3.KGBService;

import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.bookmanage.common.AES256;
import com.spring.bookmanage.member.JGHmodel.MemberVO;
import com.spring.bookmanage.r3.KGBModel.InterKGBR3DAO;
import com.spring.bookmanage.r3.KGBModel.KGBBookVO;

@Service
public class KGBR3Service implements InterKGBR3Service{

	@Autowired
	InterKGBR3DAO r3DAO;
	
	@Autowired
	AES256 aes;
	
	@Override
	public List<MemberVO> findAllMemberBySearchWord(HashMap<String, String> paraMap) {
		
		List<MemberVO> memberList = r3DAO.findAllMemberBySearchWord(paraMap);
		
		return memberList;
		
	}// end of findAllMemberBySearchWord()--------------------------------------

	@Override
	public MemberVO findOneMemberBymemberid(String memberid) {
		
		MemberVO memberVO = r3DAO.findOneMemberBymemberid(memberid);
		
		try {
			memberVO.setEmail(aes.decrypt(memberVO.getEmail()) );
			memberVO.setPhone(aes.decrypt(memberVO.getPhone()) );
		} catch (UnsupportedEncodingException | GeneralSecurityException e) {
		}
		
		return memberVO;
	}// end of findOneMemberBymemberid()-----------------

	
	
	@Override
	public List<KGBBookVO> findAllBookBySearchWord(HashMap<String, String> paraMap) {
		
		List<KGBBookVO> bookList = r3DAO.findAllBookBySearchWord(paraMap);
		
		return bookList;
	}// end of findAllBookBySearchWord()----------------------------

	
	
	
	
}
