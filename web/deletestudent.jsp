<%-- 
    Document   : deletestudent
    Created on : 29 Jun 2022, 16:47:22
    Author     : adrianadewunmi
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="oes.db.*" %>
    <%@page import="oes.model.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Student</title>
    </head>
    <body>
        <%
		Students s = new Students();
		s.setUsername(request.getParameter("username"));
		int status = StudentsDao.deleteRecord(s);
		if(status > 0)
			response.sendRedirect("StudentList.jsp");
		else
			out.print("Error");
		
	%>
    </body>
</html>
