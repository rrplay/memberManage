<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입페이지</title>
</head>
<body>
	<form name="joinform" action="joinProcess" method="post">
		<table border="1">
			<tr>
				<td>아이디</td>
				<td><input name="id" type="text"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input name="pass" type="password"></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input name="name" type="text"></td>
			</tr>
			<tr>
				<td>나이</td>
				<td><input name="age" type="text" maxlength="2" size="5"></td>
			</tr>
			<tr>
				<td>성별</td>
				<td><input name="gender" type="radio" value="남"
					checked="checked" />남자 <input name="gender" type="radio" value="여" />여자</td>
			</tr>
			<tr>
				<td colspan="2"><a href="javascript:joinform.submit()">회원 가입</a>
				<a href="javascript:joinform.reset()">다시입력</a>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>