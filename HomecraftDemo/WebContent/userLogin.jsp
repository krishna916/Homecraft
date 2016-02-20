<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
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
		
		html, body
			{
			    width: 100%;
			    height: 100%;
			}
			body
			{
			   
			 	
			    width: 100%;
			    height: 100%;
			    background-attachment: fixed;
			}
		
	</style>
</head>
<body>
	<div id="wrapper" style="height:100%;  background-image: url('img/bg.jpg');" >
	<nav class="navbar navbar-inverse navbar-fixed-top" id="my-navbar">
         <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
				<a href="index.jsp" class="navbar-brand">HomeCraft</a>
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
         
    
         
    <div class="container">
        <section>
            
            <div class="row" style="padding-top:90px	">
            	
                    <div class="col-xs-3">
                        
                    </div>
                    <div class="col-xs-6" style="padding-top:40px; padding-bottom:50px ;background-color:#FBF7F7; border-radius:20px" >
                        <form action="LoginServlet" class="form-horizontal" role="form" method="post" data-toggle="validator">
                            <div class="form-group">
                                <label for="email" class="col-xs-2 control-label">
                                    Email
                                </label>
                                <div class="col-xs-8">
                                    <input type="text" class="form-control" name="email" id="email" placeholder="Enter your email" required>
                                </div>
                            </div><!--end form group-->
                            <div class="form-group">
                                <label for="password" class="col-xs-2 control-label">
                                    password
                                </label>
                                <div class="col-xs-8">
                                    <input type="password" class="form-control" name="password" id="password" placeholder="Enter your password" required>
                                </div>
                            </div><!--end form group-->
                             <div class="form-group">
                            <div class="col-xs-8 col-xs-offset-2">
                                <input type="submit" class="btn btn-block btn-primary" name="login" value="login">
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
       </div>
    <script src="js/jquery-2.1.4.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>