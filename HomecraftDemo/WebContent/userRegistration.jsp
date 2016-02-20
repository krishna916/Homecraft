<!DOCTYPE html>
<%@page import="com.Model.RegModel"%>
<html lang="en">

<head>
	<meta charset="utf-8">
	<title>Registrations</title>
	<link rel="icon" type="image/x-icon" href="ico/favicon.ico">
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
    
<body onload="getCountry()">
    
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
    
    <div class="jumbotron">
        <div class="container text-center">
            <h1>User Registrations</h1>
            <h3>Your home service is just few clicks away..
                Login now or Sign Up for Free</h3>
        </div>
    </div><!--end Jumbotron-->
        
    <!-- Form Start-->
        <div class="container">
            <section>
                <div class="page-header" id="contact">
                    <h4>Fill this form.<small>Contact us for more</small></h4>
                </div><!--end page header-->
                
                <div class="row">
                <%String s = (String)request.getAttribute("duplicate");
                	if(s=="duplicate")
                	{
                %>
                <div class="alert alert-danger">
            	<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
            		<strong>Email Already Registered </strong>
            	</div>
            	<%} %>
                    <div class="col-md-2">
                        
                    </div>
                    
                    <div class="col-md-8">
                        <form action="RegController" class="form-horizontal" role="form" method="post" data-toggle="validator">
                            <div class="form-group">
                                <label for="first-name" class="col-md-2 control-label">
                                    First Name
                                </label>
                                <div class="col-md-10">
                                    <input type="text" class="form-control" pattern="[A-Za-z]+"name="fname" id="first-name" placeholder="Enter your First Name" required>
                                </div>
                            </div><!--end form group-->
                            <div class="form-group">
                                <label for="last-name" class="col-md-2 control-label">
                                    Last Name
                                </label>
                                <div class="col-md-10">
                                    <input type="text" class="form-control" pattern="[A-Za-z]+"name="lname" id="last-name" placeholder="Enter your Last Name" required>
                                </div>
                            </div><!--end form group-->
                             <div class="form-group">
                                <label for="email" class="col-md-2 control-label">
                                    Email
                                </label>
                                <div class="col-md-10">
                                    <input type="email" class="form-control" name="email" id="email" placeholder="Enter your email" required>
                                </div>
                            </div><!--end form group-->
                            <div class="form-group">
                                <label for="password" class="col-md-2 control-label">
                                    Password
                                </label>
                                <div class="col-md-10">
                                    <input type="password" data-minlength="" name="password" pattern=".{8,}" class="form-control" id="password" placeholder="Enter your Password" required>
                                      <span class="help-block">Minimum of 8 characters</span>
                                </div>
                            </div><!--end form group-->
                             <div class="form-group">
                                <label for="confirm-password" class="col-md-2 control-label">
                                    Confirm 
                                </label>
                                <div class="col-md-10">
                                    <input type="password"  class="form-control" id="confirm-password" data-match="#password" data-match-error="Whoops, these don't match" placeholder="Confirm Password" required>
                                </div>
                            </div><!--end form group-->
                            <div class="form-group">
                                <label for="mobile" class="col-md-2 control-label">
                                    Mobile No.
                                </label>
                                <div class="col-md-10">
                                    <input type="text"  class="form-contact form-control" maxlength="10"  pattern="[0-9]{10}"name="mobile" id="mobile"   placeholder="Enter your Mobile Number" required>
                                </div>
                            </div><!--end form group-->
                        <div class="form-group">
                            <label for="address" class="col-md-2 control-label">
                                Address
                            </label>
                            <div class="col-md-10">
                                <textarea name="address" id="address" class="form-control" cols="20" rows="5" placeholder="enter your address"></textarea>
                            </div>
                        </div><!--end form group-->
                        <div class="form-group">
                            <label for="Security" class="col-md-2 control-label">
                                Security Question
                            </label>
                            <div class="col-md-10">
                                <select name="security" class="form-control">
                                	<option value="Which City You Where Born?">Which City You Where Born?</option>
                                	<option value="favourite Sport Personality?">Favourite Sport Personality?</option>
                                	<option value="Favourite Actress?">Favourite Actress?</option>
                                </select>
                            </div>
                        </div><!--end form group-->
                        <div class="form-group">
                                <label for="first-name" class="col-md-2 control-label">
                                    Answer
                                </label>
                                <div class="col-md-10">
                                    <input type="text" class="form-control" name="secAnswer" placeholder="Enter Answer of Security question" required>
                                </div>
                            </div><!--end form group-->
                        <div class="form-group">
                            <label for="dob" class="col-md-2 control-label">
                                Date of Birth
                            </label>
                            <div class="col-md-10">
                                <input type="date" class="form-control" max="1998-01-25" name="dob" id="dob"  required>
                            </div>
                        </div><!--end form group-->
                        <div class="form-group">
                            <label for="gender" class="col-md-2 control-label">
                                Gender
                            </label>
                            <div class="col-md-10">
                                <div class="radio-inline">
                                    <label>
                                    <input type="radio" class="" name="gender" id="radio-male" value="male" required>Male
                                    </label>
                                </div>
                                <div class="radio-inline">
                                    <label>
                                    <input type="radio" class="" name="gender" id="radio-female" value="female">Female
                                    </label>
                                </div>
                            </div>
                        </div><!--end form group-->
                        <div class="form-group" id="country">
                          <!--   <label for="country" class="col-md-2 control-label">
                                Country
                            </label>
                            <div class="col-md-10" id="country">
                                <!--  <input type="text" class="form-control"pattern="[A-Za-z]+" name="country" id="country"  required>-->
                            </div>
                       <!-- </div>end form group-->
                        
                        
                      
                        
                        
                        
                        
                        <input type="hidden" name="userId" value="" />
                        <div class="form-group">
                            <div class="col-md-10 col-md-offset-4">
                                <input type="submit" class="btn btn-primary" name="submit" value="submit">
                            </div>
                            
                        </div>
                        <div class="form-group">
                            <label for="city" class="col-md-2 control-label">
                                
                            </label>
                            <div class="col-md-10">
                                <p>Already have account <a href="userLogin.jsp">Login Here</a></p>
                            </div>
                        </div><!--end form group-->
                                    
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
    <script src="js/city.js"></script>
    <script src="js/jquery-2.1.4.min.js"></script>
    <script src="js/bootstrap.min.js"></script> 
</body>
</html>