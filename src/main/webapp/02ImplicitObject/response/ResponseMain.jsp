<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Response 객체 : 로그인 폼</title>
</head>
<body>
<h2>1. 로그인 폼</h2>
<% 
	String loginErr = request.getParameter("loginErr");
	if(loginErr != null) out.print("로그인 실패");
%>
<form action ="./ResponseProcess.jsp" method="post">
아이디 : <input type="text" name="user_id">
패스워드 : <input type="password" name="user_pwd">
<input type="submit" value="로그인">
</form>

</body>
</html>