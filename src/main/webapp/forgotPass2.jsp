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
	
String name,email,password;

int id;

id=Integer.parseInt(request.getParameter("rid"));

name=request.getParameter("name");


email=request.getParameter("email");


Class.forName("com.mysql.cj.jdbc.Driver");

Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Travel","root","");


String q="Select * from Registration where  rid='"+id+"' and  name= '"+name+"' and email='"+email+"'";

	

PreparedStatement psmt=conn.prepareStatement(q);

ResultSet rs=psmt.executeQuery();
session.setAttribute("id",id);

if(rs.next())
{
	
	%>
	<script>window.location.href="forgotPass3.jsp";</script>
	
	
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