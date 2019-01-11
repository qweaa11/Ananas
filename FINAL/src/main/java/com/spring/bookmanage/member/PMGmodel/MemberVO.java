package com.spring.bookmanage.member.PMGmodel;

public class MemberVO {
	// 회원
	private int idx;				// 인덱스
	private String memberid;		// 아이디
	private String pwd;				// 비밀번호
	private String name;			// 이름
	private String email;			// 이메일
	private String phone;			// 연락처
	private String addr1;			// 주소
	private String addr2;			// 상세주소
	private String post;			// 우편번호
	private String birth;			// 생년월일
	private int gender;				// 성별 (남자 : 1 / 여자 : 2)
	
	private String regDate;			// 가입일자
	private String lastDate;		// 최근접속일자
	private String pwDate;			// 비밀번호변경일자
	private int status;				// 상태(활동:0,휴면:1,정지:3,탈퇴:4)
	
	public MemberVO() { }
	
	public MemberVO(int idx, String memberid, String pwd, String name, String email, String phone, String addr1,
			String addr2, String post, String birth, int gender, String regDate, String lastDate, String pwDate,
			int status) {
		this.idx = idx;
		this.memberid = memberid;
		this.pwd = pwd;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.addr1 = addr1;
		this.addr2 = addr2;
		this.post = post;
		this.birth = birth;
		this.gender = gender;
		this.regDate = regDate;
		this.lastDate = lastDate;
		this.pwDate = pwDate;
		this.status = status;
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getMemberid() {
		return memberid;
	}

	public void setMemberid(String memberid) {
		this.memberid = memberid;
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
		return birth;
	}

	public void setBirth(String birth) {
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
	
	
	public String getShowGender() {
		if("1".equals(gender))
			return "남자";
		else
			return "여자";
	}
	
	
	
}
