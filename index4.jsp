<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import= "java.sql.* " %>
    <%@ page import = "oracle.jdbc.driver.OracleDriver"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body >

<label><h1><b>enter relevant data:</b></h1></label>
<form action="index5.jsp" method="post" >
<input type ="text" name ="skill" placeholder="example: java, c#, python etc." style="width:300px;height:20px"><br><br>
<input type ="submit" name = "search" value="search for a skill" onclick="myMethod()">
</form>

<br><br>

<a type ="button" href="homepage.jsp"><button>home</button></a>
</body>

</html>