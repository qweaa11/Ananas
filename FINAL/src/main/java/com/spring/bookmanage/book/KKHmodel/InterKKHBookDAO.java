package com.spring.bookmanage.book.KKHmodel;

import java.util.HashMap;
import java.util.List;

public interface InterKKHBookDAO {
	

	List<HashMap<String, Object>> findBookBysidebar(HashMap<String, String> parameterMap);

}
