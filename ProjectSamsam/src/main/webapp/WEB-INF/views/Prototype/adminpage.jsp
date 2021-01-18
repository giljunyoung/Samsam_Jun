<%@ page language = "java" contentType = "text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="com.project.samsam.myfree.*" %>
<%
	String email = (String) session.getAttribute("email");
	//email.toUpperCase();
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
<title>Insert title here</title>
<!-- 폰트 -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@300&display=swap" rel="stylesheet">
<!-- 어드민페이지 -->
<link href="resources/css/admin_sidebar.css" rel="stylesheet">
<!-- 아이콘 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==" crossorigin="anonymous" />
<!-- 제이쿼리 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" integrity="sha512-bLT0Qm9VnAYZDflyKcBaQ2gg0hSYNQrJ8RilYldYQ1FxQYoCLtUjuuRuZo+fjqhx/qtq/1itJ0C2ejDxltZVFg==" crossorigin="anonymous"></script>
<script src="resources/js/admin_sidebar.js"></script>
</head>
<body>
<div class ="body_content">

<header id = "header">
	<div class="d-flex flex-column">
		<div class ="profile">
			<img src = "resources/img/ssong.PNG" class = "img-circle">
			<h1 class = "text-light">
				<a href = "#" class = "onMember">  <%= email.toUpperCase()%> </a>
			</h1>
		</div>
		<div class ="admin_inout">
			<button type="button" class ="grade">ADMIN</button>
			<button type="button" class ="grade" onclick="location.href='loginForm.me'">LOGOUT</button>
		</div>
						
		<ul>
			<li>
				<a href = "#" class = "nav-menu"><i class= "far fa-clipboard menu"></i><span class="a-menu"> 게시물관리</span></a>
			</li>
			<li>
				<a href="admin_main.me" class = "nav-menu"><i class = "fas fa-users menu"></i><span class="a-menu"> 회원관리</span></a>
			</li>
			<li>
				<a href="admin_pay.me" class = "nav-menu"><i class = "fas fa-ticket-alt menu"></i><span class="a-menu"> 이용권관리</span></a>
			</li>
			<li>
				<a href="#" class = "nav-menu"><i class = "fas fa-dog menu"></i><span class="a-menu"> 책임분양</span></a>
			</li>
		</ul>
</div>
</header>

<div class = "main_content">
<!-- 메인컨텐트 -->
<div class = "content">

			<br> <br> <br> <br>
			<h3>책임분양 인증글</h3>
			<br>
			<table class="table table-lg">
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



</div>
</div><!-- 메인컨텐트 -->

<!-- right-sidebar -->
<div class="right-container">
<!-- 달력 --> 
<widget class="no-drag">
  <table id="calendar">
    <thead>
      <tr height="35px">
        <td><label onclick="prev()" style="color: #ccc;"><</label></td>
        <td colspan="5" id="monthTable"></td>
        <td><label onclick="next()" style="color: #ccc;">></label></td>
      </tr>
      <tr id="dateHead">
        <td>S</td>
        <td>M</td>
        <td>T</td>
        <td>W</td>
        <td>T</td>
        <td>F</td>
        <td>S</td>
      </tr>
    </thead>
    <tbody></tbody>
  </table>
  <script>
    makeArray();
  </script>
</widget>
<!-- 투두리스트 -->
	<!-- 입력 -->
	<div class = "todolist">
      <input type="text" placeholder="Add A Task" class ="txt"> 
    <!-- to do list -->
      <div class="notdone">
        <h3>To Do List</h3>
      </div>
	<!-- done list -->      
      <div class="done">
        <h3>Done</h3>
      </div>
     </div>

<!-- pageup button -->
<div class ="back-to-top">
<a href="#" class ="back-to-top" style="display: inline;">
	<i class = "fas fa-angle-up"></i>
</a>
</div>
</div><!-- right-sidebar -->
</div><!-- 바디컨텐트 -->
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


</body>
</html>