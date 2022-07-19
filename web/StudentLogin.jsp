<%-- 
    Document   : StudentLogin
    Created on : 3 May 2022, 16:48:46
    Author     : adrianadewunmi
--%>
<%--Document:StudentLogin--%>
<%-- 
    Document   : AdminLogin
    Created on : 4 May 2022, 21:24:08
    Author     : adrianadewunmi
--%>
<%--Document:AdminLogin--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="indexStyle.css"/>
    <link rel="stylesheet" href="adminLoginCSS.css"/>
    <title>Student Login!</title>
  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
         <img src="circle_red_letter.png" alt="" width="30" height="24">
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="index.html">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="ContactUs.jsp">Contact Us</a>
              </li>
            </ul>
          </div>
        </div>
       </nav> 
      
    <div class="container">
        <main class="signup-container">
          <h1 class="heading-primary">Student Log in<span class="span-blue">.</span></h1>
          <p class="text-mute">Enter your credentials to access your account.</p>
          <div class="login-wrapper">
            <a href="#" class="btn btn-google">
              <img src="https://img.icons8.com/fluency/48/000000/google-logo.png" />
              Log In with Google
            </a>
            <div class="line-breaker">
              <span class="line"></span>
              <span>or</span>
              <span class="line"></span>
            </div>
          </div>
          <font color="red">
          <%
            if(request.getParameter("msg2") != null)
                    out.print(request.getParameter("msg2"));
	  %>
          </font>
           <font color="green">
          <%
            if(request.getParameter("msg1") != null)
                    out.print(request.getParameter("msg1"));
	  %>
          </font>
          <form class="signup-form" action="oes.controller.ValidateStudent" method="post">
           
            <label class="inp">
              <input type="text" class="input-text" placeholder="&nbsp;" name="uname">
              <span class="label">User Id</span>
              <span class="input-icon"><i class="fa-solid fa-envelope"></i></span>
            </label>
            <label class="inp">
              <input type="password" class="input-text" placeholder="&nbsp;" id="password" name="pass">
              <span class="label">Password</span>
              <span class="input-icon input-icon-password" data-password><i class="fa-solid fa-eye"></i></span>
            </label>
            <button class="btn btn-login" type="submit" value="login">Login</button>
          </form>
          
        </main>
        <div class="welcome-container">
            <h1 class="heading-secondary">Welcome to <span class="lg">Examily!</span></h1>
            <img src="https://adityawahyuramadhan.github.io/hosted-assets/Freelanco/image-floor.svg" alt="" class="position-absolute locate-floor scale-down" style="z-index: -99;">
             
        </div>
</div>
    
    <div class="footer">
       <footer>
            © 2022 Examily, Inc. 
       </footer>
     </div>

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->
  </body>
</html>
