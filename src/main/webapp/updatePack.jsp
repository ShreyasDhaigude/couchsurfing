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

 String q= "select * from  package  where id='"+cid+"'";
 
 
PreparedStatement psmt=conn.prepareStatement(q);
	
ResultSet rs=psmt.executeQuery();


int id=0,adult,children;

String country,state ,packages;

while(rs.next())
{
	
	 id=rs.getInt("id");
	
 country=rs.getString("country");
	
	 state=rs.getString("state");
	
	 packages =rs.getString("packages");
			    	    	    	    	
	 adult=rs.getInt("adult");

	 children=rs.getInt("children");


	
	
	%>
                                   
                            
						
				                                   <h2>Edit Packages Form</h2>
						

<div>
    <form method="post" action="updatePack2.jsp?id=<%=cid %>">
  <label for="fname">country</label>
    <input type="text" id="fname" name="country" value=<%=country %> placeholder="Country..">
  
  
  <label for="fname">State</label>
    <input type="text" id="fname" name="state"  value=<%=state %> placeholder="State..">
  
 
    <label for="country">Packages</label>
    <select name="packages" class="cs-select cs-skin-border">
	<option value="For 1state:1/lakh">For 1state:1/lakh</option>
	<option value="For 2state:2/lakh">For 2state:2/lakh</option>
	<option value="For 3state:3/lakh">For 3state:3/lakh</option>						
	<option value="For 4state:4/lakh">For 4state:4/lakh</option>
    <option value="For 5state:5/lakh">For 5state:5/lakh</option>
	<option value="For 6state:6/lakh">For 6state:6/lakh</option>
													     
														
</select>
    
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