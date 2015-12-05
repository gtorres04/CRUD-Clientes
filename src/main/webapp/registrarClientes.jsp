<%-- 
    Document   : registrar
    Created on : 05-dic-2015, 9:44:44
    Author     : GerlinOTorresS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrar</title>
    </head>
    <body>
        <jsp:include page="menuOpciones.jsp" flush="true"></jsp:include>
        <h1>Registro de Clientes</h1>
        <form action="RegistrarClientes" method="POST">
            CEDULA:
            <input type="text" name="cedula"/><br>
            NOMBRE:
            <input type="text" name="nombre"/>
            <input type="submit" value="Registrar"/>
        </form>
    </body>
</html>
