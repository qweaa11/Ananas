package com.spring.bookmanage.book.KKHservice;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.bookmanage.book.KKHmodel.InterKKHBookDAO;

@Service
public class KKHBookService implements InterKKHBookService{
	
	@Autowired
	private InterKKHBookDAO bookdao;

	@Override
	public List<HashMap<String, Object>> findBookBysidebar(HashMap<String, String> parameterMap) {
		List<HashMap<String, Object>> bookList = bookdao.findBookBysidebar(parameterMap);
		return bookList;
	}

}
