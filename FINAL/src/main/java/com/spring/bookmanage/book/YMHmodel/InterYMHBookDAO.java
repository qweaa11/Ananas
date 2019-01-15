package com.spring.bookmanage.book.YMHmodel;

import java.util.List;

import org.springframework.stereotype.Repository;

@Repository
public interface InterYMHBookDAO {

	List<YMHBookVO> filedCodeList(String initFcode);
	// 필드 분류 선택을 위한 메소드
	
	

//	int addOneNewBook(YMHBookVO bookvo); // 신규 도서 등록 메소드

}
