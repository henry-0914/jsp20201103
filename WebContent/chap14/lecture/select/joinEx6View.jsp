<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<% 
String eno = request.getParameter("eno");
String sql = "SELECT e1.ename "
             + "FROM employee e1, employee e2 "
             + "WHERE e1.manager = e2.eno "
             + "AND e2.eno = ?";
Class.forName("oracle.jdbc.driver.OracleDriver");
String url = "jdbc:oracle:thin:@localhost:1521:orcl";
String id = "c##mydbms";
String pw = "admin";
Connection con = DriverManager.getConnection(url, id, pw);
PreparedStatement stmt = con.prepareStatement(sql);
stmt.setInt(1, Integer.valueOf(eno));
List<String> list = new ArrayList<>();
ResultSet rs = stmt.executeQuery();
while (rs.next()) {
  list.add(rs.getString(1)); 
}
stmt.close();
con.close();
%>
<!DOCTYPE html>
<html>
<head>

<title>Insert title here</title>
</head>
<body>
<ul>
<%
for (String name : list) {
%>
  <li><%= name %></li>
<% 
}
%>

</ul>
</body>
</html> 
</html>