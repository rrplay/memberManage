<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.*"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Context cxt = new InitialContext();
		DataSource ds = (DataSource) cxt
				.lookup("java:comp/env/jdbc/OracleDB");
		conn = ds.getConnection();

		String sql = "SELECT * FROM member WHERE id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);

		rs = pstmt.executeQuery();

		if (rs.next()) {
			if (pass.equals(rs.getString("password"))) {
				session.setAttribute("id", id);
				out.print("<script>location.href='main.jsp'</script>");
			}
		}
		out.print("<script>location.href='loginForm.jsp'</script>");
	%>

</body>
</html>