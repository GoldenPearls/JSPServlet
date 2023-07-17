<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="common.Person" %>
<%@ page import="java.util.Set" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
로그인 성공!
<% 
	Map<String, Person> acts = (Map<String, Person>)application.getAttribute("acts");
	Set<String> keys = acts.keySet();
	for(String key : keys){
		Person p = (Person)acts.get(key);
		out.print(String.format("이름:%s", "나이:%d<br/>", p.getName(), p.getAge()));
	}
%>
</body>
</html>