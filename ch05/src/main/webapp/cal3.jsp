<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cal3.jsp</title>
</head>
<body>
<h2>연산 결과 Cal3</h2>
<% 	
	try {
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));
		
		out.println(num1 + " + " + num2 + " = " + (num1+num2) + "<p>");
		out.println(num1 + " - " + num2 + " = " + (num1-num2) + "<p>");
		out.println(num1 + " * " + num2 + " = " + (num1*num2) + "<p>");
		out.println(num1 + " / " + num2 + " = " + (num1/num2) + "<p>");
		
		// 모두 전 페이지로 이동 (자바스크립트로 처리)
		// 전 페이지로 이동하는 여러가지 방법이 있다
		// 1. history.go(-1);
		// 2. history.back();
		// 3. location.href = "전페이지.파일명";
	} catch(NumberFormatException e) {
%>		
 	<script type="text/javascript">
 		alert("숫자로 입력해주세요");
 		history.go(-1);
 	</script>
 	
<%  } catch(ArithmeticException e) { %>
	<script type="text/javascript">
 		alert("0으로 나누는 건 불가능합니다");
 		history.back();
 	</script>
<%  
	} catch(Exception e) {
		out.println(e.getMessage());
%>
	<script type="text/javascript">
 		alert("하여튼 에러!");
 		location.href = "num2.html";
 	</script>
<% } %>
</body>
</html>