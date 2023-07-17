<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.text.SimpleDateFormat" %> <!-- 필요한 외부 클래스를 불러옴 -->
<%@ page import = "java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>import 속성</title>
</head>
<body>
<%
 Date today = new Date();
 SimpleDateFormat dateFormat = new SimpleDateFormat("YYYY-MM-dd");
 String todayStr = dateFormat.format(today);
 out.println("오늘 날짜: "+todayStr); /*오늘 날짜를 원하는 포맷형태로 브라우저에 출력*/
%>
</body>
</html>
<!-- 소스 보기 자체가 안됨 -->