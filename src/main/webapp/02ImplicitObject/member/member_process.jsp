<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%! 
String name;
String id, pwd, gender, introduce;
String[] collect;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 처리</title>
</head>
</html>
<%
	request.setCharacterEncoding("UTF-8");
	name = request.getParameter("name");
	id = request.getParameter("user_id");
	pwd = request.getParameter("user_pwd");
	gender = request.getParameter("gender");
	collect = request.getParameterValues("collect");
	String col = "";
if (collect != null) {
    for (int i = 0; i < collect.length; i++) {
        col += collect[i] + " ";
    }
}
introduce = request.getParameter("introduce").replace("\r\n", "<br>");

//URL 인코딩하여 전달
name = new String(name.getBytes("UTF-8"), "ISO-8859-1");
id = new String(id.getBytes("UTF-8"), "ISO-8859-1");
pwd = new String(pwd.getBytes("UTF-8"), "ISO-8859-1");
gender = new String(gender.getBytes("UTF-8"), "ISO-8859-1");
col = new String(col.getBytes("UTF-8"), "ISO-8859-1");
introduce = new String(introduce.getBytes("UTF-8"), "ISO-8859-1");

response.sendRedirect("member_ok.jsp?name=" + name + "&user_id=" + id + "&user_pwd=" + pwd + "&gender=" + gender + "&collect=" + col + "&introduce=" + introduce);
%>