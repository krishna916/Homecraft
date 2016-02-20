<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html >
  <head>
    <meta charset="UTF-8">
    <title>Login Form</title>
    
    <% 
	String name=(String)session.getAttribute("name");
	if(name!= null)
	{
		request.getRequestDispatcher("adminPanel.jsp").forward(request, response);
	}
%>
    
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
        <link rel="stylesheet" href="css/Login.css">

    

    
    
  </head>

  <body>

    <hgroup>
  <h1><a href="index.jsp">Homecraft</a></h1>
  
</hgroup>
<form action="AdminLoginController" method="post">
  <div class="group">
    <input type="email" name="email" required="required"><span class="highlight"></span><span class="bar"></span>
    <label>Email</label>
  </div>
  <div class="group">
    <input type="password" name="password" required="required"><span class="highlight"></span><span class="bar"></span>
    <label>Password</label>
  </div>
  
  <input type="submit" name="login" value="login" class="btn btn-lg btn-primary">
</form>
<footer><a href="http://www.polymer-project.org/" target="_blank"><img src="https://www.polymer-project.org/images/logos/p-logo.svg"></a>
  <p>You Gotta Love <a href="http://www.polymer-project.org/" target="_blank">Google</a></p>
</footer>
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

        <script src="js/index.js"></script>

    
    
    
  </body>
</html>
