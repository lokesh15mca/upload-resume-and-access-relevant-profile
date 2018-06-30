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
<body>
<%
   String emailid = request.getParameter("emailid");
String name = request.getParameter("name");
String skill = request.getParameter("skill");
try{
	DriverManager.registerDriver(new OracleDriver());
	System.out.println("driver loaded successfully");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/XE","SYS AS SYSDBA","chinmayi");
if(con!=null)
{
	System.out.println("connection established");
}
String sql = "insert into candidates(emailid,name,skill) values(?,?,?)";
PreparedStatement stmt = con.prepareStatement(sql);
                stmt.setString(1, emailid);
                stmt.setString(2, name);
                stmt.setString(3, skill);
                int row = stmt.executeUpdate();
                if(row>0)
                {
                	System.out.println("row inserted");
                	%>
                	<script type="text/javascript">alert("record inserted",3000);
                	window.location.href="uploadFile.jsp";
                	</script>
                	<%
                }
}
catch(Exception e)
{
	e.printStackTrace();
}
%>      
</body>
</html>