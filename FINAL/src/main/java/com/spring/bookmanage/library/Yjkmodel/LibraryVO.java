package com.spring.bookmanage.library.Yjkmodel;

public class LibraryVO {
	
	private String libcode;
	private String idx;
	private String name;
	private String tel;
	private String addr;
	
	public LibraryVO() {}
	
	public LibraryVO(String libcode, String idx, String name, String tel, String addr) {
		super();
		this.libcode = libcode;
		this.idx = idx;
		this.name = name;
		this.tel = tel;
		this.addr = addr;
	}

	public String getLibcode() {
		return libcode;
	}

	public void setLibcode(String libcode) {
		this.libcode = libcode;
	}

	public String getIdx() {
		return idx;
	}

	public void setIdx(String idx) {
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
	
	

}
