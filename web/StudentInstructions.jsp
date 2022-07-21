<%-- 
    Document   : StudentInstructions
    Created on : 8 Jul 2022, 16:05:10
    Author     : adrianadewunmi
--%>
<%@page import="oes.model.StudentsDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
            <%@page import="oes.model.InstructionsDao"%>
<%@page import="oes.db.Instructions"%>
<%@page import="java.util.ArrayList"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Merriweather&display=swap" rel="stylesheet">
    <meta charset="ISO-8859-1">
    <link rel="stylesheet" href="indexStyle.css"/>
    <title>Student to Instructions</title>
  </head>
  <body>
       <%
          String name = StudentsDao.getStudentName(session.getAttribute("username").toString());
       %> 
        <div height="200" width=100% style="background-color: yellow">
          <marquee behavior="alternate">
             <h2> <font  color ="green">Welcome   <%out.println(name); %></font></h2>
          </marquee>
        </div>
       <center>
        <pre>
       <table class="table table-hover">
            <tr>
            <th colspan="2"><center><h4><font color="red">Instructions to Students</font></h4></center></th>
            </tr>
            <tr>
            <tr>
         <%
          int i = 1;
          ArrayList<Instructions> allinsts = InstructionsDao.getAllRecords();
         for(Instructions e : allinsts)
         {   
         %>
            <tr>
            <td><%=i++%></td>
            <td><%=e.getInstruction()%></td>
            </tr>
         <%
         }
         %>
       <tr>
       </table>
       <pre>
            <button type="button" class="btn btn-outline-primary btn-lg" onclick="location.href='oes.controller.LogoutStudent'">Logout</button>   <button type="button" class="btn btn-outline-primary btn-lg" onclick="location.href='Exam.jsp'">Start Test</button>
       </pre>
       </center>
       <div class="footer">
        <footer>
             © 2022 Examily, Inc. 
        </footer>
      </div>
    <!-- Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  </body>
</html>

