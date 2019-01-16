package com.spring.bookmanage.book.KKHservice;

import java.util.HashMap;
import java.util.List;

import com.spring.bookmanage.book.KKHmodel.KKHBookVO;

public interface InterKKHBookService {

	List<KKHBookVO> findBookBysidebar(HashMap<String, String> parameterMap);

}
