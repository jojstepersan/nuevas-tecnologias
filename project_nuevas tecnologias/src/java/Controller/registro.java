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

/**
 *
 * @author kevin
 */
@WebServlet(name = "registro", urlPatterns = {"/registro"})
public class registro extends HttpServlet {
    private Conexion connection=new Conexion();
    public static void main(String[] args) {
        String str=System.getProperty("os.name");
        System.out.println(str);
    }
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
//                String nom = request.getParameter("name");
//		String us = request.getParameter("lastname");
//                String pass = request.getParameter("pass");
//                String email = request.getParameter("email");
//                long telephone=Long.parseLong(request.getParameter("telephone"));
//                String document=request.getParameter("document");
//                String date = request.getParameter("date");
//                User newUser= new User(nom,us,pass,email,telephone,document);
//                connection.setUser(newUser);
                response.sendRedirect("login.jsp");
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
        System.out.println("perrito a que jugamos");
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
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                System.out.println("hola que hace");
                String nom = request.getParameter("name");
		String us = request.getParameter("lastname");
                String pass = request.getParameter("pass");
                String email = request.getParameter("email");
                long telephone=Long.parseLong(request.getParameter("telephone"));
                String document=request.getParameter("document");
                String date = request.getParameter("date");
                Cifrado c=new Cifrado(pass);
                User newUser= new User(nom,us,c.getWord(),email,telephone,document);
                newUser.setType(2);
                connection.setUser(newUser);
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
