package com.project.samsam.adminfree;

import java.util.HashMap;
import java.util.List;

import com.project.samsam.myfree.Myfree_authVO;
import com.project.samsam.myfree.Myfree_doc_confirmVO;

public interface AdminfreeService {
	//å�Ӻо� ������ ���
	public int getListCount();
	public List<Myfree_authVO> getAuthList(HashMap<String, Integer> hashmap);
	
	//å�Ӻо� Ȯ����ȣ Ŭ�� �󼼺���
	public Myfree_doc_confirmVO selectConfirm_detail(String confirm_no);
	public List<Myfree_authVO> selectAuth_detail(String confirm_no);
	
	public Myfree_authVO selectAuth_detail_re_re(int fadoc_no);				//�󼼺��� ������ redirect�� �� ���
	public List<Myfree_authVO> selectAuth_detail_re(String confirm_no);			//�󼼺��� ������ redirect�� �� ���
	public Myfree_doc_confirmVO selectConfirm_detail_re(String confirm_no);	//�󼼺��� ������ redirect�� �� ���
	
	//å�Ӻо� ��������
	public int update_auth_ok(int fadoc_no);
	public int update_auth_re(int fadoc_no);
	public int update_auth_no(int fadoc_no);
}
