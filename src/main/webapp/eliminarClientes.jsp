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
        <meta http-equiv="content-type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <title>EliminarCliente</title>
        <meta name="generator" content="Bootply" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <link href="/Clientes/activos/css/bootstrap.min.css" rel="stylesheet">
        <script src="/Clientes/activos/js/jquery.min.js"></script>
        <script src="/Clientes/activos/js/bootstrap.min.js"></script>
    </head>
    <body>
        <jsp:include page="menuOpciones.jsp" flush="true"></jsp:include>
        <%
            Cliente cliente = (Cliente) request.getAttribute("entidad");
        %>

        <div style="padding: 5% 5% 5% 5%">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">ELIMINACIÓN DE CLIENTES</h3>
                </div>
                <div class="panel-body">
                    <form action="EliminarCliente" method="POST">
                    <dl class="dl-horizontal">
                        <dt>Id</dt>
                        <dd><%=cliente.getId()%></dd>
                        <dt>Cédula</dt>
                        <dd><%=cliente.getCedula()%></dd>
                        <dt>Nombre</dt>
                        <dd><%=cliente.getNombre()%></dd>
                    </dl>
                    <input type="hidden" name="id" value="<%=cliente.getId()%>"/>
            <input type="hidden" name="cedula" value="<%=cliente.getCedula()%>"/>
            <input type="hidden" name="nombre" value="<%=cliente.getNombre()%>"/>
            <input type="submit" class="btn btn-default" value="Eliminar Definitivamente"/>
                    </form>
                </div>
            </div>
    </body>
</html>
