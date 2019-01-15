package com.spring.bookmanage.book.YMHmodel;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.bookmanage.common.AES256;

@Repository
public class YMHBookDAO implements InterYMHBookDAO 
{

	@Autowired
	private SqlSessionTemplate sqlsession;
	
	
	
	
	// field 테이블에서 값아 알아오기
	@Override
	public List<YMHBookVO> filedCodeList(String initFcode) {
		List<YMHBookVO> filedcodelist = sqlsession.selectList("YMH.filedCodeList", initFcode);
		
		System.out.println("fcode3: "+ initFcode);
		
		return filedcodelist;
	}
	
	
	
	
/*	
	@Override
	public int addOneNewBook(YMHBookVO bookvo) {
		String pubCode = bookvo.getPubCode_fk();
		
		// 먼저 출판사 테이블에 존재하는 출판사인지 알아오자
	//	int isExistPub = sqlsession.select("YMH.addOneBook", bookvo);;
		
		
		
		
		int n = sqlsession.insert("YMH.addOneBook", bookvo);
		
		
		
		return n;
	}// end of addOneNewBook()-------------------------------------------
	
	
	*/
	
	
	
	
	
	
	
	
	
	
	
	
}











