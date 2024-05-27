<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
out.print("학번 : " + request.getParameter("number") + "<br>");
 %>



<%
out.print("이름 : " + request.getParameter("txt") + "<br>");
 %>





</body>
</html>