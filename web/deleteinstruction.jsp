<%-- 
    Document   : deleteinstruction
    Created on : 2 Jul 2022, 13:23:08
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
        <title>Delete Instructions</title>
    </head>
    <body>
        <%
		Instructions i = new Instructions();
		i.setInstruction(request.getParameter("inst"));
		int status = InstructionsDao.deleteRecord(i);
		if(status > 0)
			response.sendRedirect("InstructionList.jsp");
		else
			out.print("Error");
		
	%>
    </body>
</html>
