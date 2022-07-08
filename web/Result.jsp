<%-- 
    Document   : Result
    Created on : 8 Jul 2022, 15:42:48
    Author     : adrianadewunmi
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
            <%@page import="oes.model.QuestionsDao"%>
<%@page import="oes.db.*"%>
<%@page import="java.util.ArrayList"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <meta charset="ISO-8859-1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>Results</title>
  </head>
  <body>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <%
    String[] dbans = new String[100];
    ArrayList<Questions> allQuestions = QuestionsDao.getAllRecords();
    int i = 0;
    int size = allQuestions.size();
    for(Questions e : allQuestions)
    {   
            dbans[i] = e.getAnswer();
              i++;
    }
    String[] userans = new String[100];
    for(int j = 0 ; j < size ; j++)
    {
            userans[j] = request.getParameter(Integer.toString(j));
    }
    int correctanswer=0;
    int unattempted = 0;
    int wronganswer=0;
    for(int k = 0 ; k< size;k++)
    {
            if(userans[k].equalsIgnoreCase(dbans[k]))
            {
                    correctanswer++;
            }
            else if(userans[k].equals("e"))
            {
                    unattempted++;
            }
            else
            {
                    wronganswer++;
            }
    }
    int attemped = size - unattempted;
    %><div  height="300" width=100% style="background-color: yellow"><pre><h1><center><font color="green">Results</font></center></h1></pre></div><%

    %>
    <table class="table table-hover">
  <thead >
    <tr class="table-warning">
      <th colspan="3" scope="col"><center><pre><h4>Name:-<%=session.getAttribute("name") %>  || Userid:-<%=session.getAttribute("username") %></h4></pre></center></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Total no. of Questions</td>
      <td><%=size %></td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Number Of Questions Attempted</td>
      <td><%=attemped %></td>
    </tr>
    <tr>
      <th  scope="row">3</th>
      <td  >Number of Correct Answers</td>
      <td ><h4><font color="green"><%=correctanswer %></h4></font></td>
    </tr>
     <tr>
      <th  scope="row">4</th>
      <td>Number of Wrong Answers</td>
      <td ><font color="red"><h4><%=attemped-correctanswer %></h4></font></td>
    </tr>
  </tbody>
</table>
<center>
<input  onclick="location.href='oes.controller.LogoutStudent'" type="button" value="Exit" class="btn btn-outline-danger btn-lg">
</center>

    <!-- Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

  </body>
</html>

