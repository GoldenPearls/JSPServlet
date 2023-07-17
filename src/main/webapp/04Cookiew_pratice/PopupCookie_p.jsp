<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String chkVal = request.getParameter("inactiveToday");

if(chkVal !=null && chkVal.equals("1")){
	Cookie cookie = new Cookie("PopupClose","off"); //쿠키 생성
	cookie.setPath(request.getContextPath()); // 쿠키 경로 설정
	cookie.setMaxAge(60); //쿠키 유지기간 설정 2분
	response.addCookie(cookie); //쿠키를 응답객체(헤더) 추가
}
%>