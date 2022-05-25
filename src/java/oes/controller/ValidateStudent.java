/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package oes.controller;

import java.io.*;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.*;


/**
 *
 * @author adrianadewunmi
 */

//importing all packages
import oes.db.Admins;
import oes.db.Students;
import oes.model.AdminsDao;
import oes.model.StudentsDao;

@WebServlet("/oes.controller.ValidateStudent")

public class ValidateStudent extends HttpServlet {
    
    private static final long serialVersionUID = 1L;

    public ValidateStudent() {
        super();
    }
    
    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        response.setContentType("text/html");
        
        String username = request.getParameter("uname");
        String password = request.getParameter("pass");
        
        Students sd = new Students();
        sd.setUsername(username);
        sd.setPassword(password);
        
       boolean status = StudentsDao.doValidate(sd);
       
       if(status)
	    {
	    	//Logged in  as student do something (pending)
	    	HttpSession studentsession = request.getSession();
                studentsession.setAttribute("username", sd.getUsername());
                studentsession.setAttribute("name",sd.getName() );
                response.sendRedirect("StudentInstructions.jsp");
	    }
	    else
	    {
	    	String msg = "Invalid Username or Password";
	    	response.sendRedirect("StudentLogin.jsp?msg="+msg);
            }
       
    }

}
