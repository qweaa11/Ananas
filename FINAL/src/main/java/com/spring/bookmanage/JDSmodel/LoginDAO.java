package com.spring.bookmanage.JDSmodel;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.spring.bookmanage.JDSmodel.MemberVO;

public class LoginDAO implements InterLoginDAO{
	//=====#32.DAO 선언 =====


	
			// =====#33.의존객체 주입하기(DI : Dependency Injection) =====
			@Autowired
			private SqlSessionTemplate sqlsession;

			// =====#38. 이미지 파일명 가져오기 =====
			@Override
			public List<String> getImgfilenameList() {
				List<String> imgList = sqlsession.selectList("JDS.getImgfilenameList");
				return imgList;
			}

			// =====#46. 로그인 여부 알아보기 및 마지막으로 로그인한 날짜 기록하기=====
			@Override
			public MemberVO getLoginMember(HashMap<String, String> map) {

				MemberVO loginuser = sqlsession.selectOne("JDS.getLoginMember", map);
				
				return loginuser;
			}
			//마지막으로 로그인한 날짜시간 기로고하기
			@Override
			public void setLastLoginDate(HashMap<String, String> map) {
				sqlsession.update("JDS.setLastLoginDate", map);
			}

}
