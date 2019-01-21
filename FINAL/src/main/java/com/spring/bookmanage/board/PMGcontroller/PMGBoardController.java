package com.spring.bookmanage.board.PMGcontroller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.bookmanage.board.PMGservice.PMGBoardService;
import com.spring.bookmanage.common.AES256;
import com.spring.bookmanage.common.FileManager;

@Controller
public class PMGBoardController {

	//===== 의존객체 주입하기(DI : Dependency Injection) =====
	@Autowired
	private PMGBoardService service;
	
	//===== 양방향 암호화 알고리즘인 AES256를 사용하여 암호화/복호화 하기 위한 클래스 의존객체 주입하기 (DI : Dependency Injection) =====
	@Autowired
	private AES256 aes;
	
	//===== 파일업로드 및 파일다운로드를 해주는 FileManager 클래스 의존객체 주입하기 (DI : Dependency Injection) =====
	@Autowired
	private FileManager fileManager;
	
	
	@RequestMapping(value="/noticeList.ana", method= {RequestMethod.GET})
	public String notice(HttpServletRequest request, HttpServletResponse response) {
		
		return "notice/noticeList.tiles1";
	}
	
	@RequestMapping(value="/noticeWrite.ana", method= {RequestMethod.GET})
	public String noticeWrite(HttpServletRequest request, HttpServletResponse response) {
		
		return "notice/noticeWrite.tiles1";
	}
	
}
