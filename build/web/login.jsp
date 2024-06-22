<%-- 
    Document   : login
    Created on : Dec 25, 2019, 6:28:57 PM
    Author     : KAMALA KANNAN MOHAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
        <link rel="shortcut icon"  type="image/png" href="img/favicon.png"/>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link href="https://fonts.googleapis.com/css?family=Poppins:600&display=swap" rel="stylesheet">
	<script src="https://kit.fontawesome.com/52874c72f6.js" crossorigin="anonymous"></script>
</head>
<body>
    
	<div class="container">
		<div class="img">
			<img src="img/bg1.svg">
		</div>
		<div class="login-content">
			<form action="login" method="post">
				<img src="img/avatar.png">
				<h2 class="title" style="font-size :35px;">LOGIN</h2>
           		<div class="input-div one">
           		   <div class="i">
           		   		<i class="fas fa-envelope"></i>
           		   </div>
           		   <div class="div">
           		   		<h5>Email Address</h5>
           		   		<input type="email" class="input" name="email">
           		   </div>
           		</div>
           		<div class="input-div pass">
           		   <div class="i"> 
           		    	<i class="fas fa-lock"></i>
           		   </div>
           		   <div class="div">
           		    	<h5>Password</h5>
           		    	<input type="password" class="input" name="password">
            	   </div>
            	</div>
            	<a href="forget.jsp">Forgot Password?</a>
            	<input type="submit" class="btn" value="Login">
            </form>
        </div>
	</div>
	<script src="js/main.js"></script>
        
</body>
</html>