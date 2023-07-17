<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"
    errorPage = "IsErrorPage.jsp"
    %>
<%!
String myName;
int myAge;
String gen;
String[] collect;
String selftext;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과창</title>
</head>
<body>
<!-- action이 post인 경우 한글의 경우 객체의 인코딩이 필요 -->
<%
	request.setCharacterEncoding("UTF-8");
	myName = request.getParameter("name");
	myAge = Integer.parseInt(request.getParameter("age"));
	gen = request.getParameter("gender");
	collect=request.getParameterValues("collect");
	String col="";
	if(collect != null){
		for(int i=0; i<collect.length; i++){
			col += collect[i] + " ";	
		}
	}
	
	selftext=request.getParameter("intro").replace("\r\n", "<br>"); /*엔터 웹 페이지에 출력하니 br로 변환*/
%>
<% 
	out.println("이름 : " +myName);
	out.println("나이 : " + myAge);
%> <br/>
<%= "성 별 : " +gen %><br/>
<%= "취  미 : " +col %><br/>
<%= "자기소개 : " +selftext %><br/>
</body>
</html>