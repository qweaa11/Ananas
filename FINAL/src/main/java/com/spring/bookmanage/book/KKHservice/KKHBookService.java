package com.spring.bookmanage.book.KKHservice;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.spring.bookmanage.book.KKHmodel.InterKKHBookDAO;

public class KKHBookService implements InterKKHBookService{
	
	@Autowired
	private InterKKHBookDAO bookdao;

	@Override
	public List<HashMap<String, Object>> findBookBysidebar(HashMap<String, String> parameterMap) {
		List<HashMap<String, Object>> bookList = bookdao.findBookBysidebar(parameterMap);
		return bookList;
	}

}
