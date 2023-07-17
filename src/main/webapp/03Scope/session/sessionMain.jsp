<%@page import="java.util.ArrayList" %> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%
	ArrayList<String> lists = new ArrayList<String>();
	lists.add("리스트");
	lists.add("컬렉션");
	session.setAttribute("lists", lists);
	session.removeAttribute("lists");
%>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>페이지 이동 후 session 영역의 속성 읽기</h2>
<a href="sessionLocation.jsp"> sessionLocation.jsp 이동</a>
</body>
</html>