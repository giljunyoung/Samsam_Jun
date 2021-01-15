<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page import="com.project.samsam.myfree.*" %>


<%
	//String email = (String)session.getAttribute("email");
	//email.toUpperCase();
	Member_listVO member_listVO = (Member_listVO)request.getAttribute("member_listVO");
	List<Myfree_doc_confirmVO> myfree_doc_confirmVO = (List<Myfree_doc_confirmVO>)request.getAttribute("myfree_doc_confirmVO");
	List<Myfree_authVO> myfree_authVO = (List<Myfree_authVO>)request.getAttribute("myfree_authVO");
	List<Myfree_docVO> myfree_docVO = (List<Myfree_docVO>)request.getAttribute("myfree_docVO");
		
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>마이페이지 책임분양 관리</title>

<!-- 폰트 -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@300&display=swap" rel="stylesheet">

<!-- 아이콘 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==" crossorigin="anonymous" />

<!-- 부트스트랩 4.0 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<!-- 제이쿼리 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" integrity="sha512-bLT0Qm9VnAYZDflyKcBaQ2gg0hSYNQrJ8RilYldYQ1FxQYoCLtUjuuRuZo+fjqhx/qtq/1itJ0C2ejDxltZVFg==" crossorigin="anonymous"></script>


<style>
/* 공통으로 사용하는 CSS */
@charset "utf-8";

* {
   margin:0;
   padding: 0;
}
html{
   margin:0 auto;
   width : 100%;
   height: 100%;
    overflow: auto;
}


body {
   margin: 0;
   height: auto;
    min-height : 600px;
    box-sizing : content-box;
   line-height: 1.7;
    color: gray;
      font-family: 'Noto Sans KR', sans-serif;
    font-weight: 300;
    font-size: .9rem;
}


a{
   text-decoration : none;
   color : #9494b8;
}
a:hover {
    color: #0056b3;
    text-decoration: none;
}

body {
   text-align: -webkit-center;
   display : flex;
   flex-direction : column;
   justify-content : space-between;
}

.body_content{
     margin : 0;
     padding : 0;
     width : 100%;
     height:100vh;
    display : flex;
    flex-direction : column;
}

#header {
    width: 100%;
    height: 190px;
    box-sizing: content-box;
    display: flex;
    flex-direction: column;
    border-bottom: 1px solid #efefef;
    padding-bottom: 18px;
    background-color : #fff;
    position : fixed;
      z-index : 10000;
    top : 0;
    left : 0;
    right : 0;
}

.inout_gocen{
   position : inline;
   display : flex;
   justify-content : flex-end;
   margin-top : 20px;
   margin-right : 340px;
   background-color : #fff;
}
.fixinner{
   position: fixed; 
}
.header-top {
   margin-top : -10px;
   display : flex;
   justify-content : flex-start;
   margin-right: auto;
}
.header_btn{
   width : 70px;
   height : 30px;
   background-color : #fff;
   color : #9494b8;
    border-radius: 5px;
    border : none;
    outline : 0;
}
.header_btn:hover{
   color : #6200cc;
   font-weight: 700;
}
#logout, #mypage{
   display : none;
}
.img-circle{
   width : 450px;
   height : 150px;
   display: block;
   margin : 0 auto;
}
.nav-menu{
   margin : 0 auto;
   display : flex;
   justify-content : space-around;
   align-items: baseline;
   width: 1200px;
}
.sticky-wrapper{
   width: 400px;
   height: 50px;
   margin : 0;
   margin-left: 0;
     position: sticky;
     list-style : none;
    display : flex;
    padding: 0;
}

.sticky-wrapper > li{
   padding : 8px 8px;
   list-style-type:none;
   float: left;
}
.sticky-wrapper > ul{
   padding : 8px 8px;
}

li.dropdown {
    color: #9494b8;
    background: #fff;
    transition: .3s all ease;
    font-size: 20px;
    width: 90px;
    height: 50px;
}

.sticky-wrapper.active{
   position: fixed;
    top: 0px;
}

