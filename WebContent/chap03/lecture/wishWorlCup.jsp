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
	age  : 20~25세 <input type="checkbox" name="age" value="20~25세" />
           26~30세<input type="checkbox" name="age" value="26~30세" />
           31~36세<input type="checkbox" name="age" value="31~ 36세" /> <br>
	job   : <input type = "text" name = "job" /> <br>
	money : <input type = "number" name = "연봉" /> <br>
	wight : 60키로 이하<input type = "checkbox" name = "wight" value= " 60키로 이하" />
	        65키로 이하<input type = "checkbox" name = "wight" value= " 65키로 이하" />
	        70키로 이하<input type = "checkbox" name = "wight" value= " 70키로 이하" />
	        75키로 이상<input type = "checkbox" name = "wight" value= " 75키로 이상" /> <br>
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
String money = request.getParameter("money");
String[] wight = request.getParameterValues("wight");
String high = request.getParameter("high");
String gender = request.getParameter("gender");
String[] family = request.getParameterValues("family");
%>
live: <%= live %> <br/>
age : 
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
money : <%= money %> <br />
wight :
<%
if(wight != null) {
for (int i = 0; i < wight.length; i++) {
 out.print(wight[i]);
 if (i != wight.length-1) {
  out.print(", "); 
 }
}
}

%> <br/>
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