package com.project.samsam.myfree;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.mapper.MyfreeMapper;

@Service("MyfreeService")
public class MyfreeServiceImpl implements MyfreeService {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int insertMember(Member_listVO member_listVO) {
		//selSession 객체를 이용하여 memberMapper 객체 생성(필드로 생성)
		MyfreeMapper myfreeMapper = 
				sqlSession.getMapper(MyfreeMapper.class);
		//삽입 후 삽입한 결과 상태 반환하기 위해 반환값을 int로 정해줌
		int res = myfreeMapper.insertMember(member_listVO);
		
		System.out.println("res=" + res);
		return res;
		
	}

	@Override
	public int userCheck(Member_listVO member_listVO) {
		MyfreeMapper myfreeMapper = 
				sqlSession.getMapper(MyfreeMapper.class);
		int res = myfreeMapper.userCheck(member_listVO);
		
		return res;
	}
	
	@Override
	public Member_listVO selectMember(String email) {
		MyfreeMapper myfreeMapper = 
				sqlSession.getMapper(MyfreeMapper.class);
		Member_listVO member_list = myfreeMapper.selectMember(email);
		return member_list;
	}
	
	
	public List<Myfree_doc_confirmVO> selectConfirm(String email) {
		MyfreeMapper myfreeMapper = 
				sqlSession.getMapper(MyfreeMapper.class);
		List<Myfree_doc_confirmVO> myfree_doc_confirm = myfreeMapper.selectConfirm(email);
		return myfree_doc_confirm;
	}
	
	public List<Myfree_authVO> selectAuth(String email) {
		MyfreeMapper myfreeMapper = 
				sqlSession.getMapper(MyfreeMapper.class);
		List<Myfree_authVO> myfree_auth = myfreeMapper.selectAuth(email);
		
		return myfree_auth;
	}
	
	public List<Myfree_docVO> selectDoc(String email) {
		MyfreeMapper myfreeMapper = 
				sqlSession.getMapper(MyfreeMapper.class);
		List<Myfree_docVO> myfree_docVO = myfreeMapper.selectDoc(email);
		
		return myfree_docVO;
	}
	
	public Myfree_doc_confirmVO selectConfirm_write(int confirm_no) {
		MyfreeMapper myfreeMapper = 
				sqlSession.getMapper(MyfreeMapper.class);
		Myfree_doc_confirmVO myfree_doc_confirm_write = myfreeMapper.selectConfirm_write(confirm_no);
		
		return myfree_doc_confirm_write;
	}
	
	
	public int insertFree_auth(Myfree_authVO myfree_authVO) {
		MyfreeMapper myfreeMapper = 
				sqlSession.getMapper(MyfreeMapper.class);
		int myfree_auth_write = myfreeMapper.insertFree_auth(myfree_authVO);
		
		return myfree_auth_write;
	}
	
	
	public Myfree_authVO selectAuth_view(int fadoc_no) {
		MyfreeMapper myfreeMapper = 
				sqlSession.getMapper(MyfreeMapper.class);
		myfreeMapper.setReadCountUpdate(fadoc_no);
		Myfree_authVO auth_view = myfreeMapper.selectAuth_view(fadoc_no);
		
		return auth_view;
	}
	public Myfree_doc_confirmVO selectConfirm_view(int confirm_no) {
		MyfreeMapper myfreeMapper = 
				sqlSession.getMapper(MyfreeMapper.class);
		Myfree_doc_confirmVO confirm_view = myfreeMapper.selectConfirm_view(confirm_no);
		
		return confirm_view;
	}
	
	public void update_fdoc_img(Myfree_doc_confirmVO myfree_doc_confirmVO) {
		MyfreeMapper myfreeMapper = 
				sqlSession.getMapper(MyfreeMapper.class);
		int res = myfreeMapper.update_fdoc_img(myfree_doc_confirmVO);
		
	}
}
