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
          int id=Integer.valueOf(request.getParameter("id"));
          int cupos=con.numeroCupos(id);
          Conference conference=con.getConference(id);
          HttpSession x=request.getSession();
          x.setAttribute("conference", id);
        %>   
        
        <div class="titulo" >
               <h1><%=conference.getTitle()%></h1>
               <hr>
        </div>  
        <div class="imagen">
            <img src="images/Conferences/<%=conference.getImage()%>">
        </div>
        <div class="info-evento">
            <nav class="nav-bar">
            <span>
                <ul>
                   
                    <li>     
                        <form action="Asistir" method="post">
                            <%  
                                if(cupos-con.cuposDisnibles(id)!=0)
                                    {
                                    if(!con.isConference((String)x.getAttribute("email"), id))
                                        {    
                                        %>
                                        <input type="submit" class="asistir" value="Asistir" name="asistir"> 
                                    <%  }
                                    else{%>
                                        <input type="submit" class="asistir" value="Cancelar" name="asistir"> 
                                        <%}
                                    }
                                else    
                                    {   %>
                                    <li class="info">NO hay cupos</li>
                                    <%}%>
                        </form>
                    </li>
                    <li class="info">Total cupos:</li>
                    <li class="data"><%=cupos%></li>
                    <li class="info"><strong>Cupos disponibles:</li>
                    <li class="data"><%=cupos-con.cuposDisnibles(id)%></li>
                </ul>
            </span>    
        </nav>
        </div>
        <%
            ArrayList<String> parrafos=conference.getParagraphs();
            for(int i=0;i<parrafos.size();i++)
                {%>
                <p>
                    <%=parrafos.get(i)%>
                </p>  
                <%}%>
        
    </body>
    <%@include file="footer.jsp"%> 
</html>
