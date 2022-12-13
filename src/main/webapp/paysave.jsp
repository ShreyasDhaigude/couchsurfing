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
	
	String  name,Expm,Expy,credit;
	
	 int  id,cvv;
	 
	 
  id = Integer.parseInt(request.getParameter("rid"));

	 
	name=request.getParameter("name");
	
	credit = request.getParameter("credit");	
	
	Expm=request.getParameter("expm");
	
	Expy=request.getParameter("expy");	
	
  cvv = Integer.parseInt(request.getParameter("cvv"));
  
  Class.forName("com.mysql.cj.jdbc.Driver");

  Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/travel","root","");
  

  String q="insert into pay(name,credit,expm,expy,cvv,rid) values('"+name+"','"+credit+"','"+Expm+"','"+Expy+"','"+cvv+"','"+id+"')";

  PreparedStatement psmt=conn.prepareStatement(q);

  int row=psmt.executeUpdate();

  if(row>0)
  {
  	
  	%>
	<script>window.location.href="done.jsp";</script>
  	
  	
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