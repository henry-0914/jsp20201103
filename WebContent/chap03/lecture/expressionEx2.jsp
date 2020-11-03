<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>

<%
java.util.Map<String, String> map = new java.util.HashMap<>();
map.put("java", "script");
map.put("html", "script");
map.put("dbms", "script");
map.put("servlet", "script");
map.put("jquery", "script");
map.put("python", "script");
%>
<ul>
<%
for(java.util.Map.Entry<String, String> entry : map.entrySet()) {
%>
<li>
<%
out.print(entry.getKey());
out.print(":");
out.print(entry.getValue());
%>
</li>
<%
}
%>
</ul>

</body>
</html>