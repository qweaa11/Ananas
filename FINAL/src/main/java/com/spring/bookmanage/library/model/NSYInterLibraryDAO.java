package com.spring.bookmanage.library.model;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

//==== interDAO 선언하기 ====
@Repository
public interface NSYInterLibraryDAO {

	int resisterLibraryEnd(NSYLibraryVO libraryvo); // 도서관등록 완료

	List<NSYLibraryVO> getLibraryList(HashMap<String, String>paraMap);

	int getLibraryTotalList(HashMap<String, String> paraMap);

	NSYLibraryVO getLibraryDetailInfo(String idx);


}
