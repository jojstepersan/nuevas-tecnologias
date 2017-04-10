<%-- 
    Document   : index
    Created on : Feb 24, 2017, 10:32:04 PM
    Author     : Stiven
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type"   content="text/html; charset=UTF-8">
        <title>LogIn with servlet</title>
        <link rel="stylesheet" href="css/style.css">
        <%@include file="header.jsp"%>
    </head>
    
    <body>
        <section>
        <form action="Login" method="post" class="log">
            <h2>Ingresar </h2>
            <div class="imgcontainer">
                <img src="images/user_dark.png" alt="User" class="user">
            </div>
            <div class="container">
                <label><strong>Usuario</strong></label>
                <input type="text" placeholder="Ingrese nombre de usuario" name="uname" required>
                <label> <strong>contraseña </strong> </label>
                <input type="password" placeholder="Ingrese contraseña" name="psw" required>
                <button type="submit">Login</button>
            </div>
            <div class="container" style="background-color:#f1f1f1">
                <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
                <span class="psw">Forgot <a href="#">password?</a></span>
            </div>
            
        </form>
        </section>
       
         
    </body>
</html>
