<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Sign Up Form by Colorlib</title>

<!-- Font Icon -->
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="css/style.css">
</head>
<body style="background:#282726;">
<input type="hidden" id="status" value=<%=request.getAttribute("status") %>">
	<div class="main">

		<!-- Sign up form -->
		 <div class="row" style="margin-left:30%; margin-top:200px;margin-right: 30% ">
						 <h3 style="text-align: center;padding-top:40px; 
	    margin-bottom:12%;
	    color:#fff;">Sign up</h3>
		
					
						<form method="post" action="register" class="register-form"
							id="register-form">
							 <div class="form-group">
                    <input type="text" class="email-bt" placeholder="Your Name" name="name" id="name">
                  </div>
							 <div class="form-group">
                    <input type="text" class="email-bt" placeholder="Your Email" name="email" id="email">
                  </div>
							
							 <div class="form-group">
                    <input type="password" class="email-bt" placeholder="Password" name="pass" id="pass">
                  </div>
						
						 <div class="form-group">
                    <input type="password" class="email-bt" placeholder="Repeat your password" name="re_pass" id="re_pass">
                  </div>

							<div style="padding-bottom: 50px; padding-left: 180px">
	                         <input style="background-color: #0cd268;  color: white;  padding: 12px 24px;  border: none;  cursor: pointer; border-radius: 100px;width: 300px; height: 50px" type="submit" value="Register" >
	                         </div>
						</form>
						</div>
					</div>
					
			




	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	<link rel="stylesheet" href="alert?dist/sweetalert.css">
	<script type="text/javascript">
	var status = document.getElementByid("status").value;
	if(status == "success"){
		swal("congrats","Account Created succesfully","success");
		
	}
	</script>


</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>