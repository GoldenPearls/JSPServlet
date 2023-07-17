<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
int n1, n2, result;
%>

<%
	request.setCharacterEncoding("UTF-8");
	n1 = Integer.parseInt(request.getParameter("n1"));
	n2 = Integer.parseInt(request.getParameter("n2"));
	result = n1 + n2;
	out.println("<p> 결과값 : "+ result);
%>