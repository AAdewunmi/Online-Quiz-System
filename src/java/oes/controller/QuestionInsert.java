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
import oes.db.Questions;
import oes.model.QuestionsDao;

/**
 *
 * @author adrianadewunmi
 */
@WebServlet("/oes.controller.QuestionInsert")
public class QuestionInsert extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public QuestionInsert() {
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
        String question = request.getParameter("Question");
        String a = request.getParameter("option1");
        String b = request.getParameter("option2");
        String c = request.getParameter("option3");
        String d = request.getParameter("option4");
        String answer = request.getParameter("answer");
        
        Questions q = new Questions();
        q.setA(a);
        q.setB(b);
        q.setC(c);
        q.setD(d);
        q.setAnswer(answer);
        q.setQuestion(question);
        
        boolean status = QuestionsDao.insertQuestion(q);
        if(status){
            String msg1 = "Question Added!";
            response.sendRedirect("AddQuestion.jsp?msg1="+msg1);
        }else{
            String msg2 = "Question Not Added!";
            response.sendRedirect("AddQuestion.jsp?msg2="+msg2);
        }
    }


}
