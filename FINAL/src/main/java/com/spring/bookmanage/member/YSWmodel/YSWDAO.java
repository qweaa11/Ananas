package com.spring.bookmanage.member.YSWmodel;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class YSWDAO implements InterYSWDAO {
	
	@Autowired
	private SqlSessionTemplate sqlsession;

	@Override
	public int idDuplicate(String memberid) {

		int result = sqlsession.selectOne("YWSBookManage.idDuplicate", memberid);
		return result;
	}

	@Override
	public int memberRegistEnd(YSWMemberVO membervo) {

		int result = sqlsession.insert("YWSBookManage.memberRegistEnd", membervo);
		return result;
	}

}
