<%-- 
    Document   : admin
    Created on : Dec 29, 2019, 4:20:08 PM
    Author     : KAMALA KANNAN MOHAN
--%>

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
			<img src="img/bg5.svg">
		</div>
		<div class="login-content">
			<form action="admin" method="post">
				<img src="img/avatar.png">
				<h2 class="title" style="font-size :35px;">ADMIN LOGIN</h2>
           		<div class="input-div one">
           		   <div class="i">
           		   		<i class="fas fa-envelope"></i>
           		   </div>
           		   <div class="div">
           		   		<h5>Username</h5>
           		   		<input type="text" class="input" name="user">
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
            	</div><br>
            	<input type="submit" class="btn" value="Login">
            </form>
        </div>
	</div>
	<script src="js/main.js"></script>
</body>
</html>