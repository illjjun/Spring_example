<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>
<c:if test="${id==null}">
<a href='login'>로그인</a>&nbsp;&nbsp;<a href='signon'>회원가입</a>
</c:if>
<c:if test="${id!=null}">
${id}&nbsp;&nbsp;<a href='logout'>로그아웃</a>
</c:if>

</body>
</html>
