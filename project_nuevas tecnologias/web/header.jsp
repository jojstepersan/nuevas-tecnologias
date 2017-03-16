<%-- 
    Document   : header
    Created on : Mar 11, 2017, 8:27:03 PM
    Author     : Stiven
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <link rel="stylesheet" href="css/header.css">
    
    <header>
        <div class="header">
            <div class="header">
            <div class="logo">  
                <img src="images/logo.png">
            </div>
            <div>
            <nav class="menu">
                <span>
                    <ul>
                        <li><a href="index.jsp">Inicio</a></li>
                        <li><a href="">Eventos</a></li>
                        <li><a href="">Expositores</a></li>
                        <li><a href="">conferencias</a></li>
                        <li><a href="login.jsp">Log in</a></li>
                        <li><a href="">Registrate</a></li>
                    </ul>
                </span>    
            </nav>
            </div>
            </div>
        </div>
        </header>
    <script>
    var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
    </script>