<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>더하기 계산할 두 값 입력양식</title>
</head>
<body>
<p>하나의 수 + 연산자 + 다른 수를 입력하고 계산 버튼을 눌러주세요!</p>
<form action="adderMethod.jsp">
<label>하나의 수 : </label>
<input type = "text" name="n1" size="5"> </br>
<label>연산자 : </label>
<input type ="text" name="operators" size="2"> </br>
<label>다른 수 : </label>
<input type = "text" name="n2" size="5"></br>
<input type = "submit" name="submit1" size="10" value="계산">
</form>
</body>
</html>