<%-- 
    Document   : StudentList
    Created on : 21 Jun 2022, 09:54:38
    Author     : adrianadewunmi
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="oes.model.*"%>
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
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>Student List</title>
  </head>
  <body>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <center><h3><pre><font color="blue">List of all Students</font></h3></pre></center>
    <table class="table table-bordered table-hover">
        <tr tr class="table-dark">
                <th>s no.</th>
                <th>User Id</th>
                <th>name</th>
                <th>password</th>
                <th>Update</th>
                <th>Delete</th>
                <tr>
                <%
                   int i = 0;
                   ArrayList<Students> allstudents = StudentsDao.getAllRecords();
                   for(Students e : allstudents)
                       {  
                %>
                </tr>
                <tr>
                    <td><%=i++%></td>
                    <td><%=e.getUsername() %></td>
                    <td><%=e.getName()%></td>
                    <td><%=e.getPassword() %></td>
                    <td><a href="updatestudent.jsp?username=<%=e.getUsername()%>">Update</a></td>
                    <td><a href="deletestudent.jsp?username=<%=e.getUsername()%>">Delete</a></td>

                    <%
                            }
                    %>
                </tr>
                <tr>
                    <th colspan="2"><center><input type="button" value="Add Student"  class="btn btn-outline-success" onclick="location.href='AddStudent.jsp'"></center></th>
                    <th colspan="2"><input type="hidden"></th>
                    <th colspan="2"  ><center><input type="button"  class="btn btn-outline-danger" value="Back to Panel" onclick="location.href='AdminPanel.jsp'"></center></th>
                </tr>
        </tr>
    </table>
   
    <!-- Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

  </body>
</html>

