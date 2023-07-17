package utils;
//자바스크립트의 메세지 알림창 띄우기, 앞으로 가기, 뒤로가기 기능
import javax.servlet.jsp.JspWriter;

public class JSFunction {
	//메세지 알림창을 띄운 후 지정한 url로 이동
	public static void alertLocation(String msg, String url, JspWriter out) {
		try {
			String script =""
									+"<script>"
									+"alter('"+msg+"');"
									+ "location.href='"+url+"'; " 
									+"</script>";
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

// 이전 페이지 이동
public static void alterBack(String msg, JspWriter out) {
	try {
		String script =""
								+"<script>"
								+"alter('"+msg+"');"
								+ "history.back()'; " //뒤로 가기 기능
								+"</script>";
	} catch (Exception e) {
		e.printStackTrace();
	}
}
}