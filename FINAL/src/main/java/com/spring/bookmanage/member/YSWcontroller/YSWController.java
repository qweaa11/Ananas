package com.spring.bookmanage.member.YSWcontroller;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.bookmanage.common.AES256;
import com.spring.bookmanage.common.FileManager;
import com.spring.bookmanage.common.SHA256;
import com.spring.bookmanage.member.YSWmodel.YSWMemberVO;
import com.spring.bookmanage.member.YSWservice.InterYSWService;


@Controller
@Component
public class YSWController {
	
	@Autowired
	private InterYSWService service;
	
	@Autowired
	private AES256 aes;
	
	@Autowired
	private FileManager fileManager;
	
	//===== ȸ����� ������ ��û. =====
	@RequestMapping(value="/memberRegist.ana", method= {RequestMethod.GET})
	public String registUser(HttpServletRequest req) {
				
		return "member/memberRegist.tiles1";  
	}
	
	
	//===== ���̵� �ߺ� üũ ��û. =====
	@RequestMapping(value="/idDuplicate.ana", method= {RequestMethod.POST})
	@ResponseBody
	public HashMap<String,Integer> idDuplicate(HttpServletRequest req) {
		
		String memberid = req.getParameter("memberid");
		System.out.println("memberid : " + memberid);
		
		int result = service.idDuplicate(memberid);
		
		System.out.println("result : " + result);
		
		HashMap<String,Integer> resultMap = new HashMap<String,Integer>();
		
		resultMap.put("result", result);
		
		return resultMap;
	}
	
	
	//===== ȸ����� =====
	@RequestMapping(value="/memberRegistEnd.ana", method= {RequestMethod.POST})
	public String memberRegistEnd(MultipartHttpServletRequest req, YSWMemberVO membervo) {
		
		int result = 0;
		
		try {
			
			String memberid = req.getParameter("memberid");
			String pwd = req.getParameter("pwd");
			String name = req.getParameter("name");
			String email = req.getParameter("email");
			String phone = req.getParameter("phone");
			String addr1 = req.getParameter("addr1");
			String addr2 = req.getParameter("addr2");
			String post = req.getParameter("post");
			String yyyy = req.getParameter("yyyy");
			String mm = req.getParameter("mm");
			String dd = req.getParameter("dd");
			String gender = req.getParameter("gender");
			
			/*
			System.out.println("memberid :"+memberid);
			System.out.println("pwd :"+pwd);
			System.out.println("name :"+name);
			System.out.println("email :"+email);
			System.out.println("phone :"+phone);
			System.out.println("addr1 :"+addr1);
			System.out.println("addr2 :"+addr2);
			System.out.println("post :"+post);
			System.out.println("yyyy :"+yyyy);
			System.out.println("mm :"+mm);
			System.out.println("dd :"+dd);
			System.out.println("gender :"+gender);
			*/
			
			MultipartFile attach = membervo.getAttach();
			
			if(attach.isEmpty()) {
				membervo.setRecordPicName("NONE");
			}
			else {
				
				long fileSize = attach.getSize();
				
				if(fileSize > 10485760) { //10485760 == 10mb
					
					String msg = "������ ������ 10mb ���� ���� ������ �÷��ּ���";
					String loc = "javascript:history.back()";
					
					req.setAttribute("msg", msg);
					req.setAttribute("loc", loc);
					
					return "msg";
					
				}
				else {
					
					byte[] bytes = null;
					String recordPicName = "";
					
					HttpSession session = req.getSession();
					String root = session.getServletContext().getRealPath("/");
					
					System.out.println("root : " + root);
					
					String path = root + "resources" + File.separator + "profilePicture";
					System.out.println("path : "+ path);
					
					bytes = attach.getBytes();
					
					System.out.println("fileSize : " + fileSize);
					recordPicName = fileManager.doFileUpload(bytes, attach.getOriginalFilename(), path);
					
					
					
					System.out.println("recordPicName : " + recordPicName);
					
					membervo.setRecordPicName(recordPicName);
					membervo.setFileSize(fileSize);
					
				}
				
			}
			
			membervo.setMemberid(memberid);
			membervo.setPwd(SHA256.encrypt(pwd));
			membervo.setName(name);		
			membervo.setEmail(aes.encrypt(email));
			membervo.setPhone(phone);
			membervo.setAddr1(addr1);
			membervo.setAddr2(addr2);
			membervo.setPost(post);
			membervo.setYyyy(yyyy);
			membervo.setMm(mm);
			membervo.setDd(dd);
			membervo.setGender(Integer.parseInt(gender));
			
			//System.out.println("birth :"+membervo.getBirth());
			
			//result = service.memberRegistEnd(membervo);
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		if(result == 0) {
			
			String msg = "ȸ�� ���Կ� �����߽��ϴ�. �ٽ� �õ��� �ּ���.";
			String loc = "javascript:history.back()";
			
			req.setAttribute("msg", msg);
			req.setAttribute("loc", loc);
			
			return "msg";
		}
		else {
			
			String msg = "ȸ������ �Ǿ����ϴ�.";
			String loc = "Login/loginform.ana";
			
			req.setAttribute("msg", msg);
			req.setAttribute("loc", loc);
			
			return "msg";
			
		}
		
		
	}// end of public String registUser(HttpServletRequest req)----------
	
	
	
	//===== �缭 ��� ������ ��û. =====
		@RequestMapping(value="/librarianList.ana", method= {RequestMethod.GET})
		public String librarianList(HttpServletRequest req) {
					
			return "library/librarianList.tiles1";  
	}
	


}
