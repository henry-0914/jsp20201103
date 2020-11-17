<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
String eno = request.getParameter("eno");
String sql = "SELECT d.dname " 
           + "FROM employee e NATURAL JOIN department d "
           + "WHERE e.eno = ?";
Class.forName("oracle.jdbc.driver.OracleDriver");
String url = "jdbc:oracle:thin:@localhost:1521:orcl";
String id = "c##mydbms";
String pw = "admin";
Connection con = DriverManager.getConnection(url, id, pw);
PreparedStatement stmt = con.prepareStatement(sql);
stmt.setInt(1, Integer.valueOf(eno));
ResultSet rs = stmt.executeQuery();
String dname = "";
if (rs.next()) {
  dname = rs.getString(1);
}
stmt.close();
con.close();
%>

<!DOCTYPE html>
<html>
<head>
@@ -18,6 +40,8 @@ String sql = "SELECT d.dname "
<title>Insert title here</title>
</head>
<body>

<h1><%= eno  %>의 부서는 <%= dname %></h1>
</body>
</html> 
</html>