/* dropdown */
.dropdown-menu {
   display: none;
      justify-content : flex-start;
   position: absolute;
   list-style : none;
    visibility: visible;
    background-color: #fff;
   width: 1200px;
   top : 48px;
   margin-left : -30px;
   border: none;
   border-top: 1px solid #efefef;
}

.board {
	padding-left: 46px;
}
.care {
	padding-left: 30px;
}
.commu {
	padding-left: 35px;
}

li.dropdown > a {
    text-decoration: none;
}

.dropdown-menu li{
   margin-right : 40px;
}
.dropdown:hover .dropdown-menu { 
   display: flex; 
   visibility: visible; 
}

/* search-wrapper */
.search-wrapper {
  padding : 5px;
  width: 280px;
  height: 38px;
  display: flex;
  justify-content : space-betwwen;
  background: #fff;
  border: 2px solid #9494b8;
  border-radius: 10px;
}
.search-box {
  height : 100%;
  padding: 0;
  border: none;
  background: #fff;
}
.search-box.input {
  width : 80%;
  margin-left : 15px;
  font-size : .9rem;
}
.search-box.input:focus {outline:none;}

.search-box.btn {
  color : #9494b8;
  text-align : left; 
}

/* search-wrqpper */

.main-content{
   width : 100%;
   height : auto;
   margin : 0 auto;
}


/* footer */
#footer {
    margin: 0;
    width: fit-content;
    bottom: 55px;
    position: absolute;
    left: 50%;
    margin-left: -336px;
}
p{
   text-align : center;
}
.fa-heart{
   color : red;
}

/* pageup button */
.back-to-top{
   width : 40px;
   height : 40px;
   margin : 0 auto;
   font-size : 24px;
   color : white;
   background-color : #149DDD;
   border-radius : 50%;
   visibility : visible;
   position: fixed; 
   bottom: 45px; 
   right: 30px;
   text-align : center;
}
/* pageup button */
*, ::after, ::before {
    box-sizing: border-box;
}


/*카카오톡 톡상담*/
.kakaoChat {
    text-align: right;
    position: fixed;
    margin-right: 28px;
    bottom: 90px;
    right: 0;
}
.kakao_btn {
	border-radius: 1rem!important;
}

/* side menu와 내용 묶음 */
.content-wrap {
	width: 1200px;
	min-height: 100%;
	margin: 0 auto;
	position: relative;
	top: 50px;
	
}
/* side menu 틀*/
.sidemenu-section {
    width: 200px;
    font-size: 18px;
    text-align: left;
    min-height: 740px;
    border-right-color: darkblue;
    border-right: 1px solid #efefef;
    padding: 0px 0px 0 0;
    margin-left: 0;
    margin-top: 210px;
    position: fixed;
}


/* 내용 틀*/
.content-section {
    width: 1001px;
    height: max-content;
    position: absolute;
    left: 199px;
    text-align: left;
    font-size: 14px;
    margin-top: 0px;
    color: black;
    margin-left: 0;
    padding-bottom: 100px;
    border-left-color: darkblue;
    border-left: 1px solid #efefef;
    padding-left: 50px;
    min-height: 940px;
    padding-top: 200px;
}


/* 각각의 페이지에서 사용할 CSS */
.list-group {
	border-bottom: 1px solid rgba(0,0,0,.125);
}
.list-group-item {
    position: relative;
    display: block;
    padding: .75rem 1.25rem;
    margin-bottom: -1px;
    background-color: white;
    border: 1px solid rgba(0,0,0,.125);
}
/* 현재 페이지의 서브메뉴 */
li.list-group-item.click > a {
    font-weight: bold;
    color: #5c5c8a;
}


.list-group-item > a {
	text-decoration : none;
	}

/* 프로필 사진  */
.profile {
    text-align: center;
}



</style>

