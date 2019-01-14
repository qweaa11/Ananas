package com.spring.bookmanage.board.YJKcontroller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.bookmanage.board.YJKservice.InterYJKService;
import com.spring.bookmanage.common.FileManager;

@Controller
@Component
public class YJKController {
	
	//==== 의존객체 주입하기(DI : Dependency Injection)  ====
	@Autowired
	private InterYJKService service;
	// ==== 파일업로드 및 파일 다운로드를 해주는 FileManager 클래스 의존객체 주입하기 ====
	@Autowired
	private FileManager fileManager;
	
	// ==== 전체글 리스트 보여주기 ==== //
	@RequestMapping(value="/boardlist.ana",method= {RequestMethod.GET})
	public String boardlist(HttpServletRequest req) {

		
		
		return "board/boardlist.tiles1";
	}

}
