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


		String   country,state,packages;
		
		 int   id,adult, children;
		 
		 
		id=Integer.parseInt(request.getParameter("id"));

		country=request.getParameter("country");
		
		state=request.getParameter("state");
		
		packages=request.getParameter("packages");
				
		adult = Integer.parseInt(request.getParameter("adult"));
		 
	  children = Integer.parseInt(request.getParameter("children"));
	  
 
 
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/travel","root","");
	
	 String q="update package  set country='"+country+"',state='"+state+"',packages='"+packages+"',adult='"+adult+"',children='"+children+"' where id='"+id+"'";
	 
	 

	
   PreparedStatement psmt=conn.prepareStatement(q);
   
   int row=psmt.executeUpdate();
   
   
   if(row>0)
   {
	   %>	   
	   <script>window.location.href="bookingpack.jsp";</script>
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