<%@ page import = "utils.CookieManager" %>
<%@ page import = "utils.JSFunction" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//id = "test"  pwd ="1234" 지정 후 테스트 
//1. 폼 값 읽기
String user_id = request.getParameter("user_id");
String user_pw = request.getParameter("user_pw");
String save_check = request.getParameter("saveCheck");

//2. 사용자 인증 
if("test".equals(user_id) && "1234".equals(user_pw)){
      	//로그인 성공  후 아이디저장체크 확인 후 쿠키 생성 
	if(save_check != null && save_check.equals("Y")){
	     CookieManager.makeCookie(response, "loginId", user_id, 120);	
	}
	else {
		 CookieManager.deleteCookie(response, "loginId");
		}
	
	JSFunction.alertLocation("로그인 성공","IdSaveMain.jsp", out);	
}
	
else{ // 로그인 실패 
		
       JSFunction.alterBack("로그인에 실패했습니다.", out);		
	}
	
 



%>