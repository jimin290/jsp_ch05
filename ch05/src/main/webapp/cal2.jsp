<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cal2.jsp</title>
</head>
<body>
	<h2>연산 결과 Cal2</h2>
<% 	
	try {
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));
		
		out.println(num1 + " + " + num2 + " = " + (num1+num2) + "<p>");
		out.println(num1 + " - " + num2 + " = " + (num1-num2) + "<p>");
		out.println(num1 + " * " + num2 + " = " + (num1*num2) + "<p>");
		out.println(num1 + " / " + num2 + " = " + (num1/num2) + "<p>");
		
		// Exception 발생 시 -> error.jsp로 이동
		// 여기선 페이지를 부르기만 하는거라 isErrorPage 안써줘도 된다
		} catch(Exception e) {
			RequestDispatcher rd = request.getRequestDispatcher("error.jsp");
			rd.forward(request, response);
		}
%>
</body>
</html>