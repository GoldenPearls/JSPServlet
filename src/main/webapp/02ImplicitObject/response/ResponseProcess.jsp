<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login 인증 페이지</title>
</head>
<body>
<% 
	String id = request.getParameter("user_id");
	String pwd = request.getParameter("user_pwd");
	if(id.equalsIgnoreCase("multi")&&pwd.equalsIgnoreCase("1234")){
		response.sendRedirect("ResponseWelcome.jsp");
	}
	else{
		request.getRequestDispatcher("ResponseMain.jsp?loginErr=1").forward(request, response);
	}
%>

</body>
</html>