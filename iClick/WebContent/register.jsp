<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
    <meta name="author" content="GeeksLabs">
    <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
	
    <link rel="shortcut icon" href="img/favicon.png">
	<script type="text/javascript" src="js/country_state.js"></script>

    <title>Register Page</title>

    <!-- Bootstrap CSS -->    
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- bootstrap theme -->
    <link href="css/bootstrap-theme.css" rel="stylesheet">
    <!--external css-->
    <!-- font icon -->
    <link href="css/elegant-icons-style.css" rel="stylesheet" />
    <link href="css/font-awesome.css" rel="stylesheet" />
    <!-- Custom styles -->
    <link href="css/style.css" rel="stylesheet">
    <link href="css/style-responsive.css" rel="stylesheet" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<script type="text/javascript" src="js/register.js"></script>

</head>
  <body class="login-img3-body">

    <div class="container">

      <form class="login-form" action="RegisterServlet" method="post" name="register" onsubmit="return formValidation()">        
        <div class="login-wrap">
            <p class="login-img"><i class=" fa fa-address-book-o" ></i></p>
            <div class="input-group">
              <span class="input-group-addon"><i class="icon_profile"></i></span>
              <input type="text" class="form-control" name="fname" placeholder="First Name" >
            </div>
			<div class="input-group">
              <span class="input-group-addon"><i class="icon_profile"></i></span>
              <input type="text" class="form-control" name="lname" placeholder="Last Name" required="required"  >
            </div>
			
			 <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
                <input type="email" class="form-control" name="email" placeholder="email" required="required"  >
            </div>
			
            
			<div class="input-group">
                <span class="input-group-addon"><i class="fa fa-birthday-cake"></i></span>
                <input type="date" class="form-control" name="dob" placeholder="Date of Birth" required="required"  >
            </div>
			
                         
			
			<select class="form-control m-bot15" name="gen" required="required"  >
									<option value="default">I am</option>
									<option value="M">Male</option>
									<option value="F">Female</option>
									<option value="O">Other</option>
                                          </select>
		
		
			
		
			<div class="input-group">
                <span class="input-group-addon"><i class="fa fa-phone"></i></span>
                <input type="tel" class="form-control"name="con" placeholder="Mobile Number" required="required"  >
            </div>
			
		<div class="input-group">	          
			<span class="input-group-addon"><i class="fa fa-globe"></i></span>
			<select class="form-control m-bot15" name="coun" id="country" required="required" ></select>
								</div>			
		<div class="input-group">	          
			<span class="input-group-addon"><i class="fa fa-globe"></i></span>
			<select class="form-control m-bot15" name="state" id="state" required="required"  ></select>
											</div>
		<div class="input-group">
                <span class="input-group-addon"><i class="icon_key_alt"></i></span>
                <input type="password" class="form-control" name="pass" placeholder="Password" required="required"  >
            </div>
			
			<div class="input-group">
                <span class="input-group-addon"><i class="icon_key_alt"></i></span>
                <input type="password" class="form-control" name="pass1" placeholder="Confirm Password" required="required" >
            </div>
          <center>  <img src="captcha.jsp" alt="captcha code"></center>
			<div class="input-group">
                <span class="input-group-addon"><i class="icon_key_alt"></i></span>
                
                <input type="text" class="form-control" name="Captcha" placeholder="Captcha" required="required" >
            </div>
		
            <label class="checkbox">
                <input type="checkbox" value="remember-me"> Remember me
            </label>
            <input type="submit" class="btn btn-info btn-lg btn-block" value="Signup"/>
            <input type="reset" class="btn btn-info btn-lg btn-block" value="Reset"/>
           
        </div>
      </form>
	  <script type="text/javascript">
populateCountries("country", "state");

</script>
    </div>



</body>
</html>