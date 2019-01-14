package com.spring.bookmanage.board.YJKmodel;

import org.springframework.web.multipart.MultipartFile;

public class BoardVO {
	
	private String idx;			// 인덱스
	private String libid_fk;	// 관리자ID
	private String name;		// 글쓴이
	private String subject;		// 글제목
	private String content;		// 글내용
	private String pw;			// 글암호
	private String readcount;	// 글 조회수
	private String regdate;		// 글쓴시간
	private String status;		// 글삭제여부  1:사용가능한글,  0:삭제된글
	
	private String previousseq;      // 이전글번호
 	private String previoussubject;  // 이전글제목
 	private String nextseq;          // 다음글번호
 	private String nextsubject;      // 다음글제목
	
	private String groupno;
	/*
	  답변글쓰기에 있어서 그룹번호
       원글(부모글)과 답변글은 동일한 groupno 를 가진다. 
       답변글이 아닌 원글(부모글)인 경우 groupno 의 값은  groupno 컬럼의 최대값(max)+1 로 한다.   
	 */
	
	private String root;
	/*
	  root 컬럼은 절대로 foreign key가 아니다.
    root 컬럼은 자신의 글(답변글)에 있어서 원글(부모글)이 누구인지에 대한 정보값이다.
         답변글쓰기에 있어서 답변글이라면 fk_seq 컬럼의 값은 원글(부모글)의 seq 컬럼의 값을 가지게 되며,
         답변글이 아닌 원글일 경우 0 을 가지도록 한다. 
	*/
	
	private String deptno;
	/*
	   답변글쓰기에 있어서 답변글 이라면 원글(부모글)의 depthno + 1 을 가지게 되며,
       답변글이 아닌 원글일 경우 0 을 가지도록 한다. 
	 */
	
	private String commentcount; 	// 댓글 수
	private String filename;		// 서버 파일명
	private String orgfilename;		// 원본 파일명
	private String filesize;		// 파일크키
	
	private MultipartFile attach; 	// 진짜 파일 ==> WAS(톰캣) 디스크에 저장됨.
 	// !!!!!! MultipartFile attach 는 오라클 데이터베이스 tblBoard 테이블의 컬럼이 아니다.!!!!!!  
 	// /Board/src/main/webapp/WEB-INF/views/tiles1/board/add.jsp 파일에서 input type="file" 인 name 의 이름(attach)과 
 	// 동일해야만 파일첨부가 가능해진다.!!!!

	public BoardVO() {}
	
	public BoardVO(String idx, String libid_fk, String name, String subject, String content, String pw,
				   String readcount, String regdate, String status, String previousseq, String previoussubject, String nextseq,
				   String nextsubject, String groupno, String root, String deptno, String commentcount, String filename,
				   String orgfilename, String filesize, MultipartFile attach) {
		super();
		this.idx = idx;
		this.libid_fk = libid_fk;
		this.name = name;
		this.subject = subject;
		this.content = content;
		this.pw = pw;
		this.readcount = readcount;
		this.regdate = regdate;
		this.status = status;
		this.previousseq = previousseq;
		this.previoussubject = previoussubject;
		this.nextseq = nextseq;
		this.nextsubject = nextsubject;
		this.groupno = groupno;
		this.root = root;
		this.deptno = deptno;
		this.commentcount = commentcount;
		this.filename = filename;
		this.orgfilename = orgfilename;
		this.filesize = filesize;
		this.attach = attach;
	}

	public String getIdx() {
		return idx;
	}

	public void setIdx(String idx) {
		this.idx = idx;
	}

	public String getLibid_fk() {
		return libid_fk;
	}

	public void setLibid_fk(String libid_fk) {
		this.libid_fk = libid_fk;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getReadcount() {
		return readcount;
	}

	public void setReadcount(String readcount) {
		this.readcount = readcount;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getPreviousseq() {
		return previousseq;
	}

	public void setPreviousseq(String previousseq) {
		this.previousseq = previousseq;
	}

	public String getPrevioussubject() {
		return previoussubject;
	}

	public void setPrevioussubject(String previoussubject) {
		this.previoussubject = previoussubject;
	}

	public String getNextseq() {
		return nextseq;
	}

	public void setNextseq(String nextseq) {
		this.nextseq = nextseq;
	}

	public String getNextsubject() {
		return nextsubject;
	}

	public void setNextsubject(String nextsubject) {
		this.nextsubject = nextsubject;
	}

	public String getGroupno() {
		return groupno;
	}

	public void setGroupno(String groupno) {
		this.groupno = groupno;
	}

	public String getRoot() {
		return root;
	}

	public void setRoot(String root) {
		this.root = root;
	}

	public String getDeptno() {
		return deptno;
	}

	public void setDeptno(String deptno) {
		this.deptno = deptno;
	}

	public String getCommentcount() {
		return commentcount;
	}

	public void setCommentcount(String commentcount) {
		this.commentcount = commentcount;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public String getOrgfilename() {
		return orgfilename;
	}

	public void setOrgfilename(String orgfilename) {
		this.orgfilename = orgfilename;
	}

	public String getFilesize() {
		return filesize;
	}

	public void setFilesize(String filesize) {
		this.filesize = filesize;
	}

	public MultipartFile getAttach() {
		return attach;
	}

	public void setAttach(MultipartFile attach) {
		this.attach = attach;
	}

}
