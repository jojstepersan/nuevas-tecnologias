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
        <%@include file="header.jsp"%>
    </head>
    <body>
        <section>
        <form action="regis_exp" method="POST" class="res">
            <h2>Añadir expositor</h2>
            <div class="imgcontainer">
                <img src="images/user.png" alt="User" class="user">
            </div>
            <div class="container">
                <label><strong>Nombres</strong></label>
                <input type="text" placeholder="Ingrese nombres" name="name" required>
                <label> <strong>Apellidos</strong> </label>
                <input type="text" placeholder="Ingrese Usuario" name="lastname" required>
                <label> <strong>Documento</strong> </label>
                <input type="text" placeholder="Ingrese Usuario" name="doc" required>
                <label> <strong>descripcion</strong> </label>
                <textarea rows="4" cols="50" name="des">
                </textarea>
                <label> <strong>investigaciones</strong> </label>
                <textarea rows="4" cols="50" name="inves">
                </textarea>
                <button type="submit">Añadir</button>
            </div>
        </form>
        </section>
        
   
         
    </body>
</html>

