<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
String sql = "SELECT commission FROM employee WHERE eno = 7499";
String sql = "SELECT commission FROM employee WHERE eno = 7369";
String url = "jdbc:oracle:thin:@localhost:1521:orcl";
String user = "c##mydbms";
String pw = "admin";
int commission = 0;
Class.forName("oracle.jdbc.driver.OracleDriver");
try (Connection conn = DriverManager.getConnection(url, user, pw);
    Statement stmt = conn.createStatement();) {
  
  ResultSet rs = stmt.executeQuery(sql);
  
  if (rs.next()) {
  	commission = rs.getInt("commission"); 
  }
} catch (Exception e) {
  e.printStackTrace(); 
}
%>
<!DOCTYPE html>
<html>
@@ -19,4 +38,7 @@ String sql = "SELECT commission FROM employee WHERE eno = 7499";
<body>
<h1>commission: <%= commission %></h1>
</body>
</html> 
</html>