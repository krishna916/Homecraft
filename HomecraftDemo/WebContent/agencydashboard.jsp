<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<title>Dashboard</title>
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
    

</head>
<body style="padding-top:40px">
     <nav class="navbar navbar-inverse navbar-fixed-top" id="my-navbar">
         <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
				<a href="" class="navbar-brand">HomeCraft</a>
            </div><!-- Navbar Header-->
             <div class="collapse navbar-collapse" id="navbar-collapse">
                 
                 <ul class="nav navbar-nav navbar-right">
                    <li><a href="" >Login</a></li>
                    <li><a href="" >Register</a></li>
                    <li><a href="#contactUs">Contact Us</a></li>
                    <li>
                        <form action="LogoutController" method="post" class="form-inline">
                        <input type="submit" name="logout"  value="Logout" class="btn navbar-btn btn-primary">
                        </form>
                     </li>
                 </ul>
             </div>
        </div>
    </nav><!-- Navbar end-->
    <div class="jumbotron">
        <div class="container ">
            <h1>Login Success</h1>
            
        </div>
    </div><!--end Jumbotron-->
    
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