<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<title>login</title>
</head>
<body>

<h1>
	Hello login.jsp  
</h1>
<br><br>

<form method=post action="doLogin"  id=frmLogin>
<table align=center>
<tr><td align=center>
<h1>로그인</h1></td></tr>
<tr><td>아이디</td><td><input type=text name=userid></td></tr>

<tr><td>비밀번호</td><td><input type=password name=passcode></td></tr>
<tr><td colspan=2 align=center><input type=submit value='로그인'>&nbsp;
            <input type=button value='취소' href='login'>
            </td></tr>
<tr><td colspan=2 align=right><a href="signon">회원가입</a></td></tr>
</table>

</form>

<!-- <form method=post action="/edu/doLogin" id=frmLogin> -->
<%-- ID : <input type=text name=userid value="${ID }"><br> --%>
<%-- Password : <input type=password name=passcode value="${password }"><br> --%>
<!-- <input type=submit value=로그인> -->
<!-- <input type=reset value=비우기> -->
<!-- </form> -->
<img src='animal/sadcat.jpg' width=500px><img src='animal/sadcat.jpg' width=500px>
</body>
<script>
</script>
</html>
