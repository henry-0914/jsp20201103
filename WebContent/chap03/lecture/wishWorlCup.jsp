<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<h1> 이상형 월드컵</h1>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<form action ="">
	live : <input type = "text" name = "live" /> <br>
	age  : 20대 <input type="checkbox" name="age" value="20대" />
           30대<input type="checkbox" name="age" value="30대" />
           40대<input type="checkbox" name="age" value="40대" /> <br>
	job   : <input type = "text" name = "job" /> <br>
	high  : <input type = "number" name = "high" /> <br>
	gender : 남자 <input type ="radio" name = "gender" value = "male" /> 
			  여자 <input type = "radio" name = "gender" value = "female" /> <br>
	family : 부모 <input type="checkbox" name="family" value="부모" />
                        형제<input type="checkbox" name="family" value="형제" />
                        자매<input type="checkbox" name="family" value="자매" />
                   조부모 <input type="checkbox" name="family" value="조부모" /> <br />
			  
	<input type ="submit" value = "전송" class = "btn btn-primary"/>
</form>
<%
String live = request.getParameter("live");
String[] age = request.getParameterValues("age");
String job = request.getParameter("job");
String high = request.getParameter("high");
String gender = request.getParameter("gender");
String[] family = request.getParameterValues("family");
%>
live: <%= live %> <br/>
age : <br />
<%
if(age != null) {
for (int i = 0; i < age.length; i++) {
 out.print(age[i]);
 if (i != age.length-1) {
  out.print(", "); 
 }
}
}
%> <br />
job : <%= job %> <br />
gender : <%= gender %> <br/>
family : 

<%
if(family != null) {
for (int i = 0; i < family.length; i++) {
 out.print(family[i]);
 if (i != family.length-1) {
  out.print(", "); 
 }
}
}
%>

<br />
</body>
</html>