package com.spring.bookmanage.book.KKHcontroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class KKHController {
	
	@RequestMapping(value="/bookList.ana",method= {RequestMethod.GET})
	public String bookList() {
		
		return "bookList.tiles2";
	}// end of bookList  dsfsdf
}

