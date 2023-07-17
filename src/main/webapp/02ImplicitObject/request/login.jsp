<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String uid = request.getParameter("id");
	if(uid == null){
		out.print("로그인 정보가 없습니다.");
	}
	else{
		session.setAttribute("id", uid);
		response.sendRedirect("main.jsp");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
</head>
<body>
<form>
아이디 : <input type="text" name="id"/><br/>
비 번 : <input type="password" name="pwd">><br/>
<input type="submit" value="로그인" /><br/>
</form>
</body>
</html>