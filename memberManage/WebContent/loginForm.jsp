<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body><form action="loginProcess.jsp" name="loginform" method="post">

	<table border="1">
		<tr>
			<td colspan="2"><h3>로긴 페이지</h3></td>

		</tr>
		<tr>
			<td>아이디</td>
			<td><input type="text" name="id" /></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="pass" /></td>
		</tr>
		<tr><td colspan="2" align="center"><a href="javascript:loginform.submit()">로그인</a>
		<a href="joinForm.jsp">회원가입</a></td></tr>
	</table>
</form>

</body>
</html>