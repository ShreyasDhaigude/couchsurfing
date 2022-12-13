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
	
	
	String city,bookcar,day, types;
	
	 int  id, seatercar, adult, children;
	 
	 
	 
		id=Integer.parseInt(request.getParameter("id"));
	 
		city=request.getParameter("city");
		
	    bookcar=request.getParameter("book");
		
		day=request.getParameter("day");
		
		seatercar = Integer.parseInt(request.getParameter("ccar"));
		
		types=request.getParameter("types");
		
		adult = Integer.parseInt(request.getParameter("adult"));
		 
	  children = Integer.parseInt(request.getParameter("children"));
 
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/travel","root","");
	
	 String q="update car  set city='"+city+"',book='"+bookcar+"',day='"+day+"',ccar='"+seatercar+"',types='"+types+"',adult='"+adult+"',children='"+children+"' where id='"+id+"'";
	 
	 

	
   PreparedStatement psmt=conn.prepareStatement(q);
   
   int row=psmt.executeUpdate();
   
   
   if(row>0)
   {
	   %>	   
	   <script>window.location.href="bookingCar.jsp";</script>
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