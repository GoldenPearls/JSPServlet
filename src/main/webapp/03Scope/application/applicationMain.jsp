<%@ page import="java.util.HashMap" %>
<%@ page import = "common.Person"%>
<%@ page import = "java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>application 영역</title>
</head>
<body>
<!-- 자료 저장이기 때문에 내용이 보이지는 않음 -->
<%
	Map<String, Person> maps = new HashMap<String, Person>();
	maps.put("act1", new Person("한수지", 20));
	maps.put("act2", new Person("김진영", 25));
	maps.put("act3", new Person("이효진", 25));
	application.setAttribute("acts", maps);
	
%>

application영역의 배우들 자료 저장

</body>
</html>