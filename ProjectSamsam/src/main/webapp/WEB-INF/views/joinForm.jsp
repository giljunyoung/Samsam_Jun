<%@ page language="java" contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>회원가입 페이지</title>
</head>
<body>
<form name="joinform" action="./joinprocess.me" method="post">
<center>
<table border=1>
	<tr>
		<td colspan="2" align=center>
			<b><font size=5>회원가입 페이지</font></b>
		</td>
	</tr>
	<tr><td>아이디 : </td><td><input type="text" name="email"/></td></tr>
	<tr><td>비밀번호 : </td><td><input type="password" name="pw"/></td></tr>
	<tr><td>이름 : </td><td><input type="text" name="name"/></td></tr>
	<tr><td>닉네임 : </td><td><input type="text" name="nick"/></td></tr>
	<tr><td>핸드폰 : </td><td><input type="text" name="phone"/></td></tr>
	<tr><td>지역 : </td><td><input type="text" name="local"/></td></tr>
	<tr><td>분류 : </td><td><input type="text" name="grade"/></td></tr>
		<td colspan="2" align=center>
			<a href="javascript:joinform.submit()">회원가입</a>&nbsp;&nbsp;
			<a href="javascript:joinform.reset()">다시작성</a>
		</td>
	</tr>
</table>
</center>
</form>
</body>
</html>