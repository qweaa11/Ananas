package com.spring.bookmanage.book.YMHcontroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class BookController 
{
	
	@RequestMapping(value="/bookList.ana",method= {RequestMethod.GET})
	public String bookList() {
		System.out.println("push pull 제발 제대로 나와라 by nine9ash");
		System.out.println("테스트합니다.");
		return "book/bookList.tiles1";
	}
	@RequestMapping(value="/bookRegister.ana",method= {RequestMethod.GET})
	public String bookRegister() {
		
		return "book/bookRegister.tiles1";
	}// end of bookRegister
	
	
	
	
	
	
}
