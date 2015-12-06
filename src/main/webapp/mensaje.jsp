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
        <meta http-equiv="content-type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <title>Mensaje Accion</title>
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
            String tipoMsn = (String) request.getAttribute("tipoMsn");
            String msn = (String) request.getAttribute("msn");
            String classMsn="";
            if(tipoMsn.equals("Error")){
                classMsn="alert alert-danger";
            }else{
                classMsn="alert alert-success";
            }
        %>
        <div style="padding: 5% 5% 5% 5%">
        <div class="<%=classMsn%>"><strong>¡<%=tipoMsn%>!</strong> <br><%=msn%></div>
        </div>
    </body>
</html>
