<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.Model.*"%>



<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><%out.println((String)session.getAttribute("userEmail")); %></title>

<link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    
   	<link href="css/style.css" rel="stylesheet" type="text/css">
    <link href="css/simple-sidebar.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
</head>
<body>
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
                        </div><!--nav bar Header-->
                        <div class="collapse navbar-collapse" id="navbar-collapse">
                            <ul class="nav navbar-nav navbar-left">
                                <li><a href="#menu-toggle"  class="btn" id="menu-toggle"><span class="glyphicon glyphicon-menu-hamburger"></span></a></li>
                                    
                            </ul>

                             <ul class="nav navbar-nav navbar-right">
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-fw fa-user"></i>&nbsp;<%	out.println((String)session.getAttribute("userEmail"));
															  %> <b class="caret"></b></a>
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
                             </ul>
                        </div>
                    </div>
                </nav><!-- Nav bar end-->
            </div>
            
             <!--Side bar-->
        <div id="sidebar-wrapper" class="sidebar" style="background-color: #222;">
             <ul class="sidebar-nav ">
                
                <li>
                    <a href="#" class=""><span class="glyphicon glyphicon-dashboard"></span>&nbsp;Dashboard</a>
                </li>
                <li>
                    <a href="#">Shortcuts</a>
                </li>
                <li>
                    <a href="#">Overview</a>
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
        <!--Side bar end-->
        <div id="page-content-wrapper">
            <div class="container-fluid">

                
                   
                   
                   
                </div>
                <!-- /.row -->
        </div>
    
    </div>
   
    <!--Wrapper end-->
	
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
    </script>
</body>
</html>