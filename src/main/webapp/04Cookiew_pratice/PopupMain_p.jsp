<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String popupMode ="on"; //상태정보, 레이어 팝업창을 띄울지 여부
	
	Cookie[] cookies = request.getCookies();
	if(cookies!=null){
		for(Cookie c : cookies){
			String cookieName = c.getName();
			String cookieValue = c.getName();
			if(cookieName.equals("PopupClose")){
				popupMode = "off";
			}
		}
	}
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키를 이용한 팝업 관리 ver1.0</title>
<style> <!--css로 레이어 팝업창의 위치 결정 -->
    div#popup {
        position: absolute; top:100px; left:50px; color:yellow;  
        width:270px; height:100px; background-color:gray;
    }
    div#popup>div {
        position: relative; background-color:#ffffff; top:0px;
        border:1px solid gray; padding:10px; color:black;
    }
</style>
<script scr="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
// $ 달러 기호를 이용한 템플릿 스트링 표기 방법
	$(function()){ //자바스크립트 정의하겠습니다.
		$('#closeBtn').click(function(){ //닫기 버튼(id=closeBtn)을 누르면 파업창(id=popup)을 숨김처림
			$('#popup').hide();
			let chkVal = $("input:checkbox[id=inactiveToday]:checked").val();
			
			//jQuery의 ajax()함수로 데이터 비동기 처리
			$.ajax({
				url : './PopupCookie_p.jsp', //결과값을 보내라
				type : 'get', //'get' or 'post' HTTP메소드 선텍
				data : {inactiveToday : chkVal}, //서버로 보낼 데이터
				datatype : "text", //서버로 보낼 응답데이터 타입
				success : function(resData){ //요청 성공시 실행할 콜백함수
					if(resData != '') location.reload(); //다시 불어들여라
				}
				
			});
			
		});
	});
</script>

</head>
<body>
<%
	out.print("현재 팝업창은 "+popupMode+"상태입니다.<br/>");
	if(popupMode.equals("on")){ //off상태일 때는 모이지 않게 함
%>
<h2>팝업 메인 페이지(ver1.0)</h2>
<div id="popup">
<h2 align="center">공지사항 팝업입니다.</h2>
<div align="right">
	<from name="popForm">
	<input type="checkbox" id="inactiveToday" value="1"/>
	하루동안 열지 않음
	<input type="button" value="닫기" id="closeBtn">
	</form>
</div>
<% }%>
</div>
</body>
</html>