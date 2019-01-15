package com.spring.bookmanage.book.YMHService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.bookmanage.book.YMHmodel.InterYMHBookDAO;
import com.spring.bookmanage.book.YMHmodel.YMHBookVO;
import com.spring.bookmanage.common.AES256;

@Service
public class YMHBookService implements InterYMHBookService 
{

	@Autowired
	private InterYMHBookDAO dao;
	
	@Autowired
	private AES256 ase;

	@Override
	public List<YMHBookVO> filedCodeList(String initFcode) {
		List<YMHBookVO> filedcodelist = dao.filedCodeList(initFcode);
		
		System.out.println("fcode2: "+ initFcode);
		
		return filedcodelist;
	}
	
	
	
	/**
	 * 신규도서 등록하기
	 * 작성자 유민후
	 * bookvo 를 받아와서 각 테이블에 insert 하기
	 * @param bookvo
	 * @return int n
	 */
/*	@Override
	public int addOneNewBook(YMHBookVO bookvo)
	{
		int n = dao.addOneNewBook(bookvo);
		
		
		return n;
	}// end of int addOneNewBook(YMHBookVO bookvo)-----------------------------------------
	*/
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}














