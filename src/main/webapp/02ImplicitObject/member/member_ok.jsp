<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 출력</title>
</head>
<body>
이름: <%= request.getParameter("name") %><br/>
아이디: <%= request.getParameter("user_id") %><br/>
비밀번호: <%= request.getParameter("user_pwd") %><br/>
성별: <%= request.getParameter("gender") %><br/>
사용자 관심 분야: <%= request.getParameter("collect") %><br/>
자기 소개: <%= request.getParameter("introduce") %>
</body>
</html>

