<%-- 
    Document   : index
    Created on : 16-oct-2017, 16:59:06
    Author     : Jesus
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <%@include file="/INC/metas.inc"%>
        <title>Calculadora</title>
        <link rel="stylesheet" type="text/css" href="<%= request.getContextPath()%>/CSS/estilo.css" media="screen" />
    </head>
    <body>
        <%@include file="/INC/cabecera.inc"%>
        
        <h2 id="error">ERROR !! <%=request.getAttribute("error") %></h2>
        <%--<h2 id="error">ERROR !! <%=calculator.getError()%></h2>--%>
        <p><a href="VueltaAEmpezar">Calculadora</a></p>
        <%@include file="/INC/pie.inc" %>
    </body>
</html>