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
<h1>방명록</h1>
<form action="" method="post">
  제목 : <input type="text" name="title" /> <br />
  <textarea name="body" cols="30" rows="10"></textarea>
  
  <br />
  <input type="submit" value="등록" />
</form>
<hr />
<ul>
<%
for (Post post : list) {
for (int i = 0; i < list.size(); i++) {
%>
  <li><%= post.getTitle() %></li>
  <li><a href="detail.jsp?id=<%= i %>"><%= list.get(i).getTitle() %></a></li>
<%
}
%>
</ul>
</body>
</html>
