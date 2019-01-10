package com.spring.bookmanage.member.YSWservice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.bookmanage.member.YSWmodel.InterYSWDAO;
import com.spring.bookmanage.member.YSWmodel.YSWMemberVO;

@Service
public class YSWService implements InterYSWService {
	
	@Autowired
	private InterYSWDAO dao;

	@Override
	public int idDuplicate(String memberid) {

		int result = dao.idDuplicate(memberid);
		return result;
	}

	@Override
	public int memberRegistEnd(YSWMemberVO membervo) {

		int result = dao.memberRegistEnd(membervo);
		return result;
	}

}
