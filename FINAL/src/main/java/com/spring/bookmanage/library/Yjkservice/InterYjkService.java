package com.spring.bookmanage.library.Yjkservice;

import org.springframework.stereotype.Service;

import com.spring.bookmanage.library.Yjkmodel.YjkVO;

//Service단 인터페이스 선언

@Service
public interface InterYjkService {

	int adminRegistEnd(YjkVO adminvo);// 관리자 등록하기

	int idDuplicateCheck(YjkVO yjkvo);// 아이디 중복체크

	

}
