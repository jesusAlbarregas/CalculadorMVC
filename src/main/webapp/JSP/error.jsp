<%-- 
    Document   : index
    Created on : 16-oct-2017, 16:59:06
    Author     : Jesus
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="es">
    <head>
        <%-- Incluimos la metainformación de la cabecera --%>
        <%@include file="/INC/metas.inc"%>
        <title>Calculadora</title>
        <link rel="stylesheet" type="text/css" href="<%= request.getContextPath()%>/CSS/estilo.css" media="screen" />
    </head>
    <body>
        <%-- Incluimos la cabecera de la aplicación que son las dos imágenes --%>
        <%@include file="/INC/cabecera.inc"%>
        
        <h2 id="error">ERROR !! <%=request.getAttribute("error") %></h2>
        <%-- Acceso al inicio de la aplicación --%>
        <p><a href="VueltaAEmpezar">Calculadora</a></p>
        <%-- Incluimos el pie de la aplicación que el copyright --%>
        <%@include file="/INC/pie.inc" %>
    </body>
</html>