</head>
<body>
<div class ="body_content">
<header id = "header">

	<div class ="inout_gocen">
			<a href="loginForm.me"><input type="button" class= "header_btn" id="login" value="로그인"></a>
			<a href="home.me"><input type="button" class= "header_btn" id="logout" value="로그아웃"></a>
			<a href="joinForm.me"><input type="button" class= "header_btn" id="signin" value="회원가입"></a>
			<a href="myfree_auth.me"><input type="button" class= "header_btn" id="mypage" value="마이페이지"></a>
			<a href="customer_service.me"><input type="button" class= "header_btn" id="gocen" value="고객센터"></a>
		</div>
	
	
	<div class="nav-menu">
				<ul class="sticky-wrapper">
					<li class="dropdown"><a href="main.me">HOME</a></li>
					<li class="dropdown"><a href="board.me">분양</a>
						<ul class="dropdown-menu board">
							<li><a href="#">&nbsp;&nbsp;가정분양</a></li>
							<li><a href="#">책임분양</a></li>
							<li><a href="#">업체분양</a></li>
						</ul></li>
					<li class="dropdown"><a href="care.me">보호소</a>
						<ul class="dropdown-menu care">
							<li><a href="#">&nbsp;&nbsp;&nbsp;&nbsp;보호소</a></li>
							<li><a href="#">파양</a></li>
							<li><a href="#">실종</a></li>
						</ul></li>
					<li class="dropdown"><a href="community.me">커뮤니티</a>
						<ul class="dropdown-menu commu">
							<li><a href="#">&nbsp;자유게시판</a></li>
							<li><a href="#">책임분양인증</a></li>
						</ul></li>
				</ul>
				
	<div class="header-top">
		<div class="mainlogo">
		<a href="#">
		<img src = "resources/img/mainlogo.png" class = "img-circle">
		</a>
		</div>
	</div>
	
	
	<div class= "search-wrapper">
      <input class="search-box input" type="text" placeholder="Search">
      <button class="search-box btn" type="button"><i class="fas fa-search"></i></button>
	</div>
	
	</div><!-- nav-menu -->
