<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>gugu.jsp</title>
</head>
<body>
<%
	try {
		int num = Integer.parseInt(request.getParameter("num"));
		if (num > 9 || num < 2) {	
%>
	<script type="text/javascript">
		alert("여기가 인도냐!!");
		history.go(-1); // 전 페이지로 이동
	</script>
<%
		}
		out.println("<h2>구구단 " + num + "단</h2>");
		for (int i = 1; i <= 9; i++) {
			out.println(num + " * " + i + " = " + (num*i) + "<br>");
		}
		
	} catch(Exception e) {
%>		
	<script type="text/javascript">
		alert("숫자만 입력해주세요!");
		history.go(-1);
	</script>
<% } %>
	
	
	


</body>
</html>