/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Conference;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Stiven
 */

@WebServlet(name = "AddConference", urlPatterns = {"/AddConference"})
public class AddConference extends HttpServlet {
public static Conference conference=new Conference();
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            response.sendRedirect("addImageConference.jsp");
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
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        conference=new Conference();
        String expositor=request.getParameter("selectExpositor"); 
        String[] aux=expositor.split(":");
        String documento=aux[0];
        ArrayList<String> parrafos=new ArrayList<>();
        System.out.println("parrafos servlet");
        for(int i=1;i<=5;i++){
           parrafos.add(editParrafo(request.getParameter("parrafo"+i))); 
            System.out.println(parrafos.get(i-1));
        }
        conference.setTitle(request.getParameter("title"));
        conference.setParagraphs(parrafos);
        conference.setDocExpositer(documento);
        System.out.println(documento+" expositor");
        conference.setClassroom(Integer.valueOf(request.getParameter("selectClassroom")));
        conference.setFecha(request.getParameter("date"));
        System.out.println(request.getParameter("date"));
        System.out.println("listo");
        processRequest(request, response);
    }
    
    public static String editParrafo(String parrafo)
        {
        String aux="";
        while(parrafo.length()>122)
            {
            aux+=parrafo.substring(0, 122)+"\n";
            parrafo=parrafo.substring(122);
            }
        aux+=parrafo;
        return aux;
        }
    public static void main(String[] args) {
        String str="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus adipiscing commodo aliquet. Fusce bibendum orci magna, a pellentesque augue posuere sed. Ut bibendum magna tincidunt velit fermentum, eu laoreet arcu consectetur. Nullam nec enim sed justo fermentum sagittis. Nam varius dapibus risus, quis consectetur mauris. Praesent ut iaculis turpis. Phasellus congue tristique ligula et consequat.";
        System.out.println(str.length());
        System.out.println(editParrafo(str));
    }       
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
