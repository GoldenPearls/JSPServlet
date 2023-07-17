<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
    int n1, n2, result; 
    String operator;
    public int add(int num1, int num2){
    return num1+num2;
}
    public int minus(int num1, int num2){
        return num1-num2;
    }
    
    public int mult(int num1, int num2){
        return num1*num2;
    }
    
    public float division(int num1, int num2){
        return num1/num2;
    }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    n1 = Integer.parseInt(request.getParameter("n1"));
    operator = request.getParameter("operators");
    n2 = Integer.parseInt(request.getParameter("n2"));
    if(operator.equals("+")){
    result = add(n1, n2);
    out.print("더하기 결과 : "+result);
    }
    else if(operator.equals("-")){
    	result = minus(n1, n2);
        if(result >=0){
        out.print("빼기 결과 : "+result);
        }
        else{
            out.print("빼기 결과 : "+result + " 결과가 음수입니다.");
        }
    }
    else if(operator.equals("*")){
        result= mult(n1, n2);
        out.print("곱하기 결과 : "+result);
    }
    else if(operator.equals("/")){
        float result1= division(n1, n2);
        if(result1 !=0){
        out.print("나누기 결과 : "+result1);}
        else
        	out.print(0);
    }
    else{
        out.print("잘못된 연산자입니다. 다시 입력해주세요.");
    }
%>
</body>
</html>