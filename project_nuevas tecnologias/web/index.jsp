<%-- 
    Document   : index
    Created on : Mar 11, 2017, 8:26:16 PM
    Author     : Stiven
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index</title>
    </head>
    <%@include file="header.jsp"%>
   <link rel="stylesheet" href="css/index.css">
    <body>
        <div class="slide" >
            <a href="proof.jsp"><img class="mySlides" src="images/slider/taller.jpg" ></a>
            <img class="mySlides" src="images/slider/cliche.jpg" >
            <img class="mySlides" src="images/slider/cine.jpg" >
            <img class='mySlides' src="images/slider/mujer_cine.jpg" >
        </div>
        
        
   
    
    </body>
    <%@include file="footer.jsp"%>     
    <script>
        var myIndex = 0;
        carousel();

        function carousel() 
            {
            var i;
            var x = document.getElementsByClassName("mySlides");
            for (i = 0; i < x.length; i++) 
               x[i].style.display = "none";  
            myIndex++;
            if (myIndex > x.length) 
                myIndex = 1;    
            x[myIndex-1].style.display = "block";  
            setTimeout(carousel, 8000); // Change image every 8 seconds
            }
    </script>
</html>
