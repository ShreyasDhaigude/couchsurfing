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

 String q= "select * from  flight2  where id='"+cid+"'";
 
 
PreparedStatement psmt=conn.prepareStatement(q);
	
ResultSet rs=psmt.executeQuery();


int id=0,adult,children;

String From,To,Day,flight,Class;

while(rs.next())
{
	id=rs.getInt("id");
	
	From=rs.getString("start");
	
	To=rs.getString("stop");
	
	Day=rs.getString("day");

	 flight=rs.getString("flight");

	Class=rs.getString("class");
	
	adult=rs.getInt("adult");

	children=rs.getInt("children");


	
	
	%>
                                   
                            
						
				                                   <h2>Edit Flight Form</h2>
						

<div>
    <form method="post" action="updateFlight2.jsp?id=<%=cid %>">
  <label for="fname">From</label>
    <input type="text" id="fname" name="start" value=<%=From %> placeholder="From..">
  
  
  <label for="fname">To</label>
    <input type="text" id="fname" name="stop"  value=<%=To %> placeholder="To..">
  
  <label for="fname">Day of booking:</label>
    <input type="date" id="fname"name="day"  value=<%=Day %> placeholder="Day..">
  
  
    <label for="fname">Day of flight:</label>
    <input type="date" id="fname" name="flight"  value=<%=flight %> placeholder="Flight.."> <br> <br>

    <label for="country">Class</label>
    <select id="country"name="class"  value=<%=Class %>> <br> <br>
         <option value="" disabled selected>Economy</option>
	      <option value="economy">Economy</option>
           <option value="first">First</option>
             <option value="business">Business</option>        
   </select>
    
    <label for="fname">Adult</label>
    <input type="number" id="fname" name="adult"  value=<%=adult %> placeholder="Adult.."> <br> <br>
    
    <label for="fname">children</label>
    <input type="number" id="fname"name="children"  value=<%=children %> placeholder="children.."> <br> <br>
    
  
    <input type="submit" value=" Flight booking ">
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