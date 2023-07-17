<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
<h2>회원가입 페이지</h2>
<form action="./member_process.jsp" method="post">
이름: <input type="text" name="name" size="10"><br/>
아이디: <input type="text" name="user_id" size="10"><br/>
비밀번호: <input type="password" name="user_pwd" size="10"><br/>
성별:
<input type="radio" name="gender" value="man"> 남
<input type="radio" name="gender" value="woman" checked="checked"> 여<br/>

사용자 관심 분야:<br/>
<input type="checkbox" name="collect" value="politics"> 정치<br/>
<input type="checkbox" name="collect" value="economy"> 경제<br/>
<input type="checkbox" name="collect" value="social"> 사회<br/>
<input type="checkbox" name="collect" value="culture"> 문화<br/>

자기소개:<br/>
<textarea name="introduce" cols="50" rows="5"></textarea><br/>
<input type="submit" value="회원가입">
</form>
</body>
</html>