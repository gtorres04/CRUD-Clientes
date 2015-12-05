<%-- 
    Document   : mensaje
    Created on : 05-dic-2015, 12:03:53
    Author     : GerlinOTorresS
--%>

<%@page import="com.kometsales.clientes.dao.entidades.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mensaje Accion</title>
    </head>
    <body>
        <jsp:include page="menuOpciones.jsp" flush="true"></jsp:include>
        <%
            Cliente cliente = (Cliente) request.getAttribute("entidad");
            String tipoMsn = (String) request.getAttribute("tipoMsn");
            String msn = (String) request.getAttribute("msn");
        %>
        <h1>Resultado [<%=tipoMsn%>]</h1>
        <%=msn%>
    </body>
</html>
