package com.spring.bookmanage.member.YSWmodel;

import org.springframework.stereotype.Repository;

@Repository
public interface InterYSWDAO {

	int idDuplicate(String memberid);

	int memberRegistEnd(YSWMemberVO membervo);
	
	

}
