package com.project.samsam.myfree;

import java.sql.Date;

public class Myfree_authVO {
	
	private int fadoc_no;			// �۹�ȣ
	private String fadoc_r_email;	// �Ǻо���
	private String fadoc_confirm_no;	// Ȯ����ȣ
	private String fadoc_s_email;	// �о���
	private String fadoc_subject;	// ����
	private String fadoc_content;	// �۳���
	private Date fadoc_date;		// �ۼ���
	private int fadoc_readcount;	// ��ȸ��
	private String fadoc_check;		// �˼�����
	
	
	public int getFadoc_no() {
		return fadoc_no;
	}
	public void setFadoc_no(int fadoc_no) {
		this.fadoc_no = fadoc_no;
	}
	public String getFadoc_r_email() {
		return fadoc_r_email;
	}
	public void setFadoc_r_email(String fadoc_r_email) {
		this.fadoc_r_email = fadoc_r_email;
	}
	public String getFadoc_confirm_no() {
		return fadoc_confirm_no;
	}
	public void setFadoc_confirm_no(String fadoc_confirm_no) {
		this.fadoc_confirm_no = fadoc_confirm_no;
	}
	public String getFadoc_s_email() {
		return fadoc_s_email;
	}
	public void setFadoc_s_email(String fadoc_s_email) {
		this.fadoc_s_email = fadoc_s_email;
	}
	public String getFadoc_subject() {
		return fadoc_subject;
	}
	public void setFadoc_subject(String fadoc_subject) {
		this.fadoc_subject = fadoc_subject;
	}
	public String getFadoc_content() {
		return fadoc_content;
	}
	public void setFadoc_content(String fadoc_content) {
		this.fadoc_content = fadoc_content;
	}
	public Date getFadoc_date() {
		return fadoc_date;
	}
	public void setFadoc_date(Date fadoc_date) {
		this.fadoc_date = fadoc_date;
	}
	public int getFadoc_readcount() {
		return fadoc_readcount;
	}
	public void setFadoc_readcount(int fadoc_readcount) {
		this.fadoc_readcount = fadoc_readcount;
	}
	public String getFadoc_check() {
		return fadoc_check;
	}
	public void setFadoc_check(String fadoc_check) {
		this.fadoc_check = fadoc_check;
	}
	
}
