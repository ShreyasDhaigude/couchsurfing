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


name=request.getParameter("user");

email=request.getParameter("email");

password=request.getParameter("pass");


Class.forName("com.mysql.cj.jdbc.Driver");

Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Travel","root","");


String q="insert into Registration(name,email,password)values('"+name+"','"+email+"','"+password+"')";



	

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
	    <script>window.location.href=" error.jsp";</script>
	    
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