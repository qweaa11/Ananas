package com.spring.bookmanage.member.YSWservice;

import org.springframework.stereotype.Service;

import com.spring.bookmanage.member.YSWmodel.YSWMemberVO;

@Service
public interface InterYSWService {

	int idDuplicate(String memberid);

	int memberRegistEnd(YSWMemberVO membervo);

}
