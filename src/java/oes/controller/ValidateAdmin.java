/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package oes.controller;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

/**
 *
 * @author adrianadewunmi
 */

// Importing other Java files
import oes.db.Admins;
import oes.model.AdminsDao;

@WebServlet("/oes.controller.ValidateAdmin")

public class ValidateAdmin extends HttpServlet {
    
    private static final long serialVersionUID = 1L;

    public ValidateAdmin() {
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
        
        Admins ad = new Admins(); // Creating object
        ad.setUsername(username);
        ad.setPassword(password);
		
        boolean status = AdminsDao.doValidate(ad);
            if(status)
	    {
                //Logged in  as admin do something (pending)
                HttpSession session = request.getSession();
                session.setAttribute("username", ad.getUsername());
                response.sendRedirect("AdminPanel.jsp");
	    }
	    else
	    {
	    	String msg2 = "Invalid Username or Password";
	    	response.sendRedirect("AdminLogin.jsp?msg2="+msg2);
	    }
        
    }


}
