<%-- 
    Document   : registrar
    Created on : 05-dic-2015, 9:44:44
    Author     : GerlinOTorresS
--%>

<%@page import="com.kometsales.clientes.dao.entidades.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar</title>
    </head>
    <body>
        <jsp:include page="menuOpciones.jsp" flush="true"></jsp:include>
        <h1>Eliminar de Clientes</h1>
        <%
        Cliente cliente=(Cliente)request.getAttribute("entidad");
        %>
        <form action="EliminarCliente" method="POST">
            <input type="hidden" name="id" value="<%=cliente.getId() %>"/>
            CEDULA:
            <input disabled="true" type="text" name="cedula" value="<%=cliente.getCedula() %>"/><br>
            NOMBRE:
            <input disabled="true" type="text" name="nombre" value="<%=cliente.getNombre() %>"/>
            <input type="submit" value="Eliminar Definitivamente"/>
        </form>
    </body>
</html>
