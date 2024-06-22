<%-- 
    Document   : otp
    Created on : Dec 25, 2019, 7:11:13 PM
    Author     : KAMALA KANNAN MOHAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Authentication</title>
        <link rel="shortcut icon"  type="image/png" href="img/favicon.png"/>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link href="https://fonts.googleapis.com/css?family=Poppins:600&display=swap" rel="stylesheet">
	<script src="https://kit.fontawesome.com/52874c72f6.js" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<div class="img">
			<img src="img/bg3.svg">
		</div>
		<div class="login-content">
			<form action="otp" method="post">
				<h2 class="title" style="font-size: 25px">AUTHENTICATION</h2>
           		<div class="input-div one">
           		   <div class="i">
           		   		<i class="fas fa-key"></i>
           		   </div>
           		   <div class="div">
           		   		<h5>Enter OTP</h5>
           		   		<input type="text" class="input" name="otp">
           		   </div>
                </diV>
            	<input type="submit" class="btn" value="Next >>">
            </form>
        </div>
	</div>
	<script src="js/main.js"></script>
</body>
</html>