<%@ page import = "common.Person" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%
	request.setAttribute("requestString", "requst영역 문자열입니다.");
	request.setAttribute("requestPerson", new Person("김나나", 25));
%>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%= request.getAttribute("requestString") %>
<%
	//복원
	Person reqPerson =(Person)request.getAttribute("requestPerson");
	
%>
<%= reqPerson.getName() %>
<%= reqPerson.getAge() %>

<h2>포워드된 페이지에서 request영역에 저장된 속성값 읽기</h2>
<% request.getRequestDispatcher("RequestForward.jsp").forward(request, response); %>
</body>
</html>