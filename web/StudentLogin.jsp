<%-- 
    Document   : StudentLogin
    Created on : 3 May 2022, 16:48:46
    Author     : adrianadewunmi
--%>
<%--Document:StudentLogin--%>
<!DOCTYPE html>
<html>
<head>
    <link href="bootstrap.min.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <link href="/Users/adrianadewunmi/Netbeans/Online-Quiz-System/web/studentLoginCSS.css" rel="stylesheet" type="text/css">
    <meta charset="ISO-8859-1">
    <title>Student Login</title>
</head>
<body>
	<font color="blue"><center><h1>Student Login</h1></center></font>
	<font color="red" >
		<%
			if(request.getParameter("msg") != null)
				out.print(request.getParameter("msg"));
		%>
		</font>
		<font color="green" >
		<%
			if(request.getParameter("msg1") != null)
				out.print(request.getParameter("msg1"));
		%>
		</font>
    <div style="background-color: aqua">
	<form action="oes.controller.ValidateStudent" method="post">
		<pre>
			User Id         :	<input type="text" name="uname">	 <br>
			Password 	:	<input type="password" name="pass">	 <br>
			                  	<input  onclick="location.href='index.html'" type="button" value="Exit" class="btn btn-outline-primary">   <input type="submit" value="Login" class="btn btn-outline-primary">
				
		</pre>
	</form>
    </div>
	
</body>
</html>
