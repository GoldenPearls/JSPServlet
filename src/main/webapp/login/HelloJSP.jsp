<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> <!-- 서버 태그, 지시어 : 페이지 선언부로 반드시 있어야 함 -->
<%!

String str1 = "JSP";
String str2 = "안녕하세요!!!! 반가워요."; /*스크립트 요소(선언부)*/

%> <!--  !는 이 페이지 전체 전역변수, 페이지 소스 보기에 소스가 보이지 않음, 결과 값만 보임-->
<!-- 서버가 해석 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hello JSP</title>
</head>
<body>
<h2>서버에서 해석한 결과를 출력</h2>
<%= str1 %>
<p>
<%
out.println(str2 + str1+"입니다. 열심히!");
%>  <!--  shift 누르고 쓰면 닫는 태그까지 자동완성 -->
</p>
</body>
</html>
<!-- 일반은 웹 브라우저가 해석 -->