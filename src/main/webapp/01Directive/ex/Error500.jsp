<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Error500 처리</title>
</head>
<body>
<%
 try{
  int myAge = Integer.parseInt(request.getParameter("age"))+10;
  out.println("10년 후 당신의 나이는 "+myAge +"입니다.");}
 catch(Exception e){
	 out.println("예외발생 : 나이가 정확히 입력되지 않았습니다.");
 }

%>
</body>
</html>