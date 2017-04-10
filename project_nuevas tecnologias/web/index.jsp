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
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    </head>
    <body>
         <%@include file="header.jsp"%>
         <div class="w3-content w3-display-container" >
            <img class="mySlides" src="images/slider/cliche.jpg" style="width:100%">
            <img class="mySlides" src="images/slider/cine.jpg" style="width:100%">
            <img class="mySlides" src="images/slider/mujer_cine.jpg" style="width:100%">
            <div class="w3-center w3-container w3-section w3-large w3-text-white w3-display-bottommiddle" style="width:100%">
              <div class="w3-left w3-hover-text-khaki" onclick="plusDivs(-1)">&#10094;</div>
              <div class="w3-right w3-hover-text-khaki" onclick="plusDivs(1)">&#10095;</div>
              <span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(1)"></span>
              <span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(2)"></span>
              <span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(3)"></span>
            </div>
          </div>
        <!--div class="slide" >
            <a href="Evento.jsp"><img class="mySlides" src="images/slider/taller.jpg" ></a>
            <img class="mySlides" src="images/slider/cliche.jpg" >
            <img class="mySlides" src="images/slider/cine.jpg" >
            <img class='mySlides' src="images/slider/mujer_cine.jpg" >
        </div-->
        
    </body>
    <%@include file="footer.jsp"%>     
    <script>
        var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function currentDiv(n) {
  showDivs(slideIndex = n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("demo");
  if (n > x.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = x.length}
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
     dots[i].className = dots[i].className.replace(" w3-white", "");
  }
  x[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " w3-white";
}
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
            setTimeout(carousel, 4000); // Change image every 8 seconds
            }
    </script>
</html>
