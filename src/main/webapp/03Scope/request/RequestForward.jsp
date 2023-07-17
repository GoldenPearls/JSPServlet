<%@ page import = "common.Person" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Request 영역</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	Person forPerson = (Person)request.getAttribute("requestPerson");
	String str1 = request.getAttribute("requestString").toString();
%>

<h2>포워드된 페이지에서 request영역에 저장된 속성값 읽기</h2>
<%= forPerson.getName() %>
<%= forPerson.getAge() %>
<%= str1%></body> 
</html>
