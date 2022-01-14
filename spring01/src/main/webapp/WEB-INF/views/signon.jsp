<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method=get action="signon_check">
<h1 align=center>회원가입</h1>
    <table align=center>
    	<tr>
            <td align=right>실명</td>
            <td><input type=text id=realname name=realname size=12></td>
            <td align=right>성별</td>
            <td><input type=radio name=gender value='남성'>남성
                <input type=radio name=gender value='여성'>여성</td>
        </tr>
        <tr>
            <td align=right>아이디</td>
            <td><input type=text id=userid name=userid size=12></td>
        </tr>
        <tr>
            <td align=right>비밀번호</td>
            <td><input type=password id=passcode name=passcode size=12></td>
        </tr>
        <tr>
            <td align=right>비밀번호 확인</td>
            <td><input type=password id=passcode1 name=passcode1 size=12></td>
        </tr>
        <tr>
            <td align=right>모바일번호</td>
            <td><input type=text id=mobile name=mobile size=20></td>
        </tr>
        <tr>
            <td align=right>관심분야</td>
            <td align=left colspan=3>
            	<input type=checkbox value=politics name=interest>정치&nbsp;
                <input type=checkbox value=economics name=interest>경제&nbsp;
                <input type=checkbox value=social name=interest>사회&nbsp;
                <input type=checkbox value=culture name=interest>문화&nbsp;<br>
                <input type=checkbox value=arts name=interest>예술&nbsp;
                <input type=checkbox value=entertainment name=interest>연예&nbsp;
                <input type=checkbox value=sports name=interest>스포츠&nbsp;
                <input type=checkbox value=etc name=interest>기타&nbsp;<br>
            </td>
        </tr>
        <tr>
            <td colspan=4 align=center>
                <input type=submit value='가입완료'>&nbsp;
                <input type=reset value='다시입력'>
            </td>
        </tr>
        <tr><td colspan=4 align=right>
        		<input type=button id=btnCancel value='취소' onclick='document.location=/edu/'></td></tr>
    </table>
</form>
</body>
</html>