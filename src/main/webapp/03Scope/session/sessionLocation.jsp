<%@ page import = "java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session 영역 읽기</title>
</head>
<body>
<%
	ArrayList<String> lists = (ArrayList<String>)session.getAttribute("lists");
	for(String str:lists)
		out.println(str+"<br/>");
%>
</body>
</html>