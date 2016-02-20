<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
    <head>
       <meta charset="utf-8">
        <title>Homecraft</title>
                <link rel="icon" type="image/x-icon" href="ico/favicon.ico">
        
        <!-- Required css files-->
         
         <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
         <link rel="stylesheet" href="css/homepage-css.css" type="text/css">
         <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css" type="text/css">

        <!-- Optional theme -->
        <link rel="stylesheet" href="css/bootstrap-theme.min.css" type="text/css">
        
        <!-- optional Reguired js files-->
        <script src="js/html5shiv.min.js"></script>
	    <script src="js/respond.min.js"></script>
        
    </head>
    <body>
       <div id="wrapper">
           <!--navbar-->
               
                 <nav class="navbar navbar-default navbar-fixed-top"  role="navigation" id="my-navbar" >
                     <div class="container" id="home-top">
                        <div class="navbar-header page-scroll">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse">
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <a href="#" class="navbar-brand page-scroll">HomeCraft</a>
                        </div><!-- Navbar Header-->
                         <div class="collapse navbar-collapse" id="navbar-collapse">
                                <a href="agencyRegistration.jsp" class="btn btn-warning navbar-btn navbar-right">Join Us</a>
                             <ul class="nav navbar-nav navbar-left">
                                <li><a href="userLogin.jsp" >Login</a></li>
                                <li><a href="userRegistration.jsp" >Register</a></li>
                                <li><a href="" >About Us</a></li>
                                <li><a href="" >Services</a></li>
                                <li><a href="#contactUs" class="page-scroll">Contact Us</a></li>
                                
                             </ul>
                             
                         </div>
                     </div>
                </nav>
           
           <!--navbar end -->
           
           <!--carousel-->
           <div class="" id="header-carousel">
               <div class="carousel slide" id="screenshot-carousel" data-ride="carousel" data-interval="4000" >
						<ol class="carousel-indicators">
							 <li data-target="#screenshot-carousel" data-slide-to="0" class="active"></li>
							 <li data-target="#screenshot-carousel" data-slide-to="1"></li>
							 <li data-target="#screenshot-carousel" data-slide-to="2"></li>
							 <li data-target="#screenshot-carousel" data-slide-to="3"></li>
							 <li data-target="#screenshot-carousel" data-slide-to="4"></li>
						</ol>
						<div class="carousel-inner">
							<div class="item active">
								<img src="img/header/header2.jpg"  alt="Text of the image">
                                <div class="carousel-caption">
                                   
                                </div>
							</div>
                            <div class="item">
								<img src="img/header/header3.jpg" alt="Text of the image">
                                <div class="carousel-caption">
                                    
                                </div>
							</div>
                            <div class="item">
								<img src="img/header/header4.jpg" alt="Text of the image">
                                <div class="carousel-caption">
                                    
                                </div>
							</div>
                            <div class="item">
								<img src="img/header/header5.jpg" alt="Text of the image">
                                <div class="carousel-caption">
                                    
                                </div>
							</div>
							<div class="item">
								<img src="img/header/header7.jpg" alt="Text of the image">
                                <div class="carousel-caption">
                                    
                                </div>
							</div>
						</div><!--end carousel inner-->
                        <a href="#screenshot-carousel" class="left carousel-control" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left"></span>
                        </a>
                         <a href="#screenshot-carousel" class="right carousel-control" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right"></span>
                        </a>
					</div>
              </div><!-- end carousel-->
         
           <section id="services">
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center">
                    <h2 class="section-heading">How It Works..</h2>
                    <hr class="primary">
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-md-8 text-center">
                    <div class="service-box">
                        <i class="fa fa-4x fa-shopping-cart wow bounceIn text-primary"></i>
                        <h3>Pick The Service</h3>
                        <p class="text-muted">Pick The Services you want and you will be serviced.</p>
                    </div>
                </div>
                <div class="col-md-4 col-md-8 text-center">
                    <div class="service-box">
                        <i class="fa fa-4x fa-phone wow bounceIn text-primary" data-wow-delay=".1s"></i>
                        <h3>Contact</h3>
                        <p class="text-muted">Contact A Agency by Booking a Service</p>
                    </div>
                </div>
                <div class="col-md-4 col-md-8 text-center">
                    <div class="service-box">
                        <i class="fa fa-4x fa-credit-card wow bounceIn text-primary" data-wow-delay=".2s"></i>
                        <h3>Pay</h3>
                        <p class="text-muted">After The Service is Provided.</p>
                    </div>
                </div>
                
            </div>
        </div>
    </section> 
    
    <!-- Feedback -->
    <div class="container">
			<section>
				<div class="page-header" id="feedback">
					<h2>Feedback.<small>Checkout this awesome feedback</small></h2>
				</div>

				<div class="row">
					<div class="col-md-4">
						<blockquote>
							<p>
								Sed et ipsum id ligula vulputate viverra sit amet sed velit. Sed quis feugiat risus.
								Maecenas fermentum, enim condimentum luctus eleifend, velit nibh tincidunt orci,
							  </p>
							<footer>John Doe</footer>
						</blockquote>
					</div>
					<div class="col-md-4">
						<blockquote>
							<p>
								Sed et ipsum id ligula vulputate viverra sit amet sed velit. Sed quis feugiat risus.
								Maecenas fermentum, enim condimentum luctus eleifend, velit nibh tincidunt orci,
							  </p>
							<footer>John Doe</footer>
						</blockquote>
					</div>
					<div class="col-md-4">
						<blockquote>
							<p>
								Sed et ipsum id ligula vulputate viverra sit amet sed velit. Sed quis feugiat risus.
								Maecenas fermentum, enim condimentum luctus eleifend, velit nibh tincidunt orci,
							  </p>
							<footer>John Doe</footer>
						</blockquote>
					</div>
				</div>
			</section>
		</div>
		<!--end Container-->
    
           
        <!--Contact Us-->
    <div class="container">
        <section>
            <div class="page-header" id="contactUs">
                <h2>Contact Us.<small>Contact us for more</small></h2>
            </div><!--end page header-->
            <div class="row">
                <div class="col-md-4">
                    <p>Send us a message, or contact us from the address below</p>
                    
                    <address>
                        <strong>Homecraft Pvt Ltd</strong><br>
                        Lorem ipsum dolor sit amet,<br>
                        consectetur adipiscing elit.<br>
                        Etiam ac convallis magna. <br>
                        1234567890
                    </address>
                </div>
                <div class="col-md-8">
                	<div class="row">
                    <form action="" class="form-horizontal">
                        <div class="form-group">
                            <label for="user-name" class="col-md-2 control-label">
                                Name
                            </label>
                            <div class="col-md-10">
                                <input type="text" class="form-control" id="user-name" placeholder="Enter your Name">
                            </div>
                        </div><!--end form group-->
                         <div class="form-group">
                            <label for="user-email" class="col-md-2 control-label">
                                Email
                            </label>
                            <div class="col-md-10">
                                <input type="text" class="form-control" id="user-email" placeholder="Enter your email">
                            </div>
                        </div><!--end form group-->
                        <div class="form-group">
                            <label for="user-url" class="col-md-2 control-label">
                                Your Website
                            </label>
                            <div class="col-md-10">
                                <input type="text" class="form-control" id="user-url" placeholder="Enter your website">
                            </div>
                        </div><!--end form group-->
                        <div class="form-group">
                            <label for="user-msg" class="col-md-2 control-label">
                                Any Message
                            </label>
                            <div class="col-md-10">
                                <textarea name="user-msg" id="user-msg" class="form-control" cols="20" rows="10" placeholder="enter your message">
                                </textarea>
                            </div>
                        </div><!--end form group-->
                        
                        <div class="form-group">
                            <div class="col-md-10 col-md-offset-2">
                                <button type="submit" class="btn btn-primary" name="submit">Submit</button>
                            </div>
                        </div>

                    </form>
                    </div>
                </div>
            </div>
        </section>
    </div>
              
    <!--banner-->
         <div class="banner" >

        <div class="container" >

            <div class="row">
                <div class="col-md-6">
                    <h2>Connect to HomeCraft:</h2>
                </div>
                <div class="col-md-6">
                    <ul class="list-inline banner-social-buttons" id="banner" style="margin-top:2px;">
                        <li>
                            <a href="#" class="btn btn-default btn-lg"><i class="fa fa-twitter fa-fw"></i> <span class="network-name">Twitter</span></a>
                        </li>
                        <li>
                            <a href="#" class="btn btn-default btn-lg"><i class="fa fa-facebook fa-fw"></i> <span class="network-name">Facebook</span></a>
                        </li>
                        <li>
                            <a href="#" class="btn btn-default btn-lg"><i class="fa fa-google-plus fa-fw"></i> <span class="network-name">Google Plus</span></a>
                        </li>
                    </ul>
                </div>
            </div>

        </div>
        <!-- /.container -->

    </div>
    <!-- /.banner -->
           
           
           
    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <ul class="list-inline">
                        <li>
                            <a href="#">Home</a>
                        </li>
                        <li class="footer-menu-divider">&sdot;</li>
                        <li>
                            <a href="#about">About</a>
                        </li>
                        <li class="footer-menu-divider">&sdot;</li>
                        <li>
                            <a href="#services">Services</a>
                        </li>
                        <li class="footer-menu-divider">&sdot;</li>
                        <li>
                            <a href="#contact">Contact</a>
                        </li>
                         <li class="footer-menu-divider">&sdot;</li>
                        <li>
                            <a href="agencyLogin.jsp">Agency Login</a>
                        </li>
                    </ul>
                    <p class="copyright text-muted small">Copyright &copy; Your Company 2016. All Rights Reserved</p>
                </div>
            </div>
        </div>
    </footer>
        
        
        <!-- Required js files-->
        
           
        <!--Scrolling Nav Js-->
       
        <script src="js/wow.min.js"></script>

        <!-- Custom Theme JavaScript -->
        
        <script src="js/jquery-2.1.4.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
         <script src="js/jquery.easing.min.js"></script>
        <script src="js/scrolling-nav.js"></script>
        <script src="js/jquery.fittext.js"></script>
           <script src="js/creative.js"></script>
           
        
    </body>
    
</html>