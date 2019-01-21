package com.spring.bookmanage.board.PMGservice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.bookmanage.board.PMGmodel.PMGBoardDAO;
import com.spring.bookmanage.common.AES256;

@Service
public class PMGBoardService implements InterPMGBoardService {

	// 의존객체 주입하기(DI : Dependency Injection)
	@Autowired
	private PMGBoardDAO dao;
	
	@Autowired
	private AES256 aes;
	
}
