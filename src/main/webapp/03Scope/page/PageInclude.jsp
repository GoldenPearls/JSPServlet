<%@ page import = "common.Person" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%
  Integer pInteger2 =(Integer) (pageContext.getAttribute("pageInteger"));
  //String  pStr2 =   pageContext.getAttribute("pageString").toString();
  Person pPerson2 = (Person)(pageContext.getAttribute("pagePerson"));
%>
<meta charset="UTF-8">
<title>PageInclude.jsp</title>
</head>
<body>
    <ul>
       <li><%= pInteger2 %> </li>
       <li> </li>
       <li><%= pPerson2.getName()%> , <%= pPerson2.getAge() %> </li>
    </ul>

</body>
</html>