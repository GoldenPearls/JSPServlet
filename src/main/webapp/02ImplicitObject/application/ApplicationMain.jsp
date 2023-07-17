<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>application 객체로 웹어플리케이션 물리적 경로 정보 읽기</title>
</head>
<body>
<%= application.getContextPath() %>
<%= application.getRealPath("/02ImplicitObject") %>
<%!
public String userImplicitObject(){
	return this.getServletContext().getRealPath("/02ImplicitObject");
}

public String userImplicitObject(ServletContext app){
	return app.getRealPath("/02ImplicitObject");
}

%>
<ul>
	<li> this 사용 : <%=userImplicitObject()%></li>
	<li> 내장 객체를 인수로 전달 : <%=userImplicitObject() %></li>
</ul>

</body>
</html>