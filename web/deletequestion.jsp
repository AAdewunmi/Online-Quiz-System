<%-- 
    Document   : deletequestion
    Created on : 8 Jul 2022, 16:42:19
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
        <meta charset="ISO-8859-1">
        <title>Delete Questions</title>
    </head>
    <body>
        <%
		Questions q = new Questions();
		q.setQuestion(request.getParameter("ques"));
		int status = QuestionsDao.deleteRecord(q);
		if(status > 0)
			response.sendRedirect("QuestionList.jsp");
		else
			out.print("Error");
		
	%>
    </body>
</html>