</header>
		
		<div class="main-content">
			<div class="content-wrap">
			
			<!-- 왼쪽. 서브메뉴가 들어갈 부분 -->
			<div class="sidemenu-section">
				<div class="profile">
					<img
						src="./resources/img/프로필1.png" width="140" height="140">
					<h4 class="mt-2"><%=member_listVO.getName() %> / <%=member_listVO.getNick()%></h4>
				</div>
			<br> <br>
			
			<ul class="list-group list-group-flush">
				<li class="list-group-item"><a href="/">회원정보</a></li>
				<li class="list-group-item"><a href="/">작성글관리</a></li>
				<li class="list-group-item click"><a href="/">책임분양관리</a></li>
				<li class="list-group-item"><a href="/">판매허가번호인증</a></li>
			</ul>
			</div>
			
			<!-- 오른쪽. 내용이 들어갈 부분 -->
			<div class="content-section">
				<h2>책임분양 관리</h2>
				<%if (myfree_doc_confirmVO.isEmpty()) { %>
			<br><br><br><br><br><br>
			<h3>책임분양 받은 내역이 없습니다.</h3>
			<br><br><br><hr width="100%">
		
		<%
		}
		else { 
			for (int i=0; i < myfree_doc_confirmVO.size(); i++) 
			{
				Myfree_doc_confirmVO confirm_list = (Myfree_doc_confirmVO)myfree_doc_confirmVO.get(i);
				Myfree_docVO doc_list=(Myfree_docVO)myfree_docVO.get(i);
				
			%>
			<br><br>	
			<h3>나의 <%=i+1 + "번째"%> 책임분양내역</h3>
			
			<table border="1">
				<tr height="250px">
					<td width="810px">
						<div class="card mb-3 ml-2 mt-2" style="max-width: 780px">
							<div class="row no-gutters">
								
								<%if (confirm_list.getConfirm_fdoc_img()==null||confirm_list.getConfirm_fdoc_img()=="") { %>
								<div class="col-md-5">
									<img src="<%=doc_list.getFdoc_thumbnail() %>"
										class="card-img mt-1 ml-1 mx-1 my-1" alt="...">
								</div>
								<%}
								else { %>
								<div class="col-md-5">
								<img src="/resource<%=confirm_list.getConfirm_fdoc_img() %>"
										class="card-img mt-1 ml-1 mx-1 my-1"/>
								</div>
								<%
								}
								%>
								
								
								<div class="col-md-4">
									<div class="card-body">
										<br>
										<br>
										<h5 class="card-title">품종 : <%=confirm_list.getConfirm_fdoc_kindof() %></h5>
										<p class="card-text">분양코드 : <%=confirm_list.getConfirm_fdoc_code() %></p>
										<p class="card-text">책임시작일 : <%=confirm_list.getConfirm_s_date() %></p>
										
										<form id="fdoc_img_form" action="fileUpload.me#location" method="post" enctype="multipart/form-data">
											<input type="hidden" name="confirm_no" value=<%=confirm_list.getConfirm_no() %>>
											<input type="file" id="fdoc_img" name="file" multiple="multiple"/>
										
										<div class="inputArea">
											<button type="submit" id="register_Btn" class="btn btn-primary btn-sm">
											사진 등록</button>
										</div>
										</form>
									</div>
								</div>
							</div>
						</div>
					</td>
			</table>

			<br> <br>
			<span id="write"></span>
			<h3><%=i+1 + "번째 "%> 책임분양 인증현황</h3>
			<table border="1">
				<tr>
					<td width=810px><br>
						<table border="1" align="center">
							<tr height="100px">
								<td width="800px">
										<div>책임시작일 : <%=confirm_list.getConfirm_s_date() %></div>
										<div>책임만료일 : <%=confirm_list.getConfirm_e_date() %></div>
										<div>책임기간 : <%=confirm_list.getConfirm_fdoc_expiry() %> 개월</div>
										<br>
									<%
										double checknum = 0;
									
									for (int k=0; k < myfree_authVO.size(); k++) {
										Myfree_authVO auth_list = (Myfree_authVO)myfree_authVO.get(k);
										
										if (confirm_list.getConfirm_no().equals(auth_list.getFadoc_confirm_no()))
										{
											if (auth_list.getFadoc_check().equals("인증완료"))
											{
												++checknum;
											}
										}
									}
									%>
									<div class="progress ml-2 mr-2" style= "height: 25px;">
										<div class="progress-bar" role="progressbar"
											style="width: <%=(checknum / confirm_list.getConfirm_fdoc_expiry())*100%>%" 
											aria-valuenow="<%=(checknum / confirm_list.getConfirm_fdoc_expiry())*100%>" aria-valuemin="0"
											aria-valuemax="100"><%=(int)checknum%>/<%=confirm_list.getConfirm_fdoc_expiry()%></div>
									</div>
									<br>
								</td>
							</tr>
						</table> <br>
						
						
									
						<div class="row">
							<%if (confirm_list.getConfirm_account()==null||confirm_list.getConfirm_account()=="") { %>
							
							<form action="./updateAccount.me" name="account_form" method="post">
							<input type="hidden" name="confirm_no" value="<%=confirm_list.getConfirm_no() %>">
							<label for="confirm_account">환급계좌번호</label>
							<input type="text" name="confirm_account" id="confirm_account">
							<a href="javascript:update_Account()"><input type="button" value="등록" id="update_Account"></a>
							</form>
							
							<%}
								else {%>
							<p class= mb-0 >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;환급계좌정보 : <%=confirm_list.getConfirm_account() %>
							<button type="button" class="btn btn-outline-danger btn-sm">
							<a href="deleteAccount.me?confirm_no=<%=confirm_list.getConfirm_no() %>">삭제</a></button>
							</p>
							
							<% } %>
							<div class="col-md-5"></div>
							
							<%if (confirm_list.getConfirm_fdoc_expiry()>checknum) { %>
							<button type="button" class="btn btn-primary btn-sm">
								<a href="write_auth_form.me?confirm_no=<%=confirm_list.getConfirm_no()%>">책임인증글 작성</a>
							</button>
							<%}
							else { %>
							<button type="button" class="btn btn-primary btn-sm">
								책임인증 완료
							</button>
							<%} %>
						</div>

						<table class="table table-sm">
							<thead>
								<tr>
									<th scope="col" class="text-center">제목</th>
									<th scope="col" class="text-center">작성일</th>
									<th scope="col" class="text-center">상태</th>
								</tr>
							</thead>
							<%
								for (int j=0; j < myfree_authVO.size(); j++) {
									Myfree_authVO auth_list = (Myfree_authVO)myfree_authVO.get(j);
									
									if (confirm_list.getConfirm_no().equals(auth_list.getFadoc_confirm_no()))
									{
									
							%>
							<tbody>
								<tr>
									<td width="500px"><a href="free_auth_view.me?fadoc_no=<%=auth_list.getFadoc_no() %>"
									onclick="window.open(this.href, '_blanck', 'height='+popupHeight + ',width=' + popupWidth + ',left=' + popupX + ',top=' + popupY); return false">
										&nbsp;&nbsp;<%=auth_list.getFadoc_subject() %></a></td>
									<td class="text-center"><%=auth_list.getFadoc_date() %></td>
									<td class="text-center"><%=auth_list.getFadoc_check() %></td>
								</tr>
							</tbody>
									<%
									} 
							}
									%>
						</table>
					</td>
				</tr>
			</table>
							<%
			}
		}
						%>
					
			
			<br> <br>
			<h3>작성한 책임분양글</h3>

			<table>
				<tr>
					<td width="810px">
						<table class="table table-sm">
							<thead>
								<tr>
									<th scope="col">#</th>
									<th scope="col" class="text-center">제목</th>
									<th scope="col" class="text-center">분양코드</th>
									<th scope="col" class="text-center">작성일</th>
								</tr>
							</thead>
							<tbody>
								<%
								for (int l=0; l < myfree_docVO.size(); l++) {
									Myfree_docVO doc_list = (Myfree_docVO)myfree_docVO.get(l);
								
								%>
								<tr>
									<th scope="row"><%=doc_list.getFdoc_no() %></th>
									<td><a href="/"><%=doc_list.getFdoc_subject() %></a></td>
									<td class="text-center"><%=doc_list.getFdoc_code() %></td>
									<td class="text-center"><%=doc_list.getFdoc_date() %></td>
								</tr>
								<%
								}
								%>
							</tbody>
						</table>
					</td>
				</tr>
			</table>
			
		<footer id="footer">
			<div>Copyright ©2021 All rights reserved | This template is made with <i class="fas fa-heart"></i> by SamSam</div>
		</footer>	
			
		  </div> <!-- content-section -->
		  
		</div> <!-- content-wrap -->
	</div> <!-- main-content -->


	<!-- 카카오톡 채널 상담 -->
	<div class="kakaoChat">
	<a href="javascript:void plusFriendChat()">
    <img src="resources/img/kakaolink_btn_medium.png" width="45px" height="45px" class="kakao_btn">
	</a>
	</div>
	
	<!-- pageup button -->
	<div class ="back-to-top">
	<a href="#" class ="back-to-top" style="display: inline;">
	<i class = "fas fa-angle-up"></i>
	</a>
	</div>
	
