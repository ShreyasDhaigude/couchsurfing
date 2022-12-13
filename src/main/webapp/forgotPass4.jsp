<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<% 

try{
	
String password;
int id;

id=Integer.parseInt(request.getParameter("rid"));


password=request.getParameter("password");


Class.forName("com.mysql.cj.jdbc.Driver");

Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Travel","root","");


String q="update registration  set password='"+password+"' where rid='"+id+"'";


PreparedStatement psmt=conn.prepareStatement(q);

int row=psmt.executeUpdate();
if(row>0)
{
	
	%>
	<script>window.location.href="login.jsp";</script>
	
	
	<%
	
	
}
	else
	{
		%>
		<script>window.location.href="error.jsp";</script>

		<% 	
	}



}
	
	

catch(Exception e)
{
out.println(e);



}


%>

</body>
</html>