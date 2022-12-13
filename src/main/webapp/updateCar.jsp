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

 String q= "select * from  car  where id='"+cid+"'";
 
 
PreparedStatement psmt=conn.prepareStatement(q);
	
ResultSet rs=psmt.executeQuery();


int id=0,adult,children,car;

String City,book,day,types;

while(rs.next())
{
	 id=rs.getInt("id");
	
			    			    	    	
	 City=rs.getString("city");
	
	 book=rs.getString("book");
	
	 day =rs.getString("day");
	
	 car=rs.getInt("ccar");
	
	 types=rs.getString("types");
	
	 adult=rs.getInt("adult");

	 children=rs.getInt("children");

	
	
	%>
                                   
                            
						
				                                   <h2>Edit Car Form</h2>
						

<div>
    <form method="post" action="updateCar2.jsp?id=<%=cid %>">
  <label for="fname">City</label>
    <input type="text" id="fname" name="city" value=<%=City %> placeholder="City">
  
  
  <label for="fname">Day of booking</label>
    <input type="date" id="fname" name="book"  value=<%=book %> placeholder=" Day of booking.."><br> <br>
  
  <label for="fname">Day of Return </label>
    <input type="date" id="fname"name="day"  value=<%=day %> placeholder="Day of Return.."> <br> <br>
  
  
    <label for="fname">seater car</label>
    <input type="number" id="fname" name="ccar"  value=<%=car %> placeholder="seater car.."> <br> <br>

    <label for="country">Types</label>
    <select id="country"name="types"  value=<%=types %>> <br> <br>
         <option value="Economy :white">Economy :white </option>
	      <option value="Economy:green">Economy:green</option>
		<option value="Economy:silver">Economy:silver</option>						
		<option value="Luxury:dark blue">Luxury:dark blue</option>
        <option value="Luxury:light blue and black">Luxury:light blue and black</option>
	   <option value="Luxury:dark black">Luxury:dark black</option>      
   </select>
    
    <label for="fname">Adult</label>
    <input type="number" id="fname" name="adult"  value=<%=adult %> placeholder="Adult.."> <br> <br>
    
    <label for="fname">children</label>
    <input type="number" id="fname"name="children"  value=<%=children %> placeholder="children.."> <br> <br>
    
  
    <input type="submit" value=" Car booking ">
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