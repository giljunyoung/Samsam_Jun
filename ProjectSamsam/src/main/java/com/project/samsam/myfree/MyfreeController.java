package com.project.samsam.myfree;

import java.io.File;
import java.io.PrintWriter;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.project.utils.UploadFileUtils;


@Controller
public class MyfreeController {
	
	@Autowired
	private MyfreeServiceImpl MyfreeService;
	
	@Resource(name="uploadPath")
	private String uploadPath;
	
	//Ȯ�ο�
	@RequestMapping("/login.me")
	public String userCheck(Member_listVO member_listVO, HttpSession session, HttpServletResponse response) throws Exception{
		int res = MyfreeService.userCheck(member_listVO);
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter writer = response.getWriter();
		if (res==1) {
			session.setAttribute("email", member_listVO.getEmail());
			writer.write("<script>alert('�α��� ����!!'); location.href='./myfree_auth.me';</script>");
			//return "redirect:/main.me"
		}
		else {
			writer.write("<script>alert('�α��� ����!!'); location.href='./loginform.me';</script>");
			//return "redirect:/loginform.me
		}
		return null;
	}
	
	@RequestMapping("/loginform.me")
	public String loginForm() throws Exception {
	return "loginForm";	
	}
	
	@RequestMapping("/joinform.me") 
	public String joinForm() throws Exception { 
		return "joinForm";
	}
	
	@RequestMapping("/joinprocess.me")
	public String insertMember(Member_listVO member_listVO, HttpServletResponse response)
			throws Exception {
		int res = MyfreeService.insertMember(member_listVO);
		System.out.println(res);
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter writer = response.getWriter();
		if (res == 1)
		{
			writer.write("<script>alert('ȸ������ ����!!'); location.href='./loginform.me';</script>");
		}
		else {
			writer.write("<script>alert('ȸ������ ����!!'); location.href='./joinform.me';</script>");
		}
		return null;
	}
	
	
	//���������� å�Ӻо�
	@RequestMapping("/myfree_auth.me")
		public String mypage_free_auth(Model model, HttpSession session) throws Exception {
		
		//Member_listVO
		String email = (String)session.getAttribute("email");
		Member_listVO member_listVO = MyfreeService.selectMember(email);
		
		//Myfree_doc_confirmVO
		List<Myfree_doc_confirmVO> myfree_doc_confirmVO = MyfreeService.selectConfirm(email);
		
		
		//Myfree_authVO
		List<Myfree_authVO> myfree_authVO = MyfreeService.selectAuth(email);
		
		//Myfree_doc
		List<Myfree_docVO> myfree_docVO = MyfreeService.selectDoc(email);
		
		model.addAttribute("member_listVO", member_listVO);
		model.addAttribute("myfree_doc_confirmVO", myfree_doc_confirmVO);
		model.addAttribute("myfree_authVO", myfree_authVO);
		model.addAttribute("myfree_docVO", myfree_docVO);
		
		return "mypage_free_auth";
	}
	
	
	//å�Ӻо� ������ �ۼ�â ����
	@RequestMapping("/write_auth_form.me")
		public String write_auth(Model model, Myfree_doc_confirmVO confirm_list, HttpSession session) throws Exception {
		
		String email = (String)session.getAttribute("email");
		Member_listVO member_listVO = MyfreeService.selectMember(email);
		
		int confirm_no = confirm_list.getConfirm_no();
		
		Myfree_doc_confirmVO myfree_doc_confirm_write = MyfreeService.selectConfirm_write(confirm_no);
		
		
		model.addAttribute("member_listVO", member_listVO);
		model.addAttribute("myfree_doc_confirm_write", myfree_doc_confirm_write);
		
		return "write_free_auth_form";
	}
	
	//å�Ӻо� ������ �ۼ�
	@RequestMapping("/write_auth.me")
	public String write_auth(Myfree_authVO myfree_authVO) throws Exception {
		
		int res = MyfreeService.insertFree_auth(myfree_authVO);

		return "redirect:/myfree_auth.me";
		
	}
	
	//å�Ӻо� ������ ��ȸ
	@RequestMapping("/free_auth_view.me")
		public String free_auth_view(@RequestParam(value="fadoc_no", required=true) int fadoc_no, Model model) {
		
		Myfree_authVO auth_view = MyfreeService.selectAuth_view(fadoc_no);
		int confirm_no = auth_view.getFadoc_confirm_no();
		Myfree_doc_confirmVO confirm_view = MyfreeService.selectConfirm_view(confirm_no);
		
		model.addAttribute("auth_view", auth_view);
		model.addAttribute("confirm_view", confirm_view);
		
		return "free_auth_view";
	}
	
	//������
	@RequestMapping("/customer_service.me")
	public String customer_service(Model model, HttpSession session) throws Exception { 
		String email = (String)session.getAttribute("email");
		Member_listVO member_listVO = MyfreeService.selectMember(email);
		
		model.addAttribute("member_listVO", member_listVO);
		
		return "customer_service";
	}
	
	//å�Ӻо� ���� �����ϱ�.
	@RequestMapping(value = "/fileUpload.me", method = RequestMethod.POST)
	public String fileUpload(Myfree_doc_confirmVO myfree_doc_confirmVO, MultipartFile file) throws Exception {
		String imgUploadPath = uploadPath + File.separator + "imgUpload";
		String ymdPath = UploadFileUtils.calcPath(imgUploadPath);
		String fileName = null;

		if(file != null) {
		 fileName =  UploadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath); 
		} else {
		 fileName = uploadPath + File.separator + "images" + File.separator + "none.png";
		}

		myfree_doc_confirmVO.setConfirm_fdoc_img(File.separator + "imgUpload" + ymdPath + File.separator + fileName);
		
		MyfreeService.update_fdoc_img(myfree_doc_confirmVO);
		
		return "redirect:/myfree_auth.me";
	}
	
}