</div><!-- 바디컨텐트 -->
	
		




<script>
$(document).ready(function(){
	$('#login').on('click', function(e){
	      $('#logout').show();
		  $('#mypage').show();
		  $('#login').hide();
		  $('#signin').hide();
	  });
	}) //헤더 상단 로그인 체인지

	$(document).ready(function(){
	$('#logout').on('click', function(e){
	       $('#logout').hide();
		   $('#mypage').hide();
		   $('#login').show();
		   $('#signin').show();
		});
	}) //헤더 상단 로그아웃 체인지
</script>


<!-- 부트스트랩 4.0 js -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<!-- 카카오톡 채널 상담 js -->
	<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script type='text/javascript'>
  //<![CDATA[
    // 사용할 앱의 JavaScript 키를 설정해 주세요.
    Kakao.init('be685f4c6119a7e447cd31c67878faf1');
    // 카카오톡 채널 1:1채팅 버튼을 생성합니다.
    function plusFriendChat() {
        Kakao.Channel.chat({
              channelPublicId: '_cjxmxiK' // 카카오톡채널 홈 URL에 명시된 홈ID
        });
    }
    
  //]]>
</script>

<script language="javascript">
//환급계좌 입력
function update_Account() {
	document.forms["account_form"].submit();
}
</script>

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