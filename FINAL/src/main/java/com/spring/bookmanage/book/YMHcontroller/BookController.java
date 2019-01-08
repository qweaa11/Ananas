package com.spring.bookmanage.book.YMHcontroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class BookController 
{
	
<<<<<<< HEAD
	@RequestMapping(value="/bookList.ana",method= {RequestMethod.GET})
	public String bookList() {
		System.out.println("push pull 제발 제대로 나와라 by nine9ash");
		System.out.println("테스트합니다.");
=======
	@RequestMapping(value="/bookRegister.ana",method= {RequestMethod.GET})
	public String bookRegister() {
		
		return "bookRegister.tiles1";
	}// end of bookRegister
	
	
	
	
	
	
}
>>>>>>> branch 'master' of https://github.com/qweaa11/Ananas.git

<<<<<<< HEAD
		return "bookList.tiles1";
	}// end of bookList

}

=======
>>>>>>> branch 'master' of https://github.com/qweaa11/Ananas.git
