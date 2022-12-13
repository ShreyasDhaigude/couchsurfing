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
<body>

<% 


try{

	Class.forName("com.mysql.cj.jdbc.Driver");

	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Travel","root","");
	
	int rid=(Integer)session.getAttribute("id");

	 String q= "select * from registration  where rid='"+rid+"'";
	 
	 
	PreparedStatement psmt=conn.prepareStatement(q);
	ResultSet rs=psmt.executeQuery();
	
	%>
	<form method="post" action="forgotPass4.jsp?rid=<%=rid %>" style="max-width:500px;margin:auto">
  <h2>Set your new password</h2>
  
 <div class="input-container">
    <i class="fa fa-key icon"></i>
    <input class="input-field" type="password" placeholder="Password" name="password">
  </div>
  
  <button type="submit" class="btn">Update Password</button>
</form>

	
	
	<%
	

	
}

catch(Exception e)
{
	

out.println(e);


}

%>

</body>
</html>