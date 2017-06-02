<%-- 
    Document   : addImageExpositor
    Created on : May 30, 2017, 12:45:00 AM
    Author     : Stiven
--%>

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
        <title>Imagen Expositor</title>
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <%@include file="header.jsp"%>
        <section>
            <form action="AddImageExpositor" method="post" enctype="MULTIPART/FORM-DATA">
                <label style="font-size:1.3em; "><strong>Agragar imagen</strong></label>
                <input type="file" name="image">
                <button type="submit"><Strong>Finalizar</strong></button>
            </form>
        </section>
    </body>
</html>
