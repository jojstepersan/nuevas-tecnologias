<%-- 
    Document   : header
    Created on : Mar 11, 2017, 8:27:03 PM
    Author     : Stiven
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session= "true" %>
    <link rel="stylesheet" href="css/header.css">
    <header>
        <div class="header">
            <div class="header">
            <div class="logo">  
                <a href="index.jsp"><img src="images/logo.png"></a>
            </div>
            <div>
            <nav class="menu">
                <span>
                    <ul>
                        <li><a href="index.jsp">Inicio</a></li>
                        <li><a href="">Eventos</a></li>
                        <li><a href="">Expositores</a></li>
                        <li><a href="">conferencias</a></li>
                        <%  
                        HttpSession sesion = request.getSession();
                        if(sesion.getAttribute("usuario") != null){
                          out.println("<li><a href=\"\">"+sesion.getAttribute("usuario")+"</a></li>");
                        }else{
                         out.println("<li><a href=\"login.jsp\">login</a></li>");
                         out.println("<li><a href=\"register.jsp\">Registrate</a></li>");
                        }
                       %>        
                    </ul>
                </span>    
            </nav>
            </div>
            </div>
        </div>
        </header>