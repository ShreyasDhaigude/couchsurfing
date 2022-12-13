
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
  font-family: Arial;
  font-size: 17px;
  padding: 8px;
}

* {
  box-sizing: border-box;
}

.row {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  -ms-flex-wrap: wrap; /* IE10 */
  flex-wrap: wrap;
  margin: 0 -16px;
}

.col-25 {
  -ms-flex: 25%; /* IE10 */
  flex: 25%;
}

.col-50 {
  -ms-flex: 50%; /* IE10 */
  flex: 50%;
}

.col-75 {
  -ms-flex: 75%; /* IE10 */
  flex: 75%;
}

.col-25,
.col-50,
.col-75 {
  padding: 0 16px;
}

.container {
  background-color: #f2f2f2;
  padding: 5px 20px 15px 20px;
  border: 1px solid lightgrey;
  border-radius: 3px;
}

input[type=text] {
  width: 100%;
  margin-bottom: 20px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 3px;
}

label {
  margin-bottom: 10px;
  display: block;
}

.icon-container {
  margin-bottom: 20px;
  padding: 7px 0;
  font-size: 24px;
}

.btn {
  background-color: #04AA6D;
  color: white;
  padding: 12px;
  margin: 10px 0;
  border: none;
  width: 100%;
  border-radius: 3px;
  cursor: pointer;
  font-size: 17px;
}

.btn:hover {
  background-color: #45a049;
}

a {
  color: #2196F3;
}

hr {
  border: 1px solid lightgrey;
}

span.price {
  float: right;
  color: grey;
}

/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (also change the direction - make the "cart" column go on top) */
@media (max-width: 800px) {
  .row {
    flex-direction: column-reverse;
  }
  .col-25 {
    margin-bottom: 20px;
  }
}
</style>
</head>
<body>

