/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package oes.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import oes.db.Students;
import oes.model.StudentsDao;

/**
 *
 * @author adrianadewunmi
 */
@WebServlet("/oes.controller.StudentInsert")
public class StudentInsert extends HttpServlet {

    public StudentInsert() {
        super();
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        PrintWriter out = response.getWriter();
        response.setContentType("text/html");
        
        String username = request.getParameter("uname");
        String password = request.getParameter("pass");
        String name = request.getParameter("name");
        
        Students st = new Students();
        st.setName(name);
        st.setPassword(password);
        st.setUsername(username);
        
        boolean status = StudentsDao.insertStudent(st);
        
        if(status){
            String msg1 = "Student Added!";
            response.sendRedirect("AddStudent.jsp?msg1="+msg1);
        }else{
            String msg2 = "Student Not Added!";
            response.sendRedirect("AddStudent.jsp?msg2="+msg2);
        }
    }

}
