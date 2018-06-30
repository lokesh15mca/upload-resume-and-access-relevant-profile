<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

      <hr>
<label>insert a record :</label>
<form action="index3.jsp"method = "post" >
<input type = "text" name ="emailid" placeholder="emailid" required><br>
<input type = "text" name = "name" placeholder= "name " required><br>
<input type = "text" name = "skill" placeholder="skill" required><br>
<input type ="submit" value="Submit Info">


</form>
<hr>
<a href="homepage.jsp"><button>go to homepage</button></a>
</body>
</html>