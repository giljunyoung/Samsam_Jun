<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page import="com.project.samsam.myfree.*" %>

<%
	List<Myfree_authVO> authlist = (List<Myfree_authVO>)request.getAttribute("authlist");
	int listcount=((Integer)request.getAttribute("listcount")).intValue();
	int nowpage=((Integer)request.getAttribute("page")).intValue();
	int maxpage=((Integer)request.getAttribute("maxpage")).intValue();
	int startpage=((Integer)request.getAttribute("startpage")).intValue();
	int endpage=((Integer)request.getAttribute("endpage")).intValue();

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>관리자페이지_책임분양 관리</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
	crossorigin="anonymous"></script>


<script>
//책임인증글 팝업
var popupWidth = 850;
var popupHeight = 900;

var popupX = (window.screen.width / 2) - (popupWidth / 2);
var popupY= (window.screen.height / 2) - (popupHeight / 2);

</script>

<!-- 새로고침시 스크롤 유지 -->
<script>
﻿
//item click 을 통한 상세 화면 이동관련 함수

function itemClick(itemIndex) {

//쿠키에 관련 내용 저장

var scrollHeightPosition = (document.documentElement && document.documentElement.scrollTop) || document.body.scrollTop;

setCookie("category", "myCategory"); // 쿠키에 내용을 정의하는 사용자 정의 함수

setCookie("scroll_position", scrollHeightPosition); // 쿠키에 내용을 정의하는 사용자 정의 함수


//상세 화면 이동

nextPage(itemIndex); // 페이지 이동하는 사용자 정의 함수

}


//body.onload 시 사용하게 될 함수

function afterLoad() {

//쿠키에 저장된 내용 호출

var category = getCookie("category"); // 쿠키의 내용을 불러오는 사용자 정의 함수

var scrollPosition = getCookie("scroll_position"); // 쿠키의 내용을 불러오는 사용자 정의 함수

var pageCategory = 'myCategory'; // 페이지 로딩 시 현제 카테고리 내용

if (category != "" && category != 'undefined' && category == pageCategory &&

scrollPosition != "" && scrollPosition != 'undefined') {

window.scroll(0, scrollPosition); // 또는 body.scrollTop(scrollPosition);

}

//쿠키 내용 초기화

setCookie("category", "");

setCookie("scroll_position", "");

}

﻿</script>

<style>
ul, li {
	list-style: none;
}

a {
	text-decoration: none;
	color: black;
}

a:hover { 
	text-decoration:none !important; 
	color : #4BA0B5;
}

html,body {
	margin : 0;
	padding : 0;
	height:120%
}

.wrap {
	width: 1200px;
	min-height: 100%;
	margin: 0 auto;
	position: relative;
}

.aside {
	width: 300px;
	postion: absolute;
}

.section {
	left: 330px;
	top: 100px;
	width: 870px;
	position: absolute;
}

.footer {
	position:relative;
	bottom:0;
	border-top:solid 1px #cccccc;
}

.btn-primary {
    color: #007bff;
    background-color: #fff;
    border-color: #007bff;
}
.btn-danger {
    color: #dc3545;
    background-color: #fff;
    border-color: #dc3545;
}



