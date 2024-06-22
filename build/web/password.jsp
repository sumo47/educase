<!DOCTYPE html>
<html>
<head>
	<title>Password</title>
	<link rel="shortcut icon"  type="image/png" href="img/favicon.png"/>
        <link rel="stylesheet" type="text/css" href="css/style.css">
	<link href="https://fonts.googleapis.com/css?family=Poppins:600&display=swap" rel="stylesheet">
	<script src="https://kit.fontawesome.com/52874c72f6.js" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<div class="img">
			<img src="img/bg4.svg">
		</div>
		<div class="login-content">
			<form action="password" method="post">
				<h2 class="title" style="font-size :35px;font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;">Change Password</h2>
           		<div class="input-div one">
           		   <div class="i">
           		   		<i class="fas fa-lock"></i>
           		   </div>
           		   <div class="div">
           		   		<h5>Password</h5>
           		   		<input type="password" class="input" name="password">
           		   </div>
           		</div>
           		<div class="input-div pass">
           		   <div class="i"> 
           		    	<i class="fas fa-lock"></i>
           		   </div>
           		   <div class="div">
           		    	<h5>Confirm_Password</h5>
           		    	<input type="password" class="input" name="cpassword">
            	   </div>
            	</div>
            	<input type="submit" class="btn" value="Submit">
            </form>
        </div>
	</div>
	<script src="js/main.js"></script>
</body>
</html>