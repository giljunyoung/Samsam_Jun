package com.project.samsam.myfree;

import java.util.List;

import com.project.samsam.myfree.Member_listVO;
import com.project.samsam.myfree.Myfree_doc_confirmVO;
import com.project.samsam.myfree.Myfree_authVO;
import com.project.samsam.myfree.Myfree_docVO;

public interface MyfreeService {
	
	public int insertMember(Member_listVO member_listVO);
	public int userCheck(Member_listVO member_listVO);
	
		//������, �г��� ��ȸ
		public Member_listVO selectMember(String email);
		
		
		//���� å�Ӻо� ��ȸ
		public List<Myfree_doc_confirmVO> selectConfirm(String email);
		
		
		//å�� �о� ���� �Խñ� ����
		public List<Myfree_authVO> selectAuth(String email);
		
		
		//�ۼ��� å�Ӻо�� ��� ��ȸ
		public List<Myfree_docVO> selectDoc(String email);
		
		//å�Ӻо� ������ �ۼ�â ���� - å�Ӻо�������Ȳ ���̺� ��ȸ
		public Myfree_doc_confirmVO selectConfirm_write(int confirm_no);
		
		//å�Ӻо� ������ �ۼ�
		public int insertFree_auth(Myfree_authVO myfree_authVO);
		
		//å�Ӻо� ������ ��ȸ
		public Myfree_authVO selectAuth_view(int fadoc_no);
		public Myfree_doc_confirmVO selectConfirm_view(int confirm_no);
		
		//�̹��� ���� ���ε�
		public void update_fdoc_img(Myfree_doc_confirmVO myfree_doc_confirmVO);
}