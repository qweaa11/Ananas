package com.spring.bookmanage.member.YSWcontroller;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
import com.spring.bookmanage.library.Yjkmodel.YjkVO;
import com.spring.bookmanage.member.YSWmodel.YSWLibrarianVO;
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
	
	//===== 회원등록 페이지 요청. =====
	@RequestMapping(value="/memberRegist.ana", method= {RequestMethod.GET})
	public String registUser(HttpServletRequest req) {
				
		return "member/memberRegist.tiles1";  
	}
	
	
	//===== 아이디 중복 체크 요청. =====
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
	
	
	//===== 회원등록 =====
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
				membervo.setImgFileName("NONE");
			}
			else {
				
				long fileSize = attach.getSize();
				
				if(fileSize > 10485760) { //10485760 == 10mb
					
					String msg = "프로필 사진은 10mb 보다 작은 파일을 올려주세요";
					String loc = "javascript:history.back()";
					
					req.setAttribute("msg", msg);
					req.setAttribute("loc", loc);
					
					return "msg";
					
				}
				else {
					
					byte[] bytes = null;
					String imgFileName = "";
					
					HttpSession session = req.getSession();
					String root = session.getServletContext().getRealPath("/");
					
					System.out.println("root : " + root);
					
					String path = root + "resources" + File.separator + "profilePicture";
					System.out.println("path : "+ path);
					
					bytes = attach.getBytes();
					
					System.out.println("fileSize : " + fileSize);
					imgFileName = fileManager.doFileUpload(bytes, attach.getOriginalFilename(), path);
					
					
					
					System.out.println("recordPicName : " + imgFileName);
					
					membervo.setImgFileName(imgFileName);
					membervo.setFileSize(fileSize);
					
				}
				
			}
			
			membervo.setMemberid(memberid);
			membervo.setPwd(SHA256.encrypt(pwd));
			membervo.setName(name);		
			membervo.setEmail(aes.encrypt(email));
			membervo.setPhone(aes.encrypt(phone));
			membervo.setAddr1(addr1);
			membervo.setAddr2(addr2);
			membervo.setPost(post);
			membervo.setYyyy(yyyy);
			membervo.setMm(mm);
			membervo.setDd(dd);
			membervo.setGender(Integer.parseInt(gender));
			
			//System.out.println("birth :"+membervo.getBirth());
			
			result = service.memberRegistEnd(membervo);
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		if(result == 0) {
			
			String msg = "회원 가입에 실패했습니다. 다시 시도해 주세요.";
			String loc = "javascript:history.back()";
			
			req.setAttribute("msg", msg);
			req.setAttribute("loc", loc);
			
			return "msg";
		}
		else {
			
			String msg = "회원가입 되었습니다.";
			String loc = "Login/loginform.ana";
			
			req.setAttribute("msg", msg);
			req.setAttribute("loc", loc);
			
			return "msg";
			
		}
		
		
	}// end of public String registUser(HttpServletRequest req)----------
	
	
	
	@RequestMapping(value="/librarianList.ana", method={RequestMethod.GET})
	public String librarianList(HttpServletRequest req) {

		String sort = req.getParameter("sort");
		String searchWord = req.getParameter("searchWord");
		
		int totalCount = 0;
		
		if(searchWord != null && !searchWord.trim().equals("") && !searchWord.equalsIgnoreCase("null")) {
			
			HashMap<String, String> paraMap = new HashMap<String, String>();
			paraMap.put("sort", sort);
			paraMap.put("searchWord", searchWord);
			
			totalCount = service.totalCounttWithOption(paraMap);
		}
		else {
			
			totalCount = service.totalNoneOption();
			
		}
		
		req.setAttribute("TOTALCOUNT", totalCount);
		//System.out.println("TOTALCOUNT : " + totalCount);
		
		return "library/librarianList.tiles1";
	}
	
	
	
	@RequestMapping(value="/findLibrarianList.ana", method={RequestMethod.GET})
	@ResponseBody
	public List<HashMap <String, Object>> findLibrarianList(HttpServletRequest req) {
		
		String sort = req.getParameter("sort");
		String searchWord = req.getParameter("searchWord");
		String pageNum = req.getParameter("pageNum"); // 현재 페이지
		String itemNum = req.getParameter("itemNum"); // 한 페이지당 item 갯수
		//System.out.println("pageNum : "+ pageNum);
		//System.out.println("itemNum : "+ itemNum);
		
		int calNum = (Integer.parseInt(pageNum) + Integer.parseInt(itemNum)) -1;
		String lastNum = String.valueOf(calNum);
		
		List<HashMap <String, Object>> librarianList = new ArrayList<HashMap<String, Object>>();
		
		if(searchWord != null && !searchWord.trim().equals("") && !searchWord.equalsIgnoreCase("null")) {
			
			HashMap<String, String> paraMap = new HashMap<String, String>();
			paraMap.put("sort", sort);
			paraMap.put("searchWord", searchWord);
			paraMap.put("pageNum", pageNum);
			paraMap.put("lastNum", lastNum);
			
			List<YSWLibrarianVO> yswlibvoList = service.findListWithOption(paraMap);
			
			
			for (YSWLibrarianVO ysw : yswlibvoList) {
				
				 HashMap<String, Object> map = new HashMap<String, Object>();
				 
				 map.put("LIBRARIANIDX", ysw.getLibrarianIDX());
				 map.put("LIBID", ysw.getLibid());
				 map.put("LIBCODE_FK", ysw.getLibcode_fk());
				 map.put("LIBRARIANNAME", ysw.getLibrarianName());
				 map.put("LIBRARIANTEL", ysw.getLibrarianTel());
				 map.put("STATUS", ysw.getStatus());
				 map.put("IMGFILENAME", ysw.getImgfilename());
				 map.put("LIBNAME", ysw.getLibName());
				 map.put("LIBTEL", ysw.getLibTel());
				 map.put("ADDR", ysw.getAddr());
				 
				 
				 librarianList.add(map);
			}
		}
		else {
			
			HashMap<String, String> paraMap = new HashMap<String, String>();
			paraMap.put("pageNum", pageNum);
			paraMap.put("lastNum", lastNum);
			
			List<YSWLibrarianVO> yswlibvoList = service.findListNoneOption(paraMap);
			
			for(YSWLibrarianVO ysw : yswlibvoList) {
				
				HashMap<String, Object> map = new HashMap<String, Object>();
				
				 map.put("LIBRARIANIDX", ysw.getLibrarianIDX());
				 map.put("LIBID", ysw.getLibid());
				 map.put("LIBCODE_FK", ysw.getLibcode_fk());
				 map.put("LIBRARIANNAME", ysw.getLibrarianName());
				 map.put("LIBRARIANTEL", ysw.getLibrarianTel());
				 map.put("STATUS", ysw.getStatus());
				 map.put("IMGFILENAME", ysw.getImgfilename());
				 map.put("LIBNAME", ysw.getLibName());
				 map.put("LIBTEL", ysw.getLibTel());
				 map.put("ADDR", ysw.getAddr());
				
				librarianList.add(map);
				
			}
		}
		
		return librarianList;
	}
	
	
	
	// 사서 정보 수정
	@RequestMapping(value="/updatelibrarianInfo.ana", method={RequestMethod.POST})
	public String updatelibrarianInfo(HttpServletRequest req, YjkVO yjkvo) {
		
		int result = 0;
		
		String LIBID = req.getParameter("personalInfo1");
		String LIBCODE_FK = req.getParameter("personalInfo2");
		String LIBRARIANNAME = req.getParameter("personalInfo3");
		String LIBRARIANTEL = req.getParameter("personalInfo4");
		String STATUS = req.getParameter("personalInfo5");
		String IDX = req.getParameter("personalInfo0");

		System.out.println("LIBID : "+ LIBID);
		System.out.println("LIBCODE_FK : "+ LIBCODE_FK);
		System.out.println("LIBRARIANNAME : "+ LIBRARIANNAME);
		System.out.println("LIBRARIANTEL : "+ LIBRARIANTEL);
		System.out.println("STATUS : "+ STATUS);
		System.out.println("IDX : "+ IDX);
		
		MultipartFile attach = yjkvo.getAttach();
		
		String imgFileName = "";
		if(attach.isEmpty()) {
			yjkvo.setImgFileName("NONE");
		}
		else {
			
			long fileSize = attach.getSize();
			
			if(fileSize > 10485760) { //10485760 == 10mb
				
				String msg = "프로필 사진은 10mb 보다 작은 파일을 올려주세요";
				String loc = "javascript:history.back()";
				
				req.setAttribute("msg", msg);
				req.setAttribute("loc", loc);
				
				return "msg";
				
			}
			else {
				
				byte[] bytes = null;
				
				HttpSession session = req.getSession();
				String root = session.getServletContext().getRealPath("/");
				
				System.out.println("root : " + root);
				
				String path = root + "resources" + File.separator + "profilePicture";
				System.out.println("path : "+ path);
				
				try {
					bytes = attach.getBytes();
				
				
				System.out.println("fileSize : " + fileSize);
				imgFileName = fileManager.doFileUpload(bytes, attach.getOriginalFilename(), path);

				System.out.println("recordPicName : " + imgFileName);
				
				} catch (Exception e) {
					e.printStackTrace();
				}// End of Try ~ Catch
			}
			
		}
		
		HashMap<String, String> paraMap = new HashMap<String, String>();
		
		paraMap.put("LIBID", LIBID);
		paraMap.put("LIBCODE_FK", LIBCODE_FK);
		paraMap.put("LIBRARIANNAME", LIBRARIANNAME);
		paraMap.put("LIBRARIANTEL", LIBRARIANTEL);
		paraMap.put("STATUS", STATUS);
		paraMap.put("IMGFILENAME", imgFileName);
		paraMap.put("IDX", IDX);
		
		result = service.updatelibrarianInfo(paraMap);
		
		if(result == 0) {
			
			String msg = "사서 정보 수정에 실패했습니다. 다시 시도해 주세요.";
			String loc = "javascript:history.back()";
			
			req.setAttribute("msg", msg);
			req.setAttribute("loc", loc);
			
			return "msg";
			
		}
		else {
			
			String msg = "사서정보가 수정 되었습니다.";
			String loc = "librarianList.ana";
			
			req.setAttribute("msg", msg);
			req.setAttribute("loc", loc);
			
			return "msg";

		}
	}// End of public String updatelibrarianInfo(HttpServletRequest req)

	
	
	// 사서 정보 삭제(Real Delete)
	@RequestMapping(value="/deleteLibrarian.ana", method={RequestMethod.POST})
	public String deleteLibrarian(HttpServletRequest req, YjkVO yjkvo) {
		
		int result = 0;
		
		//String LIBID = req.getParameter("personalInfo1");
		String LIBRARIANIDX = req.getParameter("idx");

		System.out.println("LIBRARIANIDX : "+ LIBRARIANIDX);
		
		result = service.deleteLibrarian(LIBRARIANIDX);
		
		if(result == 0) {
			
			String msg = "사서 정보 삭제에 실패했습니다. 다시 시도해 주세요.";
			String loc = "javascript:history.back()";
			
			req.setAttribute("msg", msg);
			req.setAttribute("loc", loc);
			
			return "msg";
			
		}
		else {
			
			String msg = "사서정보가 삭제 되었습니다.";
			String loc = "librarianList.ana";
			
			req.setAttribute("msg", msg);
			req.setAttribute("loc", loc);
			
			return "msg";

		}
	}// public String deleteLibrarian(HttpServletRequest req, YjkVO yjkvo)


}
