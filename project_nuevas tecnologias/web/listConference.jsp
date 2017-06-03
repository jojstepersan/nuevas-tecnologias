<%-- 
    Document   : listConference
    Created on : May 7, 2017, 11:07:34 AM
    Author     : Stiven
--%>


<%@page import="java.util.ArrayList"%>
<%@page import="Model.Conference"%>
<%@page import="Conexion.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista conferencia</title>
        <link rel="stylesheet" href="css/listacontefencias.css">
              
    </head>
    
    <body>
        <%@include file="header.jsp" %>
        <section>
            <h2>LISTA DE CONFERENCIAS</h2>
            <table class="confer">
                <tbody>
                    <%
                    Conexion conexion=new Conexion();
                    ArrayList<Conference> listConference=conexion.getConference();
                    if(!listConference.isEmpty())
                    for(int i=0;i<listConference.size();i+=2){
                    Conference con1=listConference.get(i);
                    Conference con2=null;
                   %>
                    <tr>
                        <td>
                            <form class="conf">
                                <h3><%=con1.getTitle()%></h3>
                                <div class="imgcontainer">
                                    <img src="images/Conferences/<%=con1.getImage()%>" alt="User" class="user">
                                    <%=con1.getFecha()%>
                                </div>
                                <a href="Conference.jsp?id=<%=con1.getId()%>">Ver más</a>
                            </form>
                        </td>
                        <% if(listConference.size()-1-i>0)
                            {
                            con2=listConference.get(i+1);
                            %>
                            <td>
                               <form class="conf">
                                    <h3><%=con2.getTitle()%></h3>
                                    <div class="imgcontainer">
                                        <img src="images/Conferences/<%=con2.getImage()%>" alt="User" class="user">
                                        <%=con2.getFecha()%>
                                    </div>
                                    
                                    <a href="Conference.jsp?id=<%=con2.getId()%>">Ver más</a>
                                </form>
                            </td>
                            <%}%>
                    </tr>
                    <%}%>
                </tbody>
            </table>

        </section>
    </body>
</html>