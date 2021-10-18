<%-- 
    Document   : index
    Created on : 16-oct-2017, 16:59:06
    Author     : Jesus
--%>

<%@page import="es.albarregas.beans.Calculator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="es">
    <head>
        <%@include file="/INC/metas.inc"%>
        <title>Calculadora</title>
        <link rel="stylesheet" type="text/css" href="<%= request.getContextPath()%>/CSS/estilo.css" media="screen" />
        
    </head>
    <body>
        <%@include file="/INC/cabecera.inc"%>
        <%
            Calculator calculator = (Calculator) request.getAttribute("calcula");
        %>
        <table id="datos">
            <tr>
                <th>Fecha</th>


            </tr>
            <tr>
                <td><%=request.getAttribute("fecha") %></td>
                


            </tr>	
        </table>
        
        <h2 id="final"><%=calculator.getOperando1()%> <%=calculator.getSigno()%> 
            <%=calculator.getOperando2()%> = <%=calculator.getResultado()%></h2>
        <p><a href="VueltaAEmpezar">Calculadora</a></p>

        <%@include file="/INC/pie.inc" %>
    </body>
</html>