<%-- 
    Document   : header
    Created on : Mar 11, 2017, 8:27:03 PM
    Author     : Stiven
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session= "true" %>
    <link rel="stylesheet" href="css/header.css">
    <header>
            <div class="logo">  
                <a href="index.jsp"><img src="images/logo.png"></a>
            </div>
            <div>
            <nav class="menu">
                <span>
                    <ul>
                        <li><a href="index.jsp">Inicio</a></li>
                        
                        <li><a href="Conference.jsp">Conferencias</a></li>
                        <li><a href="expositors.jsp">Expositores</a></li>
                        <%  
                        HttpSession sesion = request.getSession();
                        if(sesion.getAttribute("usuario") != null){
                          out.println("<li><a href=\"\">"+sesion.getAttribute("usuario")+"</a></li>");
                          out.println("<li><a href=\"login.jsp\">Cerrar Sesion</a></li>");
                        }else{
                         out.println("<li><a href=\"login.jsp\">Ingresar</a></li>");
                         out.println("<li><a href=\"register.jsp\">Registrate</a></li>");
                        }
                       %>          
                    </ul>
                </span>    
            </nav>
            </div>
        </header>