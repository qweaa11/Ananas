package com.spring.bookmanage.member.YSWmodel;

import org.springframework.web.multipart.MultipartFile;

public class YSWMemberVO {
	
	private String memberid; // 아이디
	private int idx; // 인덱스
	private String pwd; // 비밀번호
	private String name; // 이름
	private String email; // 이메일
	private String phone; // 연락처
	private String addr1; // 주소
	private String addr2; // 상세주소
	private String post; // 우편번호
	private String yyyy;
	private String mm;
	private String dd;
	private String birth; // 생년월일
	private int gender; // 성별
	private String regDate; // 등록일자(가입일자)
	private String lastDate; // 최근접속일자
	private String pwDate; // 비밀번호변경일자
	private int status; // 상태(회원,휴면,탈퇴 등)
	private long fileSize; // 업로드시 사진 이름
	private String recordPicName;	// 저장시 만들어진 사진이름
	private MultipartFile attach;
	
	
	public YSWMemberVO() {}
	
	
	public YSWMemberVO(String memberid, int idx, String pwd, String name, String email, String phone, String addr1,
					   String addr2, String post, String yyyy, String mm, String dd, String birth, int gender, String regDate,
					   String lastDate, String pwDate, int status, String profilePicture, String recordPicName, long fileSize) 
	{
		this.memberid = memberid;
		this.idx = idx;
		this.pwd = pwd;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.addr1 = addr1;
		this.addr2 = addr2;
		this.post = post;
		this.yyyy = yyyy;
		this.mm = mm;
		this.dd = dd;
		this.birth = birth;
		this.gender = gender;
		this.regDate = regDate;
		this.lastDate = lastDate;
		this.pwDate = pwDate;
		this.status = status;
		this.fileSize = fileSize;
		this.recordPicName = recordPicName;
	}


	public String getMemberid() {
		return memberid;
	}


	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}


	public int getIdx() {
		return idx;
	}


	public void setIdx(int idx) {
		this.idx = idx;
	}


	public String getPwd() {
		return pwd;
	}


	public void setPwd(String pwd) {
		this.pwd = pwd;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public String getAddr1() {
		return addr1;
	}


	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}


	public String getAddr2() {
		return addr2;
	}


	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}


	public String getPost() {
		return post;
	}


	public void setPost(String post) {
		this.post = post;
	}


	public String getBirth() {
		
		birth = yyyy+mm+dd;
		
		return birth;
	}


	public void setBirth(String birth) {
		
		birth = yyyy+mm+dd;
		
		this.birth = birth;
	}


	public int getGender() {
		return gender;
	}


	public void setGender(int gender) {
		this.gender = gender;
	}


	public String getRegDate() {
		return regDate;
	}


	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}


	public String getLastDate() {
		return lastDate;
	}


	public void setLastDate(String lastDate) {
		this.lastDate = lastDate;
	}


	public String getPwDate() {
		return pwDate;
	}


	public void setPwDate(String pwDate) {
		this.pwDate = pwDate;
	}


	public int getStatus() {
		return status;
	}


	public void setStatus(int status) {
		this.status = status;
	}


	public String getYyyy() {
		return yyyy;
	}


	public void setYyyy(String yyyy) {
		this.yyyy = yyyy;
	}


	public String getMm() {
		return mm;
	}


	public void setMm(String mm) {
		this.mm = mm;
	}


	public String getDd() {
		return dd;
	}


	public void setDd(String dd) {
		this.dd = dd;
	}


	public long getProFileSize() {
		return fileSize;
	}


	public void setFileSize(long fileSize) {
		this.fileSize = fileSize;
	}


	public String getRecordPicName() {
		return recordPicName;
	}


	public void setRecordPicName(String recordPicName) {
		this.recordPicName = recordPicName;
	}


	public MultipartFile getAttach() {
		return attach;
	}


	public void setAttach(MultipartFile attach) {
		this.attach = attach;
	}
	
	
	

}
