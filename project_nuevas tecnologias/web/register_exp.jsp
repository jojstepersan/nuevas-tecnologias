<%-- 
    Document   : registrer
    Created on : 19/03/2017, 03:00:05 PM
    Author     : kevin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type"   content="text/html; charset=UTF-8">
        <title>Registro</title>
        <link rel="stylesheet" href="css/style.css">
       
    </head>
    <body>
        <%@include file="header.jsp"%>
        <section>
        <form action="regis_exp" method="POST" class="res">
            <h2>Agregar expositor</h2>
            <div class="imgcontainer">
                <img src="images/user_dark.png" alt="User" class="user">
            </div>
            <div class="container">
                <label><strong>Nombres</strong></label>
                <input type="text" placeholder="Ingrese nombres" name="name" required>
                <label> <strong>Apellidos</strong> </label>
                <input type="text" placeholder="Ingrese apellido" name="lastname" required>
                <label> <strong>Documento</strong> </label>
                <input type="text" placeholder="Ingrese documento" name="doc" required>
                <label> <strong>Profeción</strong> </label>
                <input type="text" placeholder="Ingrese profeción" name="profes" required>
                <label> <strong>Bibliografía</strong> </label>
                <textarea rows="10" cols="80" name="des" data-toggle="tooltip" data-placement="data-toggle">
                </textarea>
                <button type="submit">Siguiente</button>
            </div>
        </form>
        </section>
        
   
         
    </body>
</html>

