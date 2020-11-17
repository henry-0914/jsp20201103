<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
String dno = request.getParameter("dno");
String sql = "SELECT max(salary), min(salary), avg(salary), "
           + "sum(salary) "
           + "FROM employee "
           + "WHERE dno = ?";
Class.forName("oracle.jdbc.driver.OracleDriver");
String url = "jdbc:oracle:thin:@localhost:1521:orcl";
String id = "c##mydbms";
String pw = "admin";
Connection con = DriverManager.getConnection(url, id, pw);
PreparedStatement pstmt = con.prepareStatement(sql);
pstmt.setInt(1, Integer.parseInt(dno));
ResultSet rs = pstmt.executeQuery();
int max = 0;
int min = 0;
double avg = 0;
int sum = 0;
if (rs.next()) {
  max = rs.getInt(1);
  min = rs.getInt(2);
  avg = rs.getDouble(3);
  sum = rs.getInt(4);
}
pstmt.close();
con.close();
%>
<!DOCTYPE html>
<html>