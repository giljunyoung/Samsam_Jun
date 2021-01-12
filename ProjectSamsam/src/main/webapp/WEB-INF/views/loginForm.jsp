<%@ page language="java" contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>회원관리 시스템 로그인 페이지</title>
<script>
function check_input()
{
	var str, i, ch;
	// 아이디 체크 ----> 
	if (document.loginform.email.value == "")
	{
		alert("아이디를 입력하세요!!!");
		document.loginform.email.focus();
		return;
	}
	else
	{
		str = document.loginform.email.value;
		
		for (i=0; i<str.length; i++)
		{
			ch = str.substring(i, i+1);
			if (!((ch >= "0" && ch <= "9") || (ch >= "a" && ch <= "z") 
					|| (ch >= "A" && ch <= "Z")))
			{
				alert("특수문자가 포함, 다시 입력!!!");
				document.loginform.email.focus();
				return;
			}
		}
	} // 아이디 체크 <------
	
	// 패스워드 체크 ------>
	if (document.loginform.pw.value == "")
	{
		alert("패스워드를 입력하세요!!!");
		document.loginform.pw.focus();
		return;
	}
	else
	{
		str = document.loginform.pw.value;
		
		for (i=0; i<str.length; i++)
		{
			ch = str.substring(i, i+1);
			if (!((ch >= "0" && ch <= "9") || (ch >= "a" && ch <= "z") 
					|| (ch >= "A" && ch <= "Z")))
			{
				alert("특수문자가 포함, 다시 입력!!!");
				document.loginform.pw.focus();
				return;
			}
		}
	} // 패스워드 체크 <------
	
	loginform.submit();	//check_input이 끝나면 submit.
}
</script>
</head>
<body>
<form name="loginform" action="./login.me" method="post">
<center>
<table border=1>
	<tr>
		<td colspan="2" align=center>
			<b><font size=5>로그인 페이지</font></b>
		</td>
	</tr>
	<tr><td>아이디 : </td><td><input type="text" name="email"/></td></tr>
	<tr><td>비밀번호 : </td><td><input type="password" name="pw"/></td></tr>
	<tr>
		<td colspan="2" align=center>
			<a href="javascript:check_input()">로그인</a>&nbsp;&nbsp;
			<a href="./joinform.me">회원가입</a>
		</td>
	</tr>
</table>
</center>
</form>
</body>
</html>