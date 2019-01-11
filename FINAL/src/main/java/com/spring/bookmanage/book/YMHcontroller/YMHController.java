package com.spring.bookmanage.book.YMHcontroller;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@Component
public class YMHController 
{
	
	@RequestMapping(value="/bookRegister.ana",method= {RequestMethod.GET})
	public String bookRegister() {
		
		return "book/bookRegister.tiles1";
	}// end of bookRegister------------------------------------------------
	
	
	@RequestMapping(value="/findPublisher.ana",method= {RequestMethod.GET})
	public String findPublisher() {
		
		return "findPublisher.notiles";
	}// end of findPublisher()----------------------------------------------
	
	
	
	
	
	
}

