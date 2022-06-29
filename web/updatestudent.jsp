<%-- 
    Document   : updatestudent
    Created on : 27 Jun 2022, 12:20:19
    Author     : adrianadewunmi
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page import="oes.model.StudentsDao"%>
<%@page import="oes.db.Students"%>
<%@page import="java.util.ArrayList"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link href="bootstrap.min.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <meta charset="ISO-8859-1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>Update Student</title>
    
  </head>
  <body>
    <center><h3><pre><font color="blue">List of all Students</font></pre></h3></center>
        <table class="table table-bordered table-hover">
            <tr tr class="table-dark">
             <th>s no.</th>
             <th>User Id</th>
             <th>name</th>
             <th>password</th>
             <th>Update</th>
             <th>Delete</th>
             </tr>
             <tr>
                <%
                   int i = 0;
                   ArrayList<Students> allstudents = StudentsDao.getAllRecords();
                  for(Students e : allstudents)
                  {  if(request.getParameter("username").equals(e.getUsername())) 
                        {
                      %>
                                <tr  class="table-primary">
                                        <form action="updatestudentnow.jsp">
                                        <input type="hidden" value="<%=e.getUsername()%>" type="text" name="usernameoriginal">
                                        <td><%=i++%></td>
                                        <td> <input type="text" value="<%=e.getUsername()%>" name="uname"></input> </td>
                                        <td> <input type="text" value=<%=e.getName() %> name="name" ></input>  </td>
                                        <td> <input type="text" value=<%=e.getPassword() %> name="pass" ></input>  </td>
                                        <td> <input type="submit" value="update"> </td>
                                        <td><a href="deletestudent.jsp?username=<%=e.getUsername()%>">Delete</a></td>
                                        </form>
                                </tr>
                    <%	
                        }
                        else
                        { 
                        %>
                   <tr>
                   <td><%=i++%></td>
                   <td><%=e.getUsername() %></td>
                   <td><%=e.getName()%></td>
                   <td><%=e.getPassword() %></td>
                   <td><a href="updatestudent.jsp?username=<%=e.getUsername()%>">Update</a></td>
                   <td><a href="deletestudent.jsp?username=<%=e.getUsername()%>">Delete</a></td>
                   </tr>
                   <%
                    }
                  }
                    %>
            <tr>
            <th colspan="2"><center><input type="button" class="btn btn-outline-success" value="Add Student" onclick="location.href='AddStudent.jsp'"></center></th>
            <th colspan="2"><input type="hidden"></th>
            <th colspan="2"  ><center><input type="button" class="btn btn-outline-danger" value="Back to Panel" onclick="location.href='AdminPanel.jsp'"></center></th>
            </tr>
        </table>
      
    <!-- Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  </body>
</html>

