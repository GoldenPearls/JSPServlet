<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>클라이언트와 서버의 환경 정보 읽기</title>
</head>
<body>
 <a href="./RequestWebInfo.jsp?eng=Hello&han=안녕"> GET 방식 전송</a>
 <br />
 <from action="RequestWebInfo.jsp" method="get">
 영어 : <input type="text" name="eng" value="Bye" /><br/>
 한글 : <input type="text" name="han" value="잘가!"/><br/>
 <input type="submit" value="POST 방식 전송"/>
 </from>
 <h2>요청 헤더 정보 읽기</h2>
 <a href="RequestHeader.jsp">요청헤더 읽기</a>
 <!-- HTTP프로토콜은 부가적인 정보를 담고 있다. 웹 브라우저의 종류나 -->
</body>
</html>

