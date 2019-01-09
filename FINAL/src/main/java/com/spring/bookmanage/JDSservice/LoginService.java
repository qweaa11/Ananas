package com.spring.bookmanage.JDSservice;

import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.spring.bookmanage.JDSmodel.InterLoginDAO;
import com.spring.bookmanage.JDSmodel.MemberVO;
import com.spring.bookmanage.common.AES256;

public class LoginService implements InterLoginService{
	
	// =====#31.Service 선언 =====

		
		// =====#34.의존객체 주입하기(DI : Dependency Injection) =====
		@Autowired
		private InterLoginDAO dao;
		
		// =====#45. 양방향 암호화 알고리즘인 AES256를 사용하여 암호화/복호화 하기 위한 클래스 의존객체 주입하기(DI : Dependency Injection) =====
		@Autowired
		private AES256 aes;

		// =====#37. 이미지 파일명 가져오기 =====
		@Override
		public List<String> getImgfilenameList() {
			List<String> imgList = dao.getImgfilenameList();
			return imgList;
		}

		// =====#42. 로그인 여부 알아보기 및 마지막으로 로그인한 날짜 기록하기=====
		@Override
		public MemberVO getLoginMember(HashMap<String, String> map) {
			
			MemberVO loginuser = dao.getLoginMember(map);
			//////////////////////////////////////////////////////////////////////////
			
			// =====#48. aes 의존객체를 사용하여 로그인되어진 사용자(loginuser)의 이메일값을 복호화하도록 한다. =====	
			if(loginuser == null) {
				return null;
			}
			else if(loginuser != null && loginuser.getLastlogindategap() >= 12) {
				// 마지막으로 로그인한 날짜가 현재일로부터 1년(12개월)이 지났으면 해당 로그인 계정을 비활성화(휴면) 시킨다.
				
				loginuser.setIdleStatus(true);
				return loginuser;
			}
			
			else {
				
				if(loginuser.getPwdchangegap() >= 6) {
					// 마지막으로 암호를 변경한 날짜가 현재시각으로부터 6개월이 지났으면 true,
					// 마지막으로 암호를 변경한 날짜가 현재시각으로부터 6개월이 지나지 않았으면 false로 표시한다.
					loginuser.setRequirePwdChange(true);
				}
				
				dao.setLastLoginDate(map);//마지막으로 로그인한 날짜시간 기록하기
				
				try {
					loginuser.setEmail(aes.decrypt(loginuser.getEmail())); 
				} catch (UnsupportedEncodingException | GeneralSecurityException e) {
					
					e.printStackTrace();
				} 
			}
			
			return loginuser;
		}
}
