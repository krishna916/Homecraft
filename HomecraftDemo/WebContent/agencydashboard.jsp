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
	<link rel="stylesheet" href="css/agencySide.css" type="text/css">
    <link href="css/simple-sidebar.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<!-- Optional theme -->
	<link rel="stylesheet" href="css/bootstrap-theme.min.css" type="text/css">


	<!-- Js Links -->
	<script src="js/html5shiv.min.js"></script>
	<script src="js/respond.min.js"></script>
    

</head>
<body style="padding-top:50px">
      <div id="wrapper">
        <div class="container-fluid">
                <nav class="navbar navbar-inverse navbar-fixed-top" id="my-navbar" style="border:1px solid #222">
                    <div class="container">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse">
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
				            <a href="" id="brand" class="navbar-brand">HomeCraft</a>
                        </div><!-- Navbar Header-->
                        <div class="collapse navbar-collapse" id="navbar-collapse">
                            <ul class="nav navbar-nav navbar-left">
                                <li><a href="#menu-toggle"  class="btn" id="menu-toggle"><span class="glyphicon glyphicon-menu-hamburger"></span></a></li>
                                    
                            </ul>

                             <ul class="nav navbar-nav navbar-right">
                               <div class="btn-group">
                                <li class="dropdown">
                                    <button type="button" class="btn btn-primary navbar-btn dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <span class="
                                            glyphicon glyphicon-user"></span>&nbsp;<% out.print((String)session.getAttribute("agencyName")); %> <span class="caret"></span>
                                      </button>
                                    <ul class="dropdown-menu">
                                        <li>
                                            <a href="#"><i class="fa fa-fw fa-user"></i> Profile</a>
                                         </li>
                                        <li>
                                            <a href="#"><i class="fa fa-fw fa-envelope"></i> Inbox</a>
                                        </li>
                                        <li>
                                            <a href="#"><i class="fa fa-fw fa-gear"></i> Settings</a>
                                        </li>
                                        <li class="divider"></li>
                                        <li>
                                            <a href="/HomecraftDemo/adminLogout"><i class="fa fa-fw fa-power-off"></i> Log Out</a>
                                        </li>
                                    </ul>
                                </li>
                                 </div>
                             </ul>
                        </div>
                    </div>
                </nav><!-- Navbar end-->
            </div>
            
            
              <!--Sidebar-->
        <div id="sidebar-wrapper" class="sidebar" style="background-color: #222;">
             <ul class="sidebar-nav ">
                <li>
                    <a href="agnecydashboard.jsp" class="">Dashboard</a>
                </li>
                <li>
                    <a href="AddServices.jsp" class="">Add Services</a>
                </li>
                <li>
                    <a href="ViewServiceRequests">Service Requests</a>
                </li>
                <li>
                    <a href="AgencyServiceStatus">Service Status</a>
                </li>
                <li>
                    <a href="#">Events</a>
                </li>
                <li>
                    <a href="#">About</a>
                </li>
                <li>
                    <a href="#">Services</a>
                </li>
                <li>
                    <a href="#">Contact</a>
                </li>
            </ul>
        </div>
        <!--Sidebar end-->
        
        <!-- Main Page Content -->
        <div id="page-content-wrapper">
        <div class="container">
        	 <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Add Services
                        </h1>
                        <ol class="breadcrumb">
                            <li class="">
                                <a href="agencydashboard.jsp">Dashboard</a>
                            </li>
                            <li class="active"><a href="AddServices.html">Add Services</a></li>
                        </ol>
                    </div>
                </div>
                <!-- /.row -->
        	<% 
        		String addService = (String)request.getAttribute("addService");
        		if(addService=="success"){
        	
        	%>
        		<div class="alert alert-success">
            	<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
            		<strong>Service Added Successfully</strong>
            	</div>
        	<%} %>
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
        </div>
    <!-- jQuery -->
    <script src="js/jquery-2.1.4.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Menu Toggle Script -->
    <script>
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
        
               jQuery(function ($) {
            //form submit handler
            $('#addServices').submit(function (e) {
                //check atleat 1 checkbox is checked
                if (!$('.service').is(':checked')) {
                    //prevent the default form submit if it is not checked
                    e.preventDefault();
                }
            })
        })
    </script>
</body>
</html>