<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
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
	
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/travel","root","");
	
	 String q="update registration  set name='"+name+"' where rid='"+id+"'";
	 
	 String a="update registration  set email='"+email+"' where rid='"+id+"'";


	
   PreparedStatement psmt=conn.prepareStatement(q);
   
   PreparedStatement psmt1=conn.prepareStatement(a);


   int row=psmt.executeUpdate();
   
   int row1=psmt1.executeUpdate();
     
   
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