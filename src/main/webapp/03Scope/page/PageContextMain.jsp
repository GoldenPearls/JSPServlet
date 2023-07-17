<%@ page import = "common.Person" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	// 데이터 저장
	pageContext.setAttribute("pageInteger", 10); // 10은 Object 타입으로 업캐스팅
	pageContext.setAttribute("pageString", "페이지 영역 문자열");
	pageContext.setAttribute("pagePerson", new Person("홍길동", 20));
%>
<html>
<head>
<meta charset="UTF-8">
<title>Page Context 영역</title>
</head>
<body>
	<h2>page에 저장된 속성값(데이터) 읽기</h2>
	<% 
	Object pInteger = pageContext.getAttribute("pageInteger");
	Integer pInteger1 = (Integer)(pageContext.getAttribute("pageInteger"));
	//String pStr = pageContext.getAttribute("pageString").toString();
	Person pPerson = (Person)(pageContext.getAttribute("pagePerson"));
	%>
	<ul>
		<li><%= pInteger %></li>
		<li></li>
		<li><%= pPerson.getName() %>, <%= pPerson.getAge() %></li>
	</ul>
	<h2>include 된 파일에서 page영역 읽어오기</h2>
	<%@ include file = "PageInclude.jsp" %>
	
	<a href="PageLocation.jsp">PageLocation.jsp 바로가기</a>
</body>
</html>