<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:include page="header.jsp"></jsp:include>
<section>

<h2>학생조회</h2> 
<table border="1">

<tr>
  <td>학번</td>
  <td>이름</td>
  <td>성별</td>
  <td>학년</td>
  <td>반</td>
  <td>번호</td>
</tr>


<%
try{
Class.forName("oracle.jdbc.OracleDriver");
Connection con=DriverManager.getConnection
("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
Statement stmt=con.createStatement();
// String sql="select from kw03_member2";
String sql="select id as 아이디,name as 이름,gender as 성별, "+ 
  " substr(id,1,1) 학년, "+
  " substr(id,2,2) 반, "+
  " substr(id,4,2) 번호 "+
  " from kw03_member2";



ResultSet rs=stmt.executeQuery(sql);
while(rs.next()){
	out.print("<tr>");
	out.print("<td>" + rs.getString("아이디") + "</td>");
	out.print("<td>" + rs.getString("이름") + "</td>");
	out.print("<td>" + rs.getString("성별") + "</td>");
	out.print("<td>" + rs.getString("학년") + "</td>");
	out.print("<td>" + rs.getString("반") + "</td>");
	out.print("<td>" + rs.getString("번호") + "</td>");
	out.print("</tr>");
}
}catch(Exception e){
e.printStackTrace();
}
%>




</table>
</section>


<jsp:include page="footer.jsp"></jsp:include>



</body>
</html>