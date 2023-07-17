<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RequestWebInfo : 클라이언트 서버 환경 읽기 기능 살펴보기</title>
</head>
<body>
 <h2>클라이언트와 서버 환경 읽기 기능 살펴보기</h2>
 <ul>
 <% request.setCharacterEncoding("UTF-8"); %>
 <li>데이터 전송 방식 : <%= request.getMethod() %></li>
 <li>URL : <%= request.getRequestURL() %></li>
 <li>URI : <%= request.getRequestURI() %></li>
 <li>프로토콜 : <%= request.getProtocol() %></li>
 <li>서버명 : <%= request.getServerName() %></li>
 <li>서버포트 : <%= request.getServerPort() %></li>
 <li>클라이언트 IP 주소 : <%= request.getRemoteHost() %></li>
 <li>쿼리 스트링 : <%= request.getQueryString() %></li>
 <li>전송된 값 1 : <%= request.getParameter("eng") %></li>
 <li>전송된 값 2: <%= request.getParameter("han") %></li>
 </ul>
</body>
</html>

