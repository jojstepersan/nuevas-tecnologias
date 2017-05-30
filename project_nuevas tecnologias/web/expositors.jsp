<%-- 
    Document   : expositors
    Created on : Apr 10, 2017, 1:59:07 AM
    Author     : Stiven
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Model.Expositor"%>
<%@page import="Model.Expositor"%>
<%@page import="Conexion.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Expositores</title>
        <link rel="stylesheet" href="css/expositores.css">
    </head>
    <body>
         <%@include file="header.jsp"%>
        <section>
            <h1>Expositores</h1>
            <table>
            <%Conexion con=new Conexion();
            ArrayList<Expositor> list=con.getExpositor();  
            for(int i=0;i<list.size();i++)
                {
                Expositor expositor=list.get(i);
            %>
            <div class="container-expo">
                <div class="image_expo">
                    <img src="./images/Expositor/<%=expositor.getImage()%>">
                </div>
                <div class="expositor">
                    <strong>Nombre :</strong> <p><%=expositor.getName()%> <%=expositor.getLastName()%></p><br>
                    <strong>Profeción :</strong>  <p><%=expositor.getProfesion()%></p>
                    <strong>Bibliografía :</strong>  <p><%=expositor.getBibliography()%></p>
                       
                </div>
            </div>
            <%}%>
            </table>
           
        </section>
    </body>
</html>
