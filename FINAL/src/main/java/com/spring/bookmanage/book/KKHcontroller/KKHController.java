package com.spring.bookmanage.book.KKHcontroller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class KKHController {
	
	@RequestMapping(value="/bookList.ana",method= {RequestMethod.GET})
	public String bookList() {

		return "book/bookList.tiles1";
	}// end of bookList
	
	@RequestMapping(value="/findBookBySidebar.ana", method= {RequestMethod.GET})
	@ResponseBody
	public List<HashMap<String,Object>> findBookBySidebar(HttpServletRequest request, HttpServletResponse response){
		List<HashMap<String,Object>> bookList = null;
		
		
		return bookList;
	}
}