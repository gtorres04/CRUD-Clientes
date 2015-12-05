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
        <title>Modificar</title>
    </head>
    <body>
        <h1>Modificar de Clientes</h1>
        <jsp:include page="menuOpciones.jsp" flush="true"></jsp:include>
        <%
        Cliente cliente=(Cliente)request.getAttribute("entidad");
        %>
        <form action="ModificarCliente" method="POST">
            <input type="hidden" name="id" value="<%=cliente.getId() %>"/>
            CEDULA:
            <input type="text" name="cedula" value="<%=cliente.getCedula() %>"/><br>
            NOMBRE:
            <input type="text" name="nombre" value="<%=cliente.getNombre() %>"/>
            <input type="submit" value="Guardar Modificación"/>
        </form>
    </body>
</html>
