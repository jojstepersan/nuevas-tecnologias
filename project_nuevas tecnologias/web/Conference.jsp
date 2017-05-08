<%-- 
    Document   : Evento
    Created on : Mar 18, 2017, 11:06:45 AM
    Author     : Stiven
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Model.Conference"%>
<%@page import="Conexion.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Confenrencia</title>
    
        <link rel="stylesheet" href="css/evento.css">
     </head>
    <body>
        <%@include file="header.jsp"%>
       
        <%Conexion con=new Conexion();
        ArrayList<Conference>listConfenrece;
        %>   
        
        <div class="titulo">
               <h1>Stop Bulling</h1>
               <hr>
           </div>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. 
                Atque laborum commodi suscipit vitae eius perferendis consequuntur?
                Modi nihil aliquam, quas deserunt vitae atque suscipit ratione
                rerum eveniet. Qui, adipisci ad.<br><br>
                <i>Pepito perz</i>
            </p>  
            <div class="imagen">
                <img src="">
            </div>
            <div class="info-evento">
                <nav class="nav-bar">
                <span>
                    <ul>
                        <%  String log;
                            if(false)
                                log="register.jsp";
                            else
                                log="asistir.jsp";
                        %>
                        <li>
                                <input type="submit" class="asistir" value="Asistir" name="asistir">           
                            
                        </li>
                        <li class="info"><a>N° de cupos:</a></li>
                        <li class="data">30</li>
                        <li class="info"><strong>Cupos disponibles:</li>
                        <li class="data">10</li>
                    </ul>
                </span>    
            </nav>
            </div>
            <p>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                Vivamus adipiscing commodo aliquet. Fusce bibendum orci 
                magna, a pellentesque augue posuere sed. Ut bibendum magna
                tincidunt velit fermentum, eu laoreet arcu consectetur. Nullam
                nec enim sed justo fermentum sagittis. Nam varius dapibus risus,
                quis consectetur mauris. Praesent ut iaculis turpis. Phasellus congue
                tristique ligula et consequat.<br>
                    <br>
                Vivamus leo neque, luctus ac dignissim non, vehicula ut diam. Morbi eu
                urna interdum, cursus tortor quis, aliquam quam. Aliquam quis tellus ante.
                Morbi aliquet quam sem, et molestie dolor aliquet sed. Vivamus vehicula turpis
                nunc, ut hendrerit ante pulvinar eu. Pellentesque consectetur risus sit amet
                nulla sagittis, sit amet condimentum nisl tristique. Aliquam sit amet arcu eget
                risus dapibus fringilla vitae quis nunc. Cras commodo laoreet nulla ac rutrum. 
                Fusce quam felis, malesuada ut condimentum eu, vulputate sed justo. Duis ac rhoncus neque.<br>
                <br>    
                Nunc congue vel turpis id interdum. Praesent gravida dapibus dui id 
                fringilla. Suspendisse potenti. Morbi fringilla arcu non tempor faucibus
                . Aliquam convallis quam sem, id eleifend risus sodales id. Aliquam sed 
                mi eu leo tempus ultricies. Fusce euismod, nibh in adipiscing eleifend, 
                eros enim pharetra tellus, sed aliquam purus est nec nunc. Praesent egestas
                leo a aliquam scelerisque. Curabitur a tincidunt libero, vel pharetra neque.
                Fusce vel urna diam. Duis in dui at quam mollis tristique eu non justo. 
                Donec imperdiet nisl non faucibus bibendum. Suspendisse potenti.<br>
                <br>
                
                Vestibulum tempor tristique dignissim. Ut fermentum porttitor massa,
                non dictum risus. Proin aliquam, metus non pretium vehicula, ipsum
                ligula placerat est, ut pharetra ipsum sapien et nisi. Aliquam condimentum
                neque vitae felis elementum fringilla quis eu ante. Aenean dictum sem orci,
                commodo elementum urna fringilla sit amet. Integer dui elit, consectetur
                eget ante quis, eleifend egestas tellus. Suspendisse venenatis urna non
                turpis volutpat, eget vehicula ipsum ultricies. Fusce at rutrum nulla,
                id vulputate mi. Nunc cursus risus a sapien rutrum, eu dapibus nunc
                elementum. Sed id tincidunt tortor. Donec ipsum nulla, aliquet eu erat 
                eu, sodales luctus lorem.<br><br>

                Nullam ut sem lectus. Fusce accumsan vestibulum est porttitor egestas.
                Curabitur ac ultricies quam. Integer elementum tellus vitae nisl luctus, 
                fringilla luctus metus congue. Duis nec diam posuere, pellentesque urna 
                nec, rhoncus ligula. Vivamus pulvinar id nulla eget sodales. Nunc iaculis
                nibh massa, sed aliquam diam ornare vel. Suspendisse potenti. Integer nec
                ante turpis. Vivamus eleifend diam et porttitor pharetra. Vivamus tempus
                pretium elit, sit amet molestie diam. Interdum et malesuada fames ac ante
                ipsum primis in faucibus. Fusce viverra posuere porta. Maecenas ut blandit 
                massa, ut ultrices purus. Sed at porttitor urna.<br>
            </p>
    </body>
    <%@include file="footer.jsp"%> 
</html>
