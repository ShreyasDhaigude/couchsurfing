<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Add icon library -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

.input-container {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  width: 100%;
  margin-bottom: 15px;
}

.icon {
  padding: 10px;
  background: dodgerblue;
  color: white;
  min-width: 50px;
  text-align: center;
}

.input-field {
  width: 100%;
  padding: 10px;
  outline: none;
}

.input-field:focus {
  border: 2px solid dodgerblue;
}

/* Set a style for the submit button */
.btn {
  background-color: dodgerblue;
  color: white;
  padding: 15px 20px;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.btn:hover {
  opacity: 1;
}
</style>
</head>

</head>
<body>

<%

try{
	

String cid=request.getParameter("rid");

Class.forName("com.mysql.cj.jdbc.Driver");

Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Travel","root","");

 String q= "select * from registration  where rid='"+cid+"'";
 
 
PreparedStatement psmt=conn.prepareStatement(q);
	
ResultSet rs=psmt.executeQuery();


int id=0;

String name,email;

while(rs.next())
{
	id=rs.getInt("rid");
	
	name=rs.getString("name");
	
	email=rs.getString("email");
	
	
	%>
	<form method="post" action="update2.jsp" style="max-width:500px;margin:auto">
  <h2>Edit Register Form</h2>
  <div class="input-container">
    <i class="fa fa-id-card-o icon"></i>
    <input class="input-field" type="text" placeholder="id" name="rid" value="<%=id %>">
  </div>
  <div class="input-container">
    <i class="fa fa-user icon"></i>
    <input class="input-field" type="text" placeholder="Username" name="name" value="<%=name %>">
  </div>

  <div class="input-container">
    <i class="fa fa-envelope icon"></i>
    <input class="input-field" type="text" placeholder="Email" name="email" value=<%=email %>>
  </div>
  

  <button type="submit" class="btn">Register</button>
</form>
	
	
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