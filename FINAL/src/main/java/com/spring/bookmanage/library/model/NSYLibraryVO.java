package com.spring.bookmanage.library.model;

import org.springframework.web.multipart.MultipartFile;

//==== VO 생성하기 ====
public class NSYLibraryVO {
	
	private String libcode; // 도서관번호
	private int idx;		// 인덱스
	private String name;	// 도서관명
	private String tel;		// 연락처
	private String addr;	// 주소지
	private String regDate; // 등록일자
	
	private String fileName; //저장되는 파일 이름
	private String orgFilename; //저장되는 원래 이름
	private String fileSize; //파일 크기
	
	private String location;
	private String locationy;
	private String locationx;
	
	private MultipartFile imgFile; // 진짜 파일 ==> WAS(톰캣) 디스크에 저장됨.
	
	
	public NSYLibraryVO() {}
	
	public NSYLibraryVO(String libcode, int idx, String name, String tel, String addr
			, String fileName, String orgFilename, String fileSize, String regDate, String location, String locationy, String locationx) {
		super();
		
		this.libcode = libcode;
		this.idx = idx;
		this.name = name;
		this.tel = tel;
		this.addr = addr;
		this.fileName = fileName;
		this.orgFilename = orgFilename;
		this.fileSize = fileSize;
		this.regDate = regDate;
		this.location = location;
		this.location = locationy;
		this.location = locationx;
		
		
	}//end of NSYLibraryVO

	public String getLibcode() {
		return libcode;
	}

	public void setLibcode(String libcode) {
		this.libcode = libcode;
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}
	
	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getOrgFilename() {
		return orgFilename;
	}

	public void setOrgFilename(String orgFilename) {
		this.orgFilename = orgFilename;
	}

	public String getFileSize() {
		return fileSize;
	}

	public void setFileSize(String fileSize) {
		this.fileSize = fileSize;
	}

	public MultipartFile getImgFile() {
		return imgFile;
	}

	public void setImgFile(MultipartFile imgFile) {
		this.imgFile = imgFile;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getLocationy() {
		return locationy;
	}

	public void setLocationy(String locationy) {
		this.locationy = locationy;
	}

	public String getLocationx() {
		return locationx;
	}

	public void setLocationx(String locationx) {
		this.locationx = locationx;
	}
	
	

}// end of class NSYLibraryVO
