<%-- 
    Document   : index
    Created on : 16-oct-2017, 16:59:06
    Author     : Jesus
--%>


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
        
        <h2 id="error">ERROR !! <%=request.getAttribute("error") %></h2>
        
        <p><a href="VueltaAEmpezar">Calculadora</a></p>
        <%@include file="/INC/pie.inc" %>
    </body>
</html>