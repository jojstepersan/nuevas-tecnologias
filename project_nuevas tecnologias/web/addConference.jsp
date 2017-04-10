<%-- 
    Document   : addEvent
    Created on : Apr 9, 2017, 12:20:16 AM
    Author     : Stiven
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Model.Expositor"%>
<%@page import="Conexion.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Conference</title>
        <%@include file="header.jsp"%>
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <section>
            <form action="AddConference"  method="post">
            <h1>Agregar cofenrencia</h1>
            <label><strong>Titulo de la conferencia</strong></label>
            <input type="text" placeholder="Añadir titulo" name="title">
            <label><strong>Expositor</strong></label>
            <select name="selectExpositor">
                <%
                Conexion conexion=new Conexion();
                ArrayList<Expositor> listExpositor=conexion.getExpositor();
                for (int i = 0; i < listExpositor.size(); i++) 
                    {
                    Expositor expositor=listExpositor.get(i);
                %>
                    <option name="expositor"><%=expositor.getDoc()%> : <%=expositor.getName()%> <%=expositor.getLastName()%></option>
                    <%}%>               
            </select>
            <label><strong>Introducción</strong></label>
            <textarea rows="5" cols="50" name="introduction" ></textarea>
            <label><strong>Descripción</strong></label>
            <textarea rows="10" cols="80" name="description"></textarea>
            <label><strong>Cupos</strong></label>
            <input type="number" name="number">
            <button type="submit"><a href="addImage.jsp"><strong>Continuar</strong></a></button>
        </form>
              
        </section>    
        <!--%@include file="footer.jsp" %-->
    </body>
   
</html>
