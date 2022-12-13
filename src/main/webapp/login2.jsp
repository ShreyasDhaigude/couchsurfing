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


email=request.getParameter("email");

name=request.getParameter("name");


password=request.getParameter("password");


Class.forName("com.mysql.cj.jdbc.Driver");

Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Travel","root","");


String q="Select * from Registration where   name='"+name+"' and  email= '"+email+"' and password='"+password+"'";

	

PreparedStatement psmt=conn.prepareStatement(q);

ResultSet rs=psmt.executeQuery();
session.setAttribute("Info",name);
if(rs.next())
{
	
	%>
	<script>window.location.href="index.jsp";</script>
	
	
	<%
	
	
}
else
{
	
	%>
	
	<jsp:include page="login.jsp"></jsp:include>
	
	 <font color="red">
	 <% 
	 
	 out.println("INVALDE USERNAME OR PASSWORD");


}




}
	
	

catch(Exception e)
{
out.println(e);



}


%>

</body>
</html>