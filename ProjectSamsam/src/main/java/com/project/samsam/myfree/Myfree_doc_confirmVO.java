package com.project.samsam.myfree;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

public class Myfree_doc_confirmVO {

	private int confirm_no;					// Ȯ����ȣ
	private int confirm_fdoc_no;			// �۹�ȣ
	private String confirm_fdoc_s_email;	// �о���
	private String confirm_fdoc_r_email;	// �Ǻо���
	private String confirm_fdoc_code;		// �о��ڵ�
	private int confirm_fdoc_expiry;		// å�ӱⰣ
	private String confirm_fdoc_price;		// å�Ӻ�
	private Date confirm_s_date;			// å�ӽ�����
	private Date confirm_e_date;			// å�Ӹ�����
	private String confirm_account;			// ȯ�ް��¹�ȣ
	private String confirm_big;				// ������з�
	private String confirm_fdoc_kindof;		// ǰ��
	private String confirm_fdoc_img;		// �̹���
	
	
	public int getConfirm_no() {
		return confirm_no;
	}
	public void setConfirm_no(int confirm_no) {
		this.confirm_no = confirm_no;
	}
	public int getConfirm_fdoc_no() {
		return confirm_fdoc_no;
	}
	public void setConfirm_fdoc_no(int confirm_fdoc_no) {
		this.confirm_fdoc_no = confirm_fdoc_no;
	}
	public String getConfirm_fdoc_s_email() {
		return confirm_fdoc_s_email;
	}
	public void setConfirm_fdoc_s_email(String confirm_fdoc_s_email) {
		this.confirm_fdoc_s_email = confirm_fdoc_s_email;
	}
	public String getConfirm_fdoc_r_email() {
		return confirm_fdoc_r_email;
	}
	public void setConfirm_fdoc_r_email(String confirm_fdoc_r_email) {
		this.confirm_fdoc_r_email = confirm_fdoc_r_email;
	}
	public String getConfirm_fdoc_code() {
		return confirm_fdoc_code;
	}
	public void setConfirm_fdoc_code(String confirm_fdoc_code) {
		this.confirm_fdoc_code = confirm_fdoc_code;
	}
	public int getConfirm_fdoc_expiry() {
		return confirm_fdoc_expiry;
	}
	public void setConfirm_fdoc_expiry(int confirm_fdoc_expiry) {
		this.confirm_fdoc_expiry = confirm_fdoc_expiry;
	}
	public String getConfirm_fdoc_price() {
		return confirm_fdoc_price;
	}
	public void setConfirm_fdoc_price(String confirm_fdoc_price) {
		this.confirm_fdoc_price = confirm_fdoc_price;
	}
	public Date getConfirm_s_date() {
		return confirm_s_date;
	}
	public void setConfirm_s_date(Date confirm_s_date) {
		this.confirm_s_date = confirm_s_date;
	}
	public Date getConfirm_e_date() {
		return confirm_e_date;
	}
	public void setConfirm_e_date(Date confirm_e_date) {
		this.confirm_e_date = confirm_e_date;
	}
	public String getConfirm_account() {
		return confirm_account;
	}
	public void setConfirm_account(String confirm_account) {
		this.confirm_account = confirm_account;
	}
	public String getConfirm_big() {
		return confirm_big;
	}
	public void setConfirm_big(String confirm_big) {
		this.confirm_big = confirm_big;
	}
	public String getConfirm_fdoc_kindof() {
		return confirm_fdoc_kindof;
	}
	public void setConfirm_fdoc_kindof(String confirm_fdoc_kindof) {
		this.confirm_fdoc_kindof = confirm_fdoc_kindof;
	}
	public String getConfirm_fdoc_img() {
		return confirm_fdoc_img;
	}
	
	public void setConfirm_fdoc_img(String confirm_fdoc_img) {
		this.confirm_fdoc_img = confirm_fdoc_img;
	}
	
	
}
