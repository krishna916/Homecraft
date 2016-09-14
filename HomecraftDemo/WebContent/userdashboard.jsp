<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><%out.println((String)session.getAttribute("userEmail")); %></title>

<link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    
   	
    <link href="css/simple-sidebar.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
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
                        </div><!--nav bar Header-->
                        <div class="collapse navbar-collapse" id="navbar-collapse">
                            <ul class="nav navbar-nav navbar-left">
                                <li><a href="#menu-toggle"  class="btn" id="menu-toggle"><span class="glyphicon glyphicon-menu-hamburger"></span></a></li>
                                    
                            </ul>

                             <ul class="nav navbar-nav navbar-right">
                             	<div class="btn-group">
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle btn  navbar-btn btn-primary" data-toggle="dropdown"><i class="fa fa-fw fa-user"></i>&nbsp;<%out.println((String)session.getAttribute("userEmail")); %><b class="caret"></b></a>
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
                </nav><!-- Nav bar end-->
            </div>
            
             <!--Side bar-->
        <div id="sidebar-wrapper" class="sidebar" style="background-color: #222;">
             <ul class="sidebar-nav ">
                
                <li>
                    <a href="#" class=""><span class="glyphicon glyphicon-dashboard"></span>&nbsp;Dashboard</a>
                </li>
                <li>
                    <a href="UserServiceStatusController">Booking Status</a>
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
				 <!-- Page Heading -->
                <div class="row" style="padding-top:35px">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Dashboard
                        </h1>
                        <ol class="breadcrumb">
                            <li class="">
                                <a href="agencydashboard.jsp">Dashboard</a>
                            </li>
                            
                        </ol>
                    </div>
                </div>
                <!-- /.row -->
                <% 
					if((String)request.getAttribute("success")=="success")
					{
				%>
				<div class="alert alert-success">
            		<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
            		<strong>Successfully Requested for Service</strong>
            	</div>	
					
                <%}%>
                   
                   
                   
                </div>
                <!-- /.row -->
                
            <div class="container-fluid">
              
               <div class="well">
                    <h4 class="text-warning"><strong>What are you Looking For??</strong> </h4>
                </div>
            </div>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-xs-6" style="border-right:1px solid #cccccc">
                        <h4>Search by your location</h4>
                        <div style="margin-top:25px">
                            <form action="SearchLocation" class="form-horizontal" role="form" method="post">
                                <div class="form-group">
                                    <div class="col-xs-4" style="padding-top:5px">
                                        <label for="location" id="location">
                                            Enter your location:
                                        </label>
                                    </div>
                                    <div class="col-xs-8" style="margin-left: -25px;">
                                        <input type="text" name="location" placeholder="enter the location" pattern="[A-Za-z\s]+" class="form-control">
                                    </div>
                                    <div class="col-xs-offset-5" >
                                        <input type="submit" name="searchLocation" value="search" class="btn btn-primary" style="margin-top:20px">
                                     </div>
                                    
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="col-xs-6" >
                        <h4>Search By What Service You Need</h4>
                        <div style="margin-top:25px">
                            <form action="SearchService" class="form-horizontal" role="form" method="post">
                                <div class="form-group">
                                    <div class="col-xs-4" style="padding-top:5px">
                                        <label for="service" id="service">
                                            Service Name
                                        </label>
                                    </div>
                                    <div class="col-xs-8" style="margin-left: -25px;">
                                        <input type="text" name="service" placeholder="Electric Works, Plumbing etc" pattern="[a-zA-z\s]+" class="form-control">
                                    </div>
                                    <div class="col-xs-offset-5" >
                                        <input type="submit" name="searchService" value="search" class="btn btn-primary" style="margin-top:20px">
                                     </div>
                                    
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
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