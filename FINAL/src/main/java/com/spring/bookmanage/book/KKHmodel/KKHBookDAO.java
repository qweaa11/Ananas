package com.spring.bookmanage.book.KKHmodel;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class KKHBookDAO implements InterKKHBookDAO {
	
	
	@Autowired
	private SqlSessionTemplate sqlsession;

	@Override
	public List<KKHBookVO> findBookBysidebar(HashMap<String, String> parameterMap) {
		List<KKHBookVO> bookList = sqlsession.selectList("KKH.findBookBysidebar", parameterMap);
		return bookList;
	}

}
