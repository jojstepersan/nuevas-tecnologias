<%-- 
    Document   : addImageExpositor
    Created on : May 30, 2017, 12:45:00 AM
    Author     : Stiven
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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