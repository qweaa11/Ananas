package com.spring.bookmanage.book.KKHservice;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.bookmanage.book.KKHmodel.InterKKHBookDAO;
import com.spring.bookmanage.book.KKHmodel.KKHBookVO;

@Service
public class KKHBookService implements InterKKHBookService{
	
	@Autowired
	private InterKKHBookDAO bookdao;

	@Override
	public List<KKHBookVO> findBookBysidebar(HashMap<String, String> parameterMap) {
		List<KKHBookVO> bookList = bookdao.findBookBysidebar(parameterMap);
		return bookList;
	}

}
