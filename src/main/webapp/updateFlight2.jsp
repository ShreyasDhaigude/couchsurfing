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
	
	
	String From,To,Day,flight,Class;
	
	 int  adult, children,id;
	 
	 
		id=Integer.parseInt(request.getParameter("id"));

	 
	From=request.getParameter("start");
	
	To=request.getParameter("stop");
	
	Day=request.getParameter("day");
	
	flight=request.getParameter("flight");	
	
	Class=request.getParameter("class");
	
	adult = Integer.parseInt(request.getParameter("adult"));
	 
 children = Integer.parseInt(request.getParameter("children"));
 
 
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/travel","root","");
	
	 String q="update flight2  set start='"+From+"',stop='"+To+"',day='"+Day+"',flight='"+flight+"',class='"+Class+"',adult='"+adult+"',children='"+children+"' where id='"+id+"'";
	 
	 

	
   PreparedStatement psmt=conn.prepareStatement(q);
   
   int row=psmt.executeUpdate();
   
   
   if(row>0)
   {
	   %>	   
	   <script>window.location.href="bookingFlight.jsp";</script>
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