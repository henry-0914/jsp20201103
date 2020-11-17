<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
String eno = request.getParameter("eno");
String sql = "SELECT s.grade " 
           + "FROM employee e, salgrade s "
           + "WHERE e.salary BETWEEN s.losal AND s.hisal "
           + "AND e.eno = ?";
Class.forName("oracle.jdbc.driver.OracleDriver");
String url = "jdbc:oracle:thin:@localhost:1521:orcl";
String id = "c##mydbms";
String pw = "admin";
Connection con = DriverManager.getConnection(url, id, pw);
PreparedStatement stmt = con.prepareStatement(sql);
stmt.setInt(1, Integer.parseInt(eno));
ResultSet rs = stmt.executeQuery();
int salgrade = 0;
if (rs.next()) {
  salgrade = rs.getInt(1); 
}
%>
<!DOCTYPE html>
<html>
<head>

<title>Insert title here</title>
</head>
<body>

<h1><%= eno %>의 등급은 <%= salgrade %> 입니다.</h1>
</body>
</html> 
</html>