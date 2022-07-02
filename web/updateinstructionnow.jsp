<%-- 
    Document   : updateinstructionnow
    Created on : 2 Jul 2022, 13:06:16
    Author     : adrianadewunmi
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
                <%@page import="oes.model.InstructionsDao"%>
<%@page import="oes.db.Instructions"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Updating Instructions</title>
    </head>
    <body>
        <%
		String instoriginal = request.getParameter("instoriginal");
                String instmodified = request.getParameter("instmodified");
     
		int status = InstructionsDao.doUpdateNowRecord(instoriginal,instmodified);
		if(status > 0)
		{
			response.sendRedirect("InstructionList.jsp");
		}
		else if(status == -1)
		{
			out.print("error from databse");
			
		}
		else
		{
			out.print("excepion occured");
		}
		
	%>
    </body>
</html>
