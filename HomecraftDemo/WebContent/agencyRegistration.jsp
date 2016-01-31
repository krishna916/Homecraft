<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Agency Registrations</title>
	<meta name="description" content="Hello World">
	<!-- Latest compiled and minified CSS -->
	<!--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

	<!-- Optional theme -->
	<!--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">-->
	
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">

	<!-- Optional theme -->
	<link rel="stylesheet" href="css/bootstrap-theme.min.css" type="text/css">


	<!-- Js Links -->
	<script src="js/html5shiv.min.js"></script>
	<script src="js/respond.min.js"></script>
    <script>
        window.onload = function () {
    document.getElementById("password").onchange = validatePassword;
    document.getElementById("confirm-password").onchange = validatePassword;
        }
        function validatePassword(){
            var pass2=document.getElementById("confirm-password").value;
            var pass1=document.getElementById("password").value;
            if(pass1!=pass2)
                document.getElementById("confirm-password").setCustomValidity("Passwords Don't Match");
                else
                document.getElementById("confirm-password").setCustomValidity('');  
//empty string means no validation error
        }
    </script>
</head>
<body style="padding-top:40px;">
	<nav class="navbar navbar-inverse navbar-fixed-top" id="my-navbar">
         <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
				<a href="index.html" class="navbar-brand">HomeCraft</a>
            </div><!-- Navbar Header-->
             <div class="collapse navbar-collapse" id="navbar-collapse">
                 
                 <ul class="nav navbar-nav navbar-right">
                    <li><a href="" >Login</a></li>
                    <li><a href="" >Register</a></li>
                    <li><a href="#contactUs">Contact Us</a></li>
                 </ul>
             </div>
            </div>
    </nav><!-- Navbar end-->
        
    <div class="jumbotron">
        <div class="container text-center">
            <h1>Agency Registrations</h1>
            <h3>Your home service Bussiness is just few clicks away..
                Login now or Sign Up for Free</h3>
        </div>
    </div><!--end Jumbotron-->
        
    <!--form start-->
        <div class="container">
            <section>
                <div class="page-header" id="contact">
                    <h4>Fill this form.<small>Contact us for more</small></h4>
                </div><!--end page header-->
                <div class="row">
                    <div class="col-md-2">
                    </div>
                    <div class="col-md-8">
                        <form action="AgencyRegController" class="form-horizontal" role="form" method="post" data-toggle="validator">
                            <div class="form-group">
                                <label for="agencyName" class="col-lg-2 control-label">
                                    Agency Name
                                </label>
                                <div class="col-lg-10">
                                    <input type="text" class="form-control" name="agencyName" id="agencyName" placeholder="Enter your Agency Name" required>
                                </div>
                            </div><!--end form group-->
                            <div class="form-group">
                                <label for="email" class="col-lg-2 control-label">
                                    Email
                                </label>
                                <div class="col-lg-10">
                                    <input type="email" class="form-control" name="email" id="email" placeholder="Enter your email" required>
                                </div>
                            </div><!--end form group-->
                            <div class="form-group">
                                <label for="password" class="col-lg-2 control-label">
                                    Password
                                </label>
                                <div class="col-lg-10">
                                    <input type="password" data-minlength="6" name="password" class="form-control" id="password" placeholder="Enter your Password" required>
                                    <span class="help-block">Minimum of 6 characters</span>
                                </div>
                            </div><!--end form group-->
                             <div class="form-group">
                                <label for="confirm-password" class="col-lg-2 control-label">
                                    Confirm 
                                </label>
                                <div class="col-lg-10">
                                    <input type="password"  class="form-control" id="confirm-password" data-match="#password" data-match-error="Whoops, these don't match" placeholder="Confirm Password" required>
                                </div>
                            </div><!--end form group-->
                            <div class="form-group">
                            <label for="address" class="col-lg-2 control-label">
                                Address
                            </label>
                            <div class="col-lg-10">
                                <textarea name="address" id="address" class="form-control" cols="20" rows="5" placeholder="enter your address">
                                </textarea>
                            </div>
                        </div><!--end form group-->
                            <div class="form-group">
                                <label for="mobile" class="col-lg-2 control-label">
                                    Contact No.
                                </label>
                                <div class="col-lg-10">
                                    <input type="text"  class="form-contact form-control" maxlength="10"  pattern="[0-9]{10}"name="mobile" id="mobile"   placeholder="Enter your Mobile Number" required>
                                </div>
                            </div><!--end form group-->
                             <div class="form-group">
                            <label for="country" class="col-lg-2 control-label">
                                Country
                            </label>
                            <div class="col-lg-10">
                                <input type="text" class="form-control" name="country" id="country" placeholder="country"  required>
                            </div>
                        </div><!--end form group-->
                        <div class="form-group">
                            <label for="state" class="col-lg-2 control-label">
                                State
                            </label>
                            <div class="col-lg-10">
                                <input type="text" class="form-control" name="state" id="state"  placeholder="state"required>
                            </div>
                        </div><!--end form group-->
                        <div class="form-group">
                            <label for="city" class="col-lg-2 control-label">
                                City
                            </label>
                            <div class="col-lg-10">
                                <input type="text" class="form-control" name="city" id="city" placeholder="city"  required>
                            </div>
                        </div><!--end form group-->
                         <input type="hidden" name="agencyUserId" value="" />
                        <div class="form-group">
                            <div class="col-lg-10 col-lg-offset-6">
                                <input type="submit" class="btn  btn-primary" name="submit" value="submit">
                            </div>
                            
                        </div>
                        </form>
                    </div>
                </div>
            </section>
        </div>
        
        
    <!--footer-->
        <footer>
            <div class="container text-center" id="contactUs">
                <hr>
                <ul class="list-inline">
                    <li><a href="">twitter</a></li>
                    <li><a href="">Facebook</a></li>
                    <li><a href="">Youtube</a></li>
                </ul>
                
                <p>&copy; Copyright @ 2016</p>
            </div>
        </footer>
    <script src="js/jquery-2.1.4.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>