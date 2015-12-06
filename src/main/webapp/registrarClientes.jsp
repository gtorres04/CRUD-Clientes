<%-- 
    Document   : registrar
    Created on : 05-dic-2015, 9:44:44
    Author     : GerlinOTorresS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <title>Registrar</title>
        <meta name="generator" content="Bootply" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <link href="/Clientes/activos/css/bootstrap.min.css" rel="stylesheet">
        <script src="/Clientes/activos/js/jquery.min.js"></script>
        <script src="/Clientes/activos/js/bootstrap.min.js"></script>
    </head>
    <body>
        <jsp:include page="menuOpciones.jsp" flush="true"></jsp:include>

        <div style="padding: 5% 5% 5% 5%">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">REGISTRO DE CLIENTES</h3>
                </div>
                <div class="panel-body">
                    <form action="RegistrarClientes" method="POST" role="form">
                        <div class="form-group">
                            <label for="cedula">Cédula</label>
                            <input maxlength="20" name="cedula" type="number" class="form-control" id="cedula"
                                   placeholder="Digite su Cédula">
                        </div>
                        <div class="form-group">
                            <label for="nombre">Nombre</label>
                            <input max="99999999999999999999" maxlength="100" type="text" class="form-control" id="nombre" 
                                   placeholder="Digite su Nombre" name="nombre">
                        </div>
                        <button type="submit" class="btn btn-default">Registrar</button>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
