<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function aaa(){
  if(document.frm.txt.value.length==0){
	  alert("학번을 입력하세요.");
	  return fasle;
  }
  if(document.frm.name.value.length==0){
	  alert("이름을 입력하지 않았습니다.");
	  return fasle;
  }
  return true;
}







</script>
</head>
<body>

<jsp:include page="header.jsp"></jsp:include>

<section>

<form name="frm" action="ttt.jsp">
<h2>학생성적 등록</h2>
<table border="1">
<tr>
  <td>학번</td>
  <td><input type="text" name="number"></input></td>
</tr>

<tr>
  <td>이름</td>
  <td><input type="text" name="txt"></input></td>
</tr>

<tr>
  <td>성별</td>
  <td><input type="radio">남</input>
  <input type="radio">여</input></td>
</tr>

<tr>
  <td>국어</td>
  <td><input type="text"></input></td>
</tr>

<tr>
  <td>수학</td>
  <td><input type="text"></input></td>
</tr>

<tr>
  <td>영어</td>
  <td><input type="text"></input></td>
</tr>

<tr>
  <td>역사</td>
  <td><input type="text"></input></td>
</tr>

<tr>
  <td><input type="submit" value="제출" onclick="return aaa();"></td>
</tr>




</form>
</section>

<jsp:include page="footer.jsp"></jsp:include>



</body>
</html>