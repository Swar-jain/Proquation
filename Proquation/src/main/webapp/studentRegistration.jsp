<!-- Author name: Swarnalatha Sreenigarajan
Co-author name: Rahul Suresh, Raghavan Sreenivasa 
Version 1.0
-->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="/header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Student Registration</title>
<link rel="stylesheet" type="text/css" href="/Proquation/css/studentLogin.css">	

</head>
<body class="bgimg">
   <div align="center">
      <div class="container"  align="center">
          <form action="studentregister" onsubmit="return submitform()" method="post">
          <%
          	String errorMessage = (String)request.getAttribute("errorMessage");
          	if(errorMessage != null) {
          		out.println(errorMessage);
          	}
          %>
          	<h3> Sign Up </h3>
          	<div>
            	<label for="name">NAME</label>
            	<input type="text" id="fname" name="firstname" placeholder="Your Full name.."> <br>
          	</div>
          
          	<div class="form">
				<label for="Class">CLASS</label> 
				<select id="Class" name="grade">
				<option value="1">1-3</option>
				<option value="4">4-6 </option>
				</select></br>
		  	</div>
          
          	<label for="uname">USERNAME</label>
          	<input type="text" id="uname" name="username" placeholder="Your username.."> <br>
         
          	<label for="PASS">PASSWORD</label>
          	<input type="password" id="PASS" name="password" placeholder="Enter your password.."> <br>
    
          	<label for="PASS1">RE-ENTER PASSWORD</label>
          	<input type="password" id="PASS1" name="PASS1" placeholder="Enter your password again.."> <br>
          	<input class = "form button" type="submit" name="submit" value="Register">
		  </form>
		<script type="text/javascript">
       		function submitform(){
            	if((document.getElementById('fname').value.length==0) || (document.getElementById('uname').value.length==0) ||(document.getElementById('Grade').value.length==0) ) {
            		window.alert("Enter all details!");
            		return false;
            	}
                else
                	window.alert("Success");
                    return true;
                }
  		</script>
		</div>
	</div> 
</body>
</html>