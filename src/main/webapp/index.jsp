<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <%@include file="/INC/metas.inc"%>
        <title>Calculadora</title>
        <link rel="stylesheet" type="text/css" href="<%= request.getContextPath()%>/CSS/estilo.css" media="screen" />
    </head>
    <body>
        <%@include file="INC/cabecera.inc"%>
        <form action="<%=request.getContextPath()%>/FrontController" method="post">
            <table>
                <tr>
                    <td colspan="2"><label for="o1">Primer operando:</label></td>
                    <td colspan="2"><input type="text" name="operando1" id="o1" size="10"></td>
                </tr>
                <tr>
                    <td colspan="2"><label for="o2">Segundo operando:</label></td>
                    <td colspan="2"><input type="text" name="operando2" id="o2" size="10"></td>
                </tr>
                <tr><td colspan="4">&nbsp;</td></tr>
                <tr>
                    <td><input type="radio" name="operacion" value="suma" checked>&nbsp;Sumar</td>
                    <td><input type="radio" name="operacion" value="resta">&nbsp;Restar</td>
                    <td><input type="radio" name="operacion" value="producto">&nbsp;Mutiplicar</td>
                    <td><input type="radio" name="operacion" value="division">&nbsp;Dividir</td>
                </tr>
                <tr><td colspan="4">&nbsp;</td></tr>
                <tr>
                    <td colspan="2"><input type="submit" name="enviar" value="Calcular" id="idenviar"></td>
                    <td colspan="2"><input type="reset" name="limpiar" value="Limpiar"></td>

                </tr>
            </table>
        </form>
        <%@include file="INC/pie.inc" %>
    </body>
</html>