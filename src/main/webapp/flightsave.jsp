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

try
{
	
	String from,to,day,flight,fClass;
	
	 int   id,adult, children;
	 
   id = Integer.parseInt(request.getParameter("rid"));
	 
	from=request.getParameter("start");
	
	to=request.getParameter("stop");
	
	day=request.getParameter("day");
	
	flight=request.getParameter("flight");	
	
	fClass=request.getParameter("class");
	
	adult = Integer.parseInt(request.getParameter("adult"));
	 
  children = Integer.parseInt(request.getParameter("children"));
  
  
  
  Class.forName("com.mysql.cj.jdbc.Driver");

  Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/travel","root","");
  
  
  
  String q="insert into flight2(start,stop,day,flight,class,adult,children,rid) values('"+from+"','"+to+"','"+day+"','"+flight+"','"+fClass+"','"+adult+"','"+children+"','"+id+"')";

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