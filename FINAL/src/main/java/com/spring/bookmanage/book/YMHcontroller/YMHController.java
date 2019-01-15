package com.spring.bookmanage.book.YMHcontroller;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

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

import com.spring.bookmanage.book.YMHService.InterYMHBookService;
import com.spring.bookmanage.book.YMHmodel.YMHBookVO;
import com.spring.bookmanage.common.AES256;
import com.spring.bookmanage.common.FileManager;


@Controller
@Component
public class YMHController 
{
	@Autowired
	private InterYMHBookService service;
	
	@Autowired
	private AES256 aes;
	
	@Autowired
	private FileManager fileManager;
	
	
	
	
	// 도서 등록 창 요청
	@RequestMapping(value="/bookRegister.ana",method= {RequestMethod.GET})
	public String bookRegister() {
		
		return "book/bookRegister.tiles1";
	}// end of bookRegister------------------------------------------------
	
	// 출판사 조회 페이지 요청
	@RequestMapping(value="/findPublisher.ana",method= {RequestMethod.GET})
	public String findPublisher() {
		
		return "findPublisher.notiles";
	}// end of findPublisher()----------------------------------------------
	
	
/*	
	// 도서등록 완효 요청
	@RequestMapping(value="/bookRegisterEnd.ana",method= {RequestMethod.POST})
	public String bookRegisterEnd(YMHBookVO bookvo, MultipartHttpServletRequest req) 
	{
		
		// ===  첨부파일이 있는지 확인하기  === //
		MultipartFile attach = bookvo.getAttach();
		
		if(!attach.isEmpty())
		{// 첨부파일이 있다면
			HttpSession session = req.getSession();
			String root = session.getServletContext().getRealPath("/");
			String path = root + "resources" + File.separator + "files";
			// path 가 첨부파일을 저장할 WAS의 폴더가 된다.
			
			System.out.println("확인용 : path => "+path);
			
			String newFileName = "";
			byte[] bytes = null;
			long fileSize = 0;
			
			try 
			{
				bytes = attach.getBytes();
				
				newFileName = fileManager.doFileUpload(bytes, attach.getOriginalFilename(), path);
				
				System.out.println(">>>확인용 : " + newFileName);
				
				bookvo.setFilename(newFileName);
				bookvo.setOrgFilename(attach.getOriginalFilename());
				
				fileSize = attach.getSize();
				
				bookvo.setFilesize(String.valueOf(fileSize));
				
			}catch (Exception e) {
				e.printStackTrace();
			}
						
		}// end of if()-----------------------------------
		// ===  첨부파일이 있는지 확인하기 끝   === //
		
		
		int n = 0;
		
		if(!attach.isEmpty())
		{	// 파일첨부가 있는경우
			n = service.addOneNewBook(bookvo);
		}
		
		String loc = "";
		if(n==1) 
		{	// 등록에 성공하면
			loc = req.getContextPath()+"/bookList.ana";
		}
		else
		{	// 등록에 실패한다면
			loc = req.getContextPath()+"/bookRegister.ana";
		}
		
		req.setAttribute("loc", loc);
		req.setAttribute("n", n);
		
		
		return "book/bookRegisterEnd.tiles1";
	}// end of bookRegisterEnd()----------------------------------------------
		
	
	
	*/
	
	
	
	
	// field 테이블에서 값아 알아오기
	@RequestMapping(value="/showFieldDetail.ana",method= {RequestMethod.GET})
	@ResponseBody
	public List<HashMap<String, String>> showFieldDetail(HttpServletRequest req) {
		
		List<HashMap<String, String>> mapList = new ArrayList<HashMap<String, String>>();
		
		String fcode = req.getParameter("fieldCode");
		
		String initFcode = fcode.substring(0, 1);
		System.out.println(initFcode);
		
		System.out.println("fcode: "+ fcode);
		 
		List<YMHBookVO> fieldList = service.filedCodeList(initFcode);
		
		for(YMHBookVO bvo : fieldList)
		{
			HashMap<String, String> map = new HashMap<String, String>();
			
			map.put("FCODE", bvo.getFcode_fk());
			map.put("FNAME", bvo.getFname());
			
			System.out.println("asdasd : " + map);
			
			mapList.add(map);
		}
		
		
		return mapList;
	}// end of bookRegister------------------------------------------------

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}





















