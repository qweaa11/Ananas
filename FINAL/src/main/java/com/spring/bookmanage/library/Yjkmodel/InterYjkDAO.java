package com.spring.bookmanage.library.Yjkmodel;

import org.springframework.stereotype.Repository;

//model단(DAO)의 인터페이스 선언
@Repository
public interface InterYjkDAO {

	int adminRegistEnd(YjkVO adminvo);// 관리자 등록하기

	int idDuplicateCheck(YjkVO yjkvo);// 아이디 중복확인

}
