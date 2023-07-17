<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="includeFile.jsp" %>
<!-- include 지시어로 다른 문서를 포함시키면 먼저 '파일의 내용 그대로 문서에 삽입'한 후
컴파일이 진행되어 하나의 페이지로 진행된다. -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Include Main</title>
</head>
<body>
<%
	out.println("오늘 날짜 :"+ today);
	out.println("<br/>");
	out.println("내일 날짜:"+tomorrow);
	
%>
</body>
</html>