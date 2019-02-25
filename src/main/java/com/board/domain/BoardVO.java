package com.board.domain;

import java.sql.Date;

/**
 * @author aiontec
 *
 */
public class BoardVO {
	
	private int bno;
	private String subject;
	private String content;
	private String writer;
	private Date reg_date;
	private int hit;
	
	
	
	/**
	 * @return
	 */
	public int getBno() {
		return bno;
	}
	/**
	 * @param bno
	 */
	public void setBno(int bno) {
		this.bno = bno;
	}
	public String getSubject() {
		return subject;
	}
	/**
	 * @param subject
	 */
	public void setSubject(String subject) {
		this.subject = subject;
	}
	/**
	 * @return
	 */
	public String getContent() {
		return content;
	}
	/**
	 * @param content
	 */
	public void setContent(String content) {
		this.content = content;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	
	

}
