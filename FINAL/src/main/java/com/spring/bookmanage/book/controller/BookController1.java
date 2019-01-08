package com.spring.bookmanage.book.controller;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@Component
public class BookController {
	
	@RequestMapping(value="/bookList.ana",method= {RequestMethod.GET})
	public String bookList() {
		
		return "bookList.tiles1";
	}
}
