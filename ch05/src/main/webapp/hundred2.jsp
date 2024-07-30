<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>hundred2.jsp</title>
</head>
<body>
<%
	int sum = 0;
	for (int i = 1; i <= 100; i++) {
		sum += i;
	}
	request.setAttribute("sum1", sum);
	// pageContext는 해당 페이지에서만 살아있고 다른 페이지로는 값이 안넘어감
	pageContext.setAttribute("sum2", sum);
	// 페이지 이동
	RequestDispatcher rd = request.getRequestDispatcher("hunResult2.jsp");
	rd.forward(request, response);
%>

</body>
</html>