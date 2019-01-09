package com.spring.bookmanage.JDSservice;

import java.util.HashMap;
import java.util.List;

import com.spring.bookmanage.JDSmodel.MemberVO;

public interface InterLoginService {

	List<String> getImgfilenameList();// 이미지 파일명 가져오기

	MemberVO getLoginMember(HashMap<String, String> map);// 로그인 여부 알아보기 및 마지막으로 로그인한 날짜 기록하기
	
}
