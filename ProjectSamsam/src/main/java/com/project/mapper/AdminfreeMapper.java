package com.project.mapper;

import java.util.HashMap;
import java.util.List;

import com.project.samsam.myfree.Myfree_authVO;
import com.project.samsam.myfree.Myfree_doc_confirmVO;

public interface AdminfreeMapper {
	
	public int getListCount();
	public List<Myfree_authVO> getAuthList(HashMap<String, Integer> hashmap);
	
	public Myfree_doc_confirmVO selectConfirm_detail(int confirm_no);
	public List<Myfree_authVO> selectAuth_detail(int confirm_no);
	
	public Myfree_authVO selectAuth_detail_re_re(int fadoc_no);
	public List<Myfree_authVO> selectAuth_detail_re(int confirm_no);
	public Myfree_doc_confirmVO selectConfirm_detail_re(int confirm_no);
	
	public int update_auth_ok(int fadoc_no);
	public int update_auth_re(int fadoc_no);
	public int update_auth_no(int fadoc_no);
}
