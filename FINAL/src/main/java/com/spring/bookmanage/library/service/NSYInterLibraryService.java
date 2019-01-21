package com.spring.bookmanage.library.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Service;

import com.spring.bookmanage.library.model.NSYLibraryVO;

// ==== Service단 인터페이스 선언 ====
@Service
public interface NSYInterLibraryService {

	int resisterLibraryEnd(NSYLibraryVO libraryvo); // 도서관등록 완료하기

	List<NSYLibraryVO> getLibraryList(HashMap<String, String>paraMap); // 등록된도서관 목록 가져오기 (페이징, 검색기능 가능)

	int getLibraryTotalList(HashMap<String, String> paraMap); // 페이징처리를 위한 도서관목록갯수 처리

	NSYLibraryVO getLibraryDetailInfo(String idx); // 특정도서관 상세정보 가져오기

}
