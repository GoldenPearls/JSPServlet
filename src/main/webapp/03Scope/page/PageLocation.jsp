<%@ page import = "common.Person" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%
  Integer pInteger =(Integer) (pageContext.getAttribute("pageInteger"));
  //String  pStr =   pageContext.getAttribute("pageString").toString();
  Person pPerson = (Person)(pageContext.getAttribute("pagePerson"));
%>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

       Integer 객체: <%= (pInteger == null)? "값없음" :(Integer)pInteger %> 
       String 객체: <%-- <%= (pStr == null)? "값없음" : pStr.toString()   %> --%>
       Person 객체: <%= (pPerson == null)? "값없음" : ((Person)pPerson).getName() %>  
    

</body>
</html>