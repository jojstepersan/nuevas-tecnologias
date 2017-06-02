/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Conexion.Conexion;
import Model.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author kevin
 */

@WebServlet(name = "Login", urlPatterns = {"/Login"})
public class Login extends HttpServlet {
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException 
        {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter())
            {
            Conexion cn = new Conexion();
            String userSt = request.getParameter("uname");
            String pass = request.getParameter("psw");
            Cifrado c = new Cifrado(pass);
            System.out.println(userSt);
            String pass2=c.getWord();
            User us=new User();
            us = cn.getUser(userSt, pass2);
            System.out.println(us.getEmail()+" este es el email");
            if(userSt.equals(us.getEmail())&&pass2.equals(us.getPass()))
                {
                HttpSession sesion = request.getSession();      
                sesion.setAttribute("usuario",us.getName());
                sesion.setAttribute("tipo",us.getType());
                sesion.setAttribute("documento", us.getDocument());
                sesion.setAttribute("email", us.getEmail());
                sesion.setAttribute("tipo", us.getType());
                response.sendRedirect("index.jsp");
                }
            else
                {
                out.println("<h1>El Usuario o la contraseña son incorrectos<h1>");
                response.sendRedirect("index.jsp");
                }
            if(userSt.equals(us.getEmail())&&!pass2.equals(us.getPass()))
                {
                out.println("<h1>El Usuario o la contraseña son incorrectos<h1>");
                //response.sendRedirect("index.jsp");
                }
            if(!userSt.equals(us.getEmail()))
                {
                out.println("<h1>El Usuario o la contraseña son incorrectos<h1>");
                //response.sendRedirect("index.jsp");
                }
            }
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
        processRequest(request, response);
        
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
    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
       /* try (PrintWriter out = response.getWriter())
            {
            Conexion cn = new Conexion();
            String userSt = request.getParameter("uname");
            String pass = request.getParameter("psw");
            User us;
             us = cn.getUser(userSt, pass);
             if(userSt.equals(us.getEmail())&&pass.equals(us.getPass()))
                {
                 HttpSession sesion = request.getSession();                    
                 sesion.setAttribute("usuario",us.getName());
                 response.sendRedirect("index.jsp");
                }
             else if(userSt.equals(us.getEmail())&&!pass.equals(us.getPass()))
                out.println("<h1>El Usuario o la contraseña son incorrectos<h1>");
            }*/      
     processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
