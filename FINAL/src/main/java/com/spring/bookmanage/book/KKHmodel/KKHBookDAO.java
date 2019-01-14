package com.spring.bookmanage.book.KKHmodel;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

public class KKHBookDAO implements InterKKHBookDAO {
	
	
	@Autowired
	private SqlSessionTemplate sqlsession;

	@Override
	public List<HashMap<String, Object>> findBookBysidebar(HashMap<String, String> parameterMap) {
		List<HashMap<String,Object>> bookList = sqlsession.selectList("KKH.findBookBysidebar", parameterMap);
		return bookList;
	}

}
