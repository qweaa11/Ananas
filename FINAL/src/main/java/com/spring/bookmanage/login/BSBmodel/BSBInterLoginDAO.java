package com.spring.bookmanage.login.BSBmodel;

import java.util.HashMap;
import java.util.List;

import com.spring.bookmanage.JDSmodel.MemberVO;

public interface BSBInterLoginDAO {

	BSBMemberVO getLoginMember(HashMap<String, String> map);
	// model단(DAO)의 인터페이스 선언


			
			
}
