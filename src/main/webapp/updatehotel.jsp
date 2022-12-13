<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>

<html>
<style>
input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

div {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style>

<head>

</head >
<body>

<%

try{
	

String cid=request.getParameter("id");

Class.forName("com.mysql.cj.jdbc.Driver");

Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Travel","root","");

 String q= "select * from  hotel  where id='"+cid+"'";
 
 
PreparedStatement psmt=conn.prepareStatement(q);
	
ResultSet rs=psmt.executeQuery();


int id=0,adult,children,room;

String city,cin,cout,types;

while(rs.next())
{
	
	 id=rs.getInt("id");

	
	city=rs.getString("city");
	
	 cin=rs.getString("cin");
	
	 cout =rs.getString("cout");
	
	 room=rs.getInt("rooms");
	    	    	
	 adult=rs.getInt("adult");

	 children=rs.getInt("children");
	
	
	%>
                                   
                            
						
				                                   <h2>Edit Hotel Form</h2>
						

<div>
    <form method="post" action="updatehotel2.jsp?id=<%=cid %>">
  <label for="fname">City</label>
    <input type="text" id="fname" name="city" value=<%=city %> placeholder="City">
  
  
  <label for="fname">Check In:</label>
    <input type="date" id="fname" name="cin"  value=<%=cin %> placeholder=" Check In:.."><br> <br>
  
  <label for="fname">Check Out: </label>
    <input type="date" id="fname"name="cout"  value=<%=cout %> placeholder="Check Out.."> <br> <br>
  
  
    <label for="fname">Rooms</label>
    <input type="number" id="fname" name="rooms"  value=<%=room %> placeholder="Rooms.."> <br> <br>

    
    <label for="fname">Adult</label>
    <input type="number" id="fname" name="adult"  value=<%=adult %> placeholder="Adult.."> <br> <br>
    
    <label for="fname">children</label>
    <input type="number" id="fname"name="children"  value=<%=children %> placeholder="children.."> <br> <br>
    
  
    <input type="submit" value=" Hotel booking ">
  </form>
</div>
	
	
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