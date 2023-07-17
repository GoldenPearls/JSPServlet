package utils;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CookieManager {
	//쿠키를 생성하거나 생성된 쿠키를 읽어오는 기능 구현
	public static void makeCookie(HttpServletResponse res, String cName, String cValue, int cTime) {
		Cookie cookie = new Cookie(cName, cValue);
		cookie.setPath("/");
		cookie.setMaxAge(cTime);
		res.addCookie(cookie);
	}
	
	//쿠키의 이름으로 쿠키의 값을 찾아 반환하는 기능 구현
	public static String readCookie(HttpServletRequest req, String cName) {
		String cookieValue =""; //반환값 
		Cookie[] cookies = req.getCookies(); //반환값
		if (cookies != null){ // 요청헤더의 모든 쿠키 얻어오기
			  for(Cookie c : cookies){
				  String cookieName = c.getName();
				  if(cookieName.equals(cName)) {
					  cookieValue = c.getValue();
				  }
				  }
	}
		return cookieValue;
	}
	// 지정된 이름의 쿠키를 삭제한다.
	public static void deleteCookie(HttpServletResponse res, String cName) {
		makeCookie(res, cName,"", 0);
	}
	}
