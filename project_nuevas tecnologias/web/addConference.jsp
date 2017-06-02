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
<%
response.setHeader("Content-Type", "text/html; charset=windows-1252");
response.setHeader("Pragma", "no-cache");
response.setHeader("Expires", "mon, 01 Jan 2017 00:00:01 GMT");
response.setHeader("Cache-Control", "no-store");
response.setHeader("Cache-Control", "must-revalidate");
response.setHeader("Cache-Control", "no-cache");
HttpSession actual = request.getSession(true);

System.out.println(actual.getAttribute("tipo"));
       
     if (!actual.isNew()) {
        response.sendRedirect("login.jsp");
        return;
    }
    if (actual == null) 
        {
        response.sendRedirect("login.jsp");
        } 
    else if (actual.getAttribute("tipo").equals(2) ) 
        {
        response.sendRedirect("login.jsp");
        } 
     
    
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Conference</title>
        <%@include file="header.jsp"%>
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <section>
            <form action="AddConference"  method="POST">
            <h1>Agregar confenrencia</h1>
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
             <label><strong>Salon</strong></label>
            <select name="selectClassroom">
                <%
                
                ArrayList<Integer> classrooms=conexion.getClassroom();
                for (int i = 0; i < classrooms.size(); i++) 
                    {
                    
                %>
                    <option name="classroom"><%=classrooms.get(i)%></option>
                    <%}%>               
            </select>
            <label><strong>Parrafo 1</strong></label>
            <textarea rows="10" cols="80" name="parrafo1" ></textarea>
            <label><strong>Parrafo 2</strong></label>
            <textarea rows="10" cols="80" name="parrafo2"></textarea>
            <label><strong>Parrafo 3</strong></label>
            <textarea rows="10" cols="80" name="parrafo3"></textarea>
            <label><strong>Parrafo 4</strong></label>
            <textarea rows="10" cols="80" name="parrafo4"></textarea>
            <label><strong>Parrafo 5</strong></label>
            <textarea rows="10" cols="80" name="parrafo5"></textarea>
            <label><Strong>Horario</Strong></label>
            <input type="datetime-local" name="date">
            <button type="submit"><a href="addImageConference.jsp"><strong>Continuar</strong></a></button>
        </form>
              
        </section>    
        <!--%@include file="footer.jsp" %-->
    </body>
   
</html>