</style>
</head>
<body>
	<div class="wrap">
		<div class="aside">
			<div>
				<center>
					<br> <a href="/"><img src="./resources/images/logo2.png"
						width="200" height="140"></a>
				</center>
			</div>
			<br> <br> <br>
			<ul class="list-group list-group-flush">
				<li class="list-group-item"><a href="/">게시물 관리</a></li>
				<li class="list-group-item"><a href="/">회원관리</a></li>
				<li class="list-group-item"><a href="/">이용권 관리</a></li>
				<li class="list-group-item"><a href="/">책임분양 관리</a></li>
			</ul>
		</div>
		<div class="section">
			<div class="row">
				<div class="col-md-10"></div>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a class="btn btn-outline-info" href="adminfree_auth.me">ADMIN</a>
			</div>
			<br> <br> <br> <br>
			<h3>책임분양 인증글</h3>
			<br>
			<table class="table table-sm">
				<thead>
					<tr>
						<th scope="col" class="text-center" width="10%">확정번호</th>
						<th scope="col" class="text-center" width="45%">제목</th>
						<th scope="col" class="text-center" width="10%">피분양자</th>
						<th scope="col" class="text-center" width="15%">작성일</th>
						<th scope="col" class="text-center" width="20%">상태</th>
					</tr>
				</thead>
				<tbody>
					<%
					int num = listcount - ((nowpage - 1) * 10);
					for(int i=0; i<authlist.size(); i++) {
						Myfree_authVO auth_list = (Myfree_authVO)authlist.get(i);
				%>
					<tr>
						<td class="text-center"><a
							href="free_auth_datail.me?fadoc_no=<%=auth_list.getFadoc_no() %>">
								<%=auth_list.getFadoc_confirm_no() %></a></td>
						<td><a
							href="free_auth_view.me?fadoc_no=<%=auth_list.getFadoc_no() %>"
							onclick="window.open(this.href, '_blanck', 'height='+popupHeight + ',width=' + popupWidth + ',left=' + popupX + ',top=' + popupY); return false">
								&nbsp;&nbsp;&nbsp;<%=auth_list.getFadoc_subject() %></a></td>
						<td class="text-center"><%=auth_list.getFadoc_r_email() %></td>
						<td class="text-center"><%=auth_list.getFadoc_date() %></td>


						<%if (auth_list.getFadoc_check().equals("인증완료")) { %>
						<td class="text-center"><%=auth_list.getFadoc_check() %>
							<button type="button" class="btn btn-warning btn-sm"
								id="free_auth_re">
								<a href="free_auth_re.me?fadoc_no=<%=auth_list.getFadoc_no()%>">인증취소</a>
							</button></td>
						<%
							}
						else if(auth_list.getFadoc_check().equals("인증실패")) {
						%>
						<td class="text-center"><%=auth_list.getFadoc_check() %>
							<button type="button" class="btn btn-warning btn-sm"
								id="free_auth_re">
								<a href="free_auth_re.me?fadoc_no=<%=auth_list.getFadoc_no()%>">재검토</a>
							</button></td>
						<%
						}
						else {
						%>
						<td class="text-center">
							<button type="button" class="btn btn-primary btn-sm"
								id="free_auth_ok">
								<a href="free_auth_ok.me?fadoc_no=<%=auth_list.getFadoc_no()%>">인증</a>
							</button>
							<button type="button" class="btn btn-danger btn-sm"
								id="free_auth_no">
								<a href="free_auth_no.me?fadoc_no=<%=auth_list.getFadoc_no()%>">반려</a>
							</button>
						</td>
						<%
						}
						%>
					</tr>
					<% 
					}
					%>
					<tr align=center height=30>
						<td colspan=5 style="font-family: Tahoma; font-size: 10pt;">
							<%if(nowpage<=1){ %> <!-- 이전페이지가 존재하지 않을 때 --> [이전]&nbsp; <!-- 이전 버튼 비활성화 -->
							<%}else{ %> <!-- 이전페이지가 존재할 때 --> <a
							href="./adminfree_auth.me?page=<%=nowpage-1 %>">[이전]</a>&nbsp; <%} %>

							<%for(int a=startpage;a<=endpage;a++){
							if(a==nowpage){%> [<%=a %>] <%}else{ %> <!-- 현재 페이지가 nowpage가 아닐 때 -->
							<a href="./adminfree_auth.me?page=<%=a %>">[<%=a %>]
						</a> &nbsp; <%} %> <%} %> <%if(nowpage>=maxpage){ %> [다음] <%}else{ %> <a
							href="./adminfree_auth.me?page=<%=nowpage+1 %>">[다음]</a> <%} %>
						</td>
					</tr>
				</tbody>
			</table>

			<div class="footer">
				<hr>
				<footer class="bg-white text-black small">
					<div class="pt-6 pb-4 pt-lg-7 pb-lg-6">
						<div class="container">
							<div class="row justify-content-md-between">
								<div
									class="col-md-5 col-lg-4 d-flex flex-column justify-content-between">
									<svg width="137" height="42" class="mx-auto mx-md-0"
										xmlns="http://www.w3.org/2000/svg" viewBox="0 0 701 217">
								<path
											d="M122.73 185.24l12.57-15.05c8.77 7.2 18.58 11.4 29.58 11.4 8.37 0 12.7-3.4 12.7-8.25 0-5.36-4.2-6.54-17.28-9.68-19.23-4.32-33.5-9.56-33.5-27.62 0-17.27 13.87-28.8 34.42-28.8 15 0 26.83 4.32 36.38 12.3l-11.38 16c-8.2-6.3-17.28-9.54-25.65-9.54-7.2 0-11.26 3.4-11.26 7.85 0 5.5 4.32 7.33 17.67 10.2 20.15 4.32 33.1 10.07 33.1 27 0 18.06-13.74 29.3-36 29.3-15.96-.08-30.48-5.3-41.35-15.13zm190.7-6.02l8 6.94-10.87 12.56-8.77-7.6a49.08 49.08 0 0 1-28.53 9.16c-26.18 0-48.25-21.3-48.25-46.6s22.12-46.46 48.3-46.46 48.43 21.2 48.43 46.46a44 44 0 0 1-8.3 25.52zm-28.14-2.48l-9.28-8.12 10.86-12.56 9.56 8.24a26 26 0 0 0 2.22-10.6c0-14.13-11.64-26.17-25.4-26.17s-25.4 12-25.4 26.17 11.66 26.3 25.4 26.3a23.74 23.74 0 0 0 12.04-3.26zm51.57-17.4V108.8h22.38v49.47c0 12.7 8.12 21.73 19.37 21.73s19.5-9 19.5-21.73V108.8h22.25v50.52c0 24.08-17.14 41-41.75 41s-41.75-16.92-41.75-41zm158.23 26.3h-35.6l-5.24 13.1H429.1l35.6-89.9h25.13l35.6 89.9H500.3zm-6.93-17.53l-10.87-27.62-10.86 27.62zm102.35 30.62l-19.77-28.14h-11v28.14h-22.37v-89.9h41.75c19.76 0 34.16 12.7 34.16 30.9 0 13.1-7.46 23.42-19.1 28.14l21.73 30.88zm-30.76-48.55H577c7.72 0 13.2-4.2 13.2-10.47s-5.5-10.47-13.2-10.47h-17.26zm92.66-21.34v14h44v20h-44v15.87h48.43v20H630v-89.9h70.8v20z"
											fill="#ffffff"></path>
								<path d="M3.33 3.3h210.03v210.03H3.33z" fill="none"
											stroke="#ffffff" stroke-miterlimit="10" stroke-width="6"></path></svg>
									<div class="mt-4 mb-3 mt-lg-5 pt-lg-2 mx-auto mx-md-0">
										<a href="#" class="text-reset text-decoration-none"><svg
												width="15" height="15" class="mx-1"
												xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
										<title>social-media-facebook</title><path
													d="M18.14,7.17A.5.5,0,0,0,17.77,7H14V5.59c0-.28.06-.6.51-.6h3a.44.44,0,0,0,.35-.15A.5.5,0,0,0,18,4.5V.5a.5.5,0,0,0-.5-.5H13.17C8.37,0,8,4.1,8,5.35V7H5.5a.5.5,0,0,0-.5.5v4a.5.5,0,0,0,.5.5H8V23.5a.5.5,0,0,0,.5.5h5a.5.5,0,0,0,.5-.5V12h3.35a.5.5,0,0,0,.5-.45l.42-4A.5.5,0,0,0,18.14,7.17Z"></path></svg>
										</a><a href="#" class="text-white text-decoration-none"><svg
												width="15" height="15" class="mx-1"
												xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
										<title>social-media-twitter</title><path
													d="M23.32,6.44a.5.5,0,0,0-.2-.87l-.79-.2A.5.5,0,0,1,22,4.67l.44-.89a.5.5,0,0,0-.58-.7l-2,.56a.5.5,0,0,1-.44-.08,5,5,0,0,0-3-1,5,5,0,0,0-5,5v.36a.25.25,0,0,1-.22.25c-2.81.33-5.5-1.1-8.4-4.44a.51.51,0,0,0-.51-.15A.5.5,0,0,0,2,4a7.58,7.58,0,0,0,.46,4.92.25.25,0,0,1-.26.36L1.08,9.06a.5.5,0,0,0-.57.59,5.15,5.15,0,0,0,2.37,3.78.25.25,0,0,1,0,.45l-.53.21a.5.5,0,0,0-.26.69,4.36,4.36,0,0,0,3.2,2.48.25.25,0,0,1,0,.47A10.94,10.94,0,0,1,1,18.56a.5.5,0,0,0-.2,1,20.06,20.06,0,0,0,8.14,1.93,12.58,12.58,0,0,0,7-2A12.5,12.5,0,0,0,21.5,9.06V8.19a.5.5,0,0,1,.18-.38Z"></path></svg>
										</a><a href="#" class="text-white text-decoration-none"><svg
												width="15" height="15" class="mx-1"
												xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
										<title>professional-network-linkedin</title><rect x="2"
													y="8.5" width="5" height="14" rx="0.5" ry="0.5"></rect>
										<ellipse cx="4.48" cy="4" rx="2.48" ry="2.5"></ellipse>
										<path
													d="M18.5,22.5h3A.5.5,0,0,0,22,22V13.6C22,9.83,19.87,8,16.89,8a4.21,4.21,0,0,0-3.17,1.27A.41.41,0,0,1,13,9a.5.5,0,0,0-.5-.5h-3A.5.5,0,0,0,9,9V22a.5.5,0,0,0,.5.5h3A.5.5,0,0,0,13,22V14.5a2.5,2.5,0,0,1,5,0V22A.5.5,0,0,0,18.5,22.5Z"></path></svg>
										</a><a href="#" class="text-white text-decoration-none"><svg
												width="15" height="15" class="mx-1"
												xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
										<title>social-pinterest</title><path
													d="M7.13,22.36a.4.4,0,0,0,.29.33h.11a.45.45,0,0,0,.36-.2,12.8,12.8,0,0,0,2.19-4c.09-.33.39-1.52.61-2.37a.25.25,0,0,1,.4-.13,4.12,4.12,0,0,0,2.53.88c3.9,0,6.73-3.57,6.73-8.48,0-3.51-2.94-7.13-7.86-7.13C7,1.29,3.65,5.23,3.65,9c0,2.35,1,4.15,2.62,4.82a.66.66,0,0,0,.94-.47l.24-1a.82.82,0,0,0-.22-.9,3.25,3.25,0,0,1-.73-2.2,5.47,5.47,0,0,1,5.67-5.5c2.93,0,4.75,1.67,4.75,4.36,0,3.5-1.53,6.14-3.56,6.14A1.73,1.73,0,0,1,12,13.7a1.58,1.58,0,0,1-.28-1.38c.13-.54.3-1.1.47-1.65A10.19,10.19,0,0,0,12.77,8,1.84,1.84,0,0,0,10.89,6C9.45,6,8.33,7.43,8.33,9.31a5.13,5.13,0,0,0,.32,1.79.5.5,0,0,1,0,.29L7.17,17.7A13.38,13.38,0,0,0,7.13,22.36Z"></path></svg>
										</a><a href="#" class="text-white text-decoration-none"><svg
												width="15" height="15" class="mx-1"
												xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
										<title>designer-community-dribbble</title><path
													d="M24,12A12,12,0,0,0,6.28,1.45l-.05,0A12.09,12.09,0,0,0,0,12a11.94,11.94,0,0,0,2.71,7.58l0,0h0A12,12,0,0,0,24,12ZM20.07,6.12A9.93,9.93,0,0,1,22,11.65c-.88-.09-1.82-.14-2.62-.14a24.12,24.12,0,0,0-4.17.38c-.27-.69-.56-1.37-.89-2A23.88,23.88,0,0,0,20.07,6.12ZM18.74,4.64a21.88,21.88,0,0,1-5.42,3.47A23.94,23.94,0,0,0,8.65,2.59a9.9,9.9,0,0,1,10.09,2ZM6.68,3.55a22,22,0,0,1,4.75,5.3A22,22,0,0,1,4.35,10c-.71,0-1.42,0-2.13-.11A10,10,0,0,1,6.68,3.55ZM2,11.92c.78.08,1.56.13,2.34.13a23.93,23.93,0,0,0,8.09-1.42q.43.84.78,1.71a23.78,23.78,0,0,0-9.59,5.11A9.9,9.9,0,0,1,2,11.92ZM4.87,19a21.79,21.79,0,0,1,9-4.78,22.1,22.1,0,0,1,.94,6.39c0,.33,0,.66,0,1A9.94,9.94,0,0,1,4.87,19Zm12,1.76s0-.1,0-.15a24.13,24.13,0,0,0-1-6.8,22.1,22.1,0,0,1,3.5-.3c.77,0,1.66.05,2.49.14A10,10,0,0,1,16.82,20.76Z"></path></svg></a>
									</div>
								</div>
								<div class="col-md-7 col-lg-6 mt-5 mt-md-0">
									<div class="row">
										<div class="col-6 col-md-4 mb-4 mb-md-0">
											<h3 class="h6 text-uppercase mb-3">Services</h3>
											<ul class="list-unstyled">
												<li class="mb-1"><a href="#" class="text-reset">UI
														Kit</a></li>
												<li class="mb-1"><a href="#" class="text-reset">Documentation</a></li>
												<li class="mb-1"><a href="#" class="text-reset">Page
														builder</a></li>
											</ul>
										</div>
										<div class="col-6 col-md-4 mb-4 mb-md-0">
											<h3 class="h6 text-uppercase mb-3">Company</h3>
											<ul class="list-unstyled">
												<li class="mb-1"><a href="#" class="text-reset">About
														Us</a></li>
												<li class="mb-1"><a href="#" class="text-reset">Contact
														Us</a></li>
												<li class="mb-1"><a href="#" class="text-reset">Careers</a></li>
											</ul>
										</div>
										<div class="col-6 col-md-4">
											<h3 class="h6 text-uppercase mb-3">Help</h3>
											<ul class="list-unstyled">
												<li class="mb-1"><a href="#" class="text-reset">FAQs</a></li>
												<li class="mb-1"><a href="#" class="text-reset">Pricing</a></li>
												<li class="mb-1"><a href="#" class="text-reset">Terms</a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

				</footer>
			</div>
		</div>
	</div>


</body>
</html>