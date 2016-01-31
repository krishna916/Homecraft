<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Agency Login</title>
	<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">

	<!-- Optional theme -->
	<link rel="stylesheet" href="css/bootstrap-theme.min.css" type="text/css">


	<!-- Js Links -->
	<script src="js/html5shiv.min.js"></script>
	<script src="js/respond.min.js"></script>
	<style>
		body{
			padding-top: 40px;
		}
	</style>
</head>
<body>
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
                    <li><a href="userLogin.jsp" >Login</a></li>
                    <li><a href="userRegistration.jsp" >Register</a></li>
                    <li><a href="#contactUs">Contact Us</a></li>
                 </ul>
             </div>
            </div>
    </nav><!-- Navbar end-->
         
    <div class="jumbotron">
        <div class="container text-center">
            <h1>Agency Login</h1>
            <h3>Your home service Bussiness is just few clicks away..
                Login now or Sign Up for Free</h3>
        </div>
    </div><!--end Jumbotron-->
         
    <div class="container">
        <section>
             <div class="page-header" id="contact">
                    <h4>login.<small>Contact us for more</small></h4>
             </div><!--end page header-->
            <div class="row">
            	<div class="alert alert-danger">
            	<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
            		<strong>Warning! </strong>Incorrect info!!!
            	</div>
                    <div class="col-md-2">
                        
                    </div>
                    <div class="col-md-8">
                        <form action="AgencyLoginController" class="form-horizontal" role="form" method="post" data-toggle="validator">
                            <div class="form-group">
                                <label for="email" class="col-lg-2 control-label">
                                    Email
                                </label>
                                <div class="col-lg-10">
                                    <input type="text" class="form-control" name="email" id="email" placeholder="Enter your email" required>
                                </div>
                            </div><!--end form group-->
                            <div class="form-group">
                                <label for="password" class="col-lg-2 control-label">
                                    password
                                </label>
                                <div class="col-lg-10">
                                    <input type="password" class="form-control" name="password" id="password" placeholder="Enter your password" required>
                                </div>
                            </div><!--end form group-->
                             <div class="form-group">
                            <div class="col-lg-10 col-lg-offset-5">
                                <input type="submit" class="btn btn-lg btn-primary" name="login" value="Login">
                            </div>
                            
                        </div>
                            
                            
                        </form>
                    </div>
            </div>
            
            
        </section>
    </div>
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