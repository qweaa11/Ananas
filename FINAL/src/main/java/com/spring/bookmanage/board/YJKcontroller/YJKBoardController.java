package com.spring.bookmanage.board.YJKcontroller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.bookmanage.board.YJKservice.InterYJKBoardService;
import com.spring.bookmanage.common.FileManager;

@Controller
public class YJKBoardController {
	
	//==== 의존객체 주입하기(DI : Dependency Injection)  ====
	@Autowired
	private InterYJKBoardService service;
	
	// ==== 파일업로드 및 파일 다운로드를 해주는 FileManager 클래스 의존객체 주입하기 ====
	@Autowired
	private FileManager fileManager;
	
	// ==== 관리자 등록 페이지 보여주기 ==== //
	@RequestMapping(value="/boardList.ana",method= {RequestMethod.GET})
	public String boardList(HttpServletRequest req) {
		
		return "board/boardList.tiles1";
	}
	
}
