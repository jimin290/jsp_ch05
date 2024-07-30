<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cal1.jsp</title>
</head>
<body>
	<h2>연산 결과 Cal1</h2>
<% 
	// 1.num1, num2 파라미터 받기
	// 2. + - * / 출력하기
	// 3. exception 처리
	// NumberFormantExcrption -> 숫자로 입력해주세요
	// ArithmeticExeption -> 0으로 나누는건 불가능
	// Exception -> e.message 출력
	
	try {
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));
		
		out.println(num1 + " + " + num2 + " = " + (num1+num2) + "<p>");
		out.println(num1 + " - " + num2 + " = " + (num1-num2) + "<p>");
		out.println(num1 + " * " + num2 + " = " + (num1*num2) + "<p>");
		out.println(num1 + " / " + num2 + " = " + (num1/num2) + "<p>");
		
	} catch(NumberFormatException e) {
		out.println("숫자로 입력해주세요");
	} catch(ArithmeticException e) {
		out.println("0으로 나누는 건 불가능합니다");
	} catch(Exception e) {
		out.println(e.getMessage());
	}	
%>
</body>
</html>