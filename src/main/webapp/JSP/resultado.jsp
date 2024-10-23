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
            // Cargamos el objeto calculator con lo que viene en el atributo de petición 
            Calculator calculator = (Calculator) request.getAttribute("calcula");
        %>
        <div id="datos">

            <!--<p>Operación realizada <strong><%=request.getAttribute("fecha")%></strong>-->
            <p>Operación realizada <strong>${requestScope.fecha}</strong>
        </div>
        <%-- Mostramos el resultado de la operación --%>
        <h2 id="final"><%=calculator.getOperando1()%> <%=calculator.getSigno()%> 
            <%=calculator.getOperando2()%> = <%=calculator.getResultado()%></h2>
            
        <%-- Accedemos a un controlador para realizar otra operación --%>
        <p><a href="<%=request.getContextPath()%>/FrontController">Calculadora</a></p>

        <%@include file="/INC/pie.inc" %>
    </body>
</html>