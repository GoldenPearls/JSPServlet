<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    errorPage="ISErrorPage.jsp"
    %>
<%!
String name;
int age;
String gender;
String[] habit;
String introduce;

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과창</title>
</head>
<body>
<% 
request.setCharacterEncoding("UTF-8");
name = request.getParameter("name"); 
age = Integer.parseInt(request.getParameter("age"));
gender = request.getParameter("gender");
String col = "";
if(habit != null){
	for(int i=0; i<habit.length; i++){
		col += habit[i]+" ";
	}
}
introduce = request.getParameter("introduce").replace("\r\n", "/br");
%>

<%= "이 름 : " + name %></br>
<%= "나 이 : " + age %></br>
<%= "성 별 : " + gender %></br>
<%= "취 미 : " + col %></br>
<%= "자 기 소 개 : " + introduce %></br>
</body>

</html>