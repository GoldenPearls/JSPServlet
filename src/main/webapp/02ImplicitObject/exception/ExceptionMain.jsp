<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int status = response.getStatus(); //responser 내장 객체로부터 에러 코드 확인
	if(status == 404){
		out.print("404에러가 발생하였습니다. <br/>파일의 경로를 다시 확인 해주세요");
	}
	else if(status==405){
		out.print("405에러가 발생하였습니다. <br/> 요청 방식(method)을 확인!");
	}
	else if(status==500){
		out.print("500 에러 발생 <br/> 소스 코드에 오류 체크 하세요!");
	}



%>

</body>
</html>