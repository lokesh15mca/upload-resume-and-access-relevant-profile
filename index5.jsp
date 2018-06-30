<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%><%@ page import= "java.sql.* " %>
    <%@ page import = "oracle.jdbc.driver.OracleDriver"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try{
		String skills = request.getParameter("skill");
		DriverManager.registerDriver(new OracleDriver());
		System.out.println("driver loaded successfully");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/XE","SYS AS SYSDBA","chinmayi");
	if(con!=null)
	{
		System.out.println("connection established");
	}
	//String query = "select emailid,name from candidates"+"where skill ";
	String query1 = "select emailid,name from candidates where skill = '" + skills +"'";
	Statement stmt = con.createStatement();
	ResultSet rs = stmt.executeQuery(query1);
	out.print("<div style='width:500px; height:600px;border:2px solid green;overflow:scroll;margin-left:100px'>");
	while(rs.next())
	{
		  out.println("NAME : "+rs.getString(2)+"<br>");
		  out.println("EMAIL ID :"+rs.getString(1));
		  out.println("<br>"+"<hr>"+"<br>");
	}
	out.print("</div>");
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
%>
<a type ="button" href="index4.jsp"><button>Search for a skill</button></a>
</body>
</html>