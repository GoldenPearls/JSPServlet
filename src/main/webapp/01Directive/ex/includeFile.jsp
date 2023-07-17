<%@ page import="java.time.LocalDateTime"%>
<%@ page import="java.time.LocalDate" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%!
/*선언부 : 변수, 메서드 선언*/
%>
<!-- 스크립트 요소(Script Elements)
	- 선언부
	- 수크립틀릿 : 서버에 JSP요청을 받았을 때 실행되어야 할 자바 코드 작성 영역
 -->
    
<%
LocalDate today = LocalDate.now();
LocalDateTime tomorrow = LocalDateTime.now().plusDays(1);
out.println(today);
%>

<p><%=today %></p> <!-- 표현식 : 실행 결과로 하나의 값이 남는 문장 -->
	