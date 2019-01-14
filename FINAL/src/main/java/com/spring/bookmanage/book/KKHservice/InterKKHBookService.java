package com.spring.bookmanage.book.KKHservice;

import java.util.HashMap;
import java.util.List;

public interface InterKKHBookService {

	List<HashMap<String, Object>> findBookBysidebar(HashMap<String, String> parameterMap);

}
