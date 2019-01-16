package com.spring.bookmanage.book.KKHcontroller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.forwardedUrl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.bookmanage.book.KKHmodel.KKHBookVO;
import com.spring.bookmanage.book.KKHservice.InterKKHBookService;


@Controller
public class KKHController {
	
	@Autowired
	private InterKKHBookService service;
	
	@RequestMapping(value="/bookList.ana",method= {RequestMethod.GET})
	/** bookList.jsp 페이지로 이동하는 메소드
	 * 
	 * @return
	 */
	public String bookList(HttpServletRequest request, HttpServletResponse response) {

		return "book/bookList.tiles1";
	}// end of bookList
	
	@RequestMapping(value="/findBookBySidebar.ana", method= {RequestMethod.GET})
	@ResponseBody
	/**
	 * ajax로 library,field,category,language, sort 값을 받아와서 조건을 검색해 책 목록을 가져오는 메소드
	 * @param request
	 * @param response
	 * @return List<HashMap<String,Object>>
	 */
	public List<HashMap<String,Object>> findBookBySidebar(HttpServletRequest request, HttpServletResponse response){
		List<HashMap<String,Object>> resultList = new ArrayList<HashMap<String,Object>>();
		
		String library = request.getParameter("library");
		String language = request.getParameter("language");
		String category = request.getParameter("category");
		String field = request.getParameter("field");
		String sort = request.getParameter("sort");
		
		if(library != "") {
			library = "'"+library+"'";
		}if(language != "") {
			language = "'"+language+"'";
		}if(category != "") {
			category = "'"+category+"'";
		}if(field != "") {
			field = "'"+field+"'";
		}
		System.out.println("library=>"+library+",  language=>"+language+",  category=>"+category+",  field=>"+field);
		HashMap<String,String> parameterMap = new HashMap<String,String>();
		parameterMap.put("LIBRARY", library);
		parameterMap.put("LANGUAGE", language);
		parameterMap.put("CATEGORY", category);
		parameterMap.put("FIELD", field);
		parameterMap.put("SORT", sort);
		List<KKHBookVO> bookList = null;
		bookList = service.findBookBysidebar(parameterMap);
		
		for(KKHBookVO bookvo : bookList) {
			HashMap<String,Object> map = new HashMap<String,Object>();
			map.put("BOOKVO", bookvo);
			resultList.add(map);
		}
		
		return resultList;
	}
	
	@RequestMapping(value="/bookDetail.ana",method= {RequestMethod.GET})
	public String bookDetail(HttpServletRequest request, HttpServletResponse response) {
		
		return "book/bookDetail.tiles1";
	}
}