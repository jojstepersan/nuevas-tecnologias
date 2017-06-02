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
            <form action="registro" method="post" class="res">
                <h2>Registro</h2>
                <div class="imgcontainer">
                    <img src="images/user_dark.png" alt="User" class="user">
                </div>
                <div class="container">
                    <label><strong>Nombres</strong></label>
                    <input type="text" placeholder="Ingrese nombres" name="name" required>
                    <label> <strong>Apelldios</strong> </label>
                    <input type="text" placeholder="Ingrese Usuario" name="lastname" required>
                    <label> <strong>Correo</strong> </label>
                    <input type="email" placeholder="Ingrese correo valido" name="email" required>
                    <label> <strong>Contraseña (8 caracteres max.)</strong> </label>
                    <input type="password" id="pass" placeholder="Ingrese contraseña"  name="pass" required>
                    <label> <strong>Confirmar Contraseña</strong> </label>
                    <input type="password" id="confirm_password" placeholder="Ingrese contraseña"  name="pass2" required>
                    <label> <strong>Documento</strong> </label>
                    <input type="text" name="document" required>
                    <label> <strong>Celular</strong> </label>
                    <input type="tel" name="telephone" required>
                    <button type="submit">Registrar</button>
                </div>
            </form>
        </section>
        <script>
            var password = document.getElementById("pass")
                    , confirm_password = document.getElementById("confirm_password");
            function validatePassword() {
                if((password.value).length < 8){
                    password.setCustomValidity("Debe ser de maximo 8 caracteres");
                }else{
                   password.setCustomValidity('');
                if (password.value != confirm_password.value) {
                    confirm_password.setCustomValidity("las contraseñas no coinciden");
                } else {
                    confirm_password.setCustomValidity('');
                }
            }
            }

            password.onchange = validatePassword;
            confirm_password.onkeyup = validatePassword;
        </script>

    </body>
</html>