<h2> Payment Form</h2>
<div class="row">
  <div class="col-75">
    <div class="container">
      <form method="post" action="paysave.jsp">
      
        <div class="row">

          <div class="col-50">
            <h3>Payment</h3>
            <label for="fname">Accepted Cards</label>
            <div class="icon-container">
              <i class="fa fa-cc-visa" style="color:navy;"></i>
              <i class="fa fa-cc-amex" style="color:blue;"></i>
              <i class="fa fa-cc-mastercard" style="color:red;"></i>
              <i class="fa fa-cc-discover" style="color:orange;"></i>
            </div>
             <label >Enter Your ID</label>
            <input type="number"  name="rid" placeholder="Id">
           
            <label >Name on Card</label>
            <input type="text"  name="name" placeholder="John More Doe">
            <label >Credit card number</label>
               <input type="text"  name="credit" placeholder="111-2222-333-4444">         
            <label >Exp Month</label>
            <input type="date"  name="expm" placeholder="September">
            <div class="row">
              <div class="col-50">
                <label >Exp Year</label>
                <input type="date"  name="expy" placeholder="2018">
              </div>
              <div class="col-50">
                <label >CVV</label>
                <input type="number"  name="cvv" placeholder="352">
              </div>
            </div>
          </div>
          
        </div>
        <label>
          <input type="checkbox" checked="checked" name="sameadr"> Shipping address same as billing
        </label>
         <input type="submit"  value="Continue to checkout" class="btn">
      </form>
    </div>
  </div>
  <div class="col-25">
    <div class="container">
      <h4>Cart <span class="price" style="color:black"><i class="fa fa-shopping-cart"></i> <b></b></span></h4>   
      
          
           	 
     
      <!-- car -->
      
     <% 
     int t1;
     int t2;
     int t3;
     int t4;
     int t5;
     int t6;
  	
    String types =(String)session.getAttribute("t");
      
      int adult=(int)session.getAttribute("a");
      
      
      int children=(int)session.getAttribute("c");
      
      
      System.out.println(types);
     
      if(types.equals("Economy :white")) 	  
      {
    	   t1= 2000;
    	  
    	 %> 
   	   <p> CarType: <a href="#"></a><%=types %><span ></span></p>
   	  <p>adult: <a href="#"></a><%=adult %><span ></span></p>
   	   <p>children:<a href="#"></a><%=children %><span ></span></p>
   	
   	<p>price: <a href="#"></a><%=t1 %><span ></span></p>
   	<%
   	
   	%>
       <hr>
     <p>Total <span class="price" style="color:black"><b><%=t1 %></b></span></p>
     </div>
      <%      	 
    	  
    	   	  
      }
      
      if(types.equals("Economy:green")) 	  
      {
    	   t2= 2000;
    	  
    	  
    	  %>
   	   <p> CarType: <a href="#"></a><%=types %><span ></span></p>
   	  <p>adult: <a href="#"></a><%=adult %><span ></span></p>
   	   <p>children:<a href="#"></a><%=children %><span ></span></p>
   	
   	<p>price: <a href="#"></a><%=t2 %><span ></span></p>
   	<%
   	
   	%>
       <hr>
     <p>Total <span class="price" style="color:black"><b><%=t2%></b></span></p>
     </div>
      <%      	 
    	   	  
      }
      
      if(types.equals("Economy:silver")) 	  
      {
    	   t3= 2000;
    	  %>
   	   <p> CarType: <a href="#"></a><%=types %><span ></span></p>
   	  <p>adult: <a href="#"></a><%=adult %><span ></span></p>
   	   <p>children:<a href="#"></a><%=children %><span ></span></p>
   	
   	<p>price: <a href="#"></a><%=t3 %><span ></span></p>
   	<%
   	
   	%>
       <hr>
     <p>Total <span class="price" style="color:black"><b><%=t3 %></b></span></p>
     </div>
      <%      	 
    	  
    	   	  
      }
      
      
      if(types.equals("Luxury:dark blue")) 	  	
      {
    	   t4= 8000;
    	  %>
      	   <p> CarType: <a href="#"></a><%=types %><span ></span></p>
      	  <p>adult: <a href="#"></a><%=adult %><span ></span></p>
      	   <p>children:<a href="#"></a><%=children %><span ></span></p>
      	
      	<p>price: <a href="#"></a><%=t4 %><span ></span></p>
      	<%
      	
      	%>
          <hr>
        <p>Total <span class="price" style="color:black"><b><%=t4 %></b></span></p>
        </div>
         <%      	 
    	  
    	   	  
      }
      
      if(types.equals("Luxury:light blue and black")) 	  
      {
    	   t5= 8000;
    	  %>
      	   <p> CarType: <a href="#"></a><%=types %><span ></span></p>
      	  <p>adult: <a href="#"></a><%=adult %><span ></span></p>
      	   <p>children:<a href="#"></a><%=children %><span ></span></p>
      	
      	<p>price: <a href="#"></a><%=t5 %><span ></span></p>
      	<%
      	
      	%>
          <hr>
        <p>Total <span class="price" style="color:black"><b><%=t5 %></b></span></p>
        </div>
         <%      	 
    	  
    	   	  
      }
    	  
      if(types.equals("Luxury:dark black")) 	  
      {
    	   t6= 8000;
    	  
    	  %>
      	   <p> CarType: <a href="#"></a><%=types %><span ></span></p>
      	  <p>adult: <a href="#"></a><%=adult %><span ></span></p>
      	   <p>children:<a href="#"></a><%=children %><span ></span></p>
      	
      	<p>price: <a href="#"></a><%=t6 %><span ></span></p>
      	<%
      	
      	%>
          <hr>
        <p>Total <span class="price" style="color:black"><b><%=t6 %></b></span></p>
        </div>
         <%      	 
    	   	  
      }
    	  
      
      
      
      
    
      
      
      
      
      %>
      
      
      
      
      
      
      
      
      
           
      
     	
    	
        
      
      
      
      
      
       
       
       
       <!-- hotel -->
       
       
       
       
       
       
       
       
       
	   
	   
	   <!-- package -->
	   
       
       
       
       
       
       
       
       
       
       
       
       
    	
      
        
       
     
   
  </div>
</div>	

</body>
</html>
   



