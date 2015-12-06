<%-- 
    Document   : listarClientes
    Created on : 05-dic-2015, 12:18:30
    Author     : GerlinOTorresS
--%>

<%@page import="java.util.List"%>
<%@page import="com.kometsales.clientes.dao.entidades.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <title>Listado Clientes</title>
        <meta name="generator" content="Bootply" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <link href="/Clientes/activos/css/bootstrap.min.css" rel="stylesheet">
        <script src="/Clientes/activos/js/jquery.min.js"></script>
        <script src="/Clientes/activos/js/bootstrap.min.js"></script>
    </head>
    <body>
        <jsp:include page="menuOpciones.jsp" flush="true"></jsp:include>


        <%
            List<Cliente> entidades = (List) request.getAttribute("entidades");
            if (!entidades.isEmpty()) {
        %>
        <div style="padding: 5% 5% 5% 5%">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">LISTADO DE CLIENTES</h3>
                </div>
                <div class="panel-body">
                    <table class="table table-hover">
                        <tr>
                            <th>ID</th><th>Cedula</th><th>Nombre</th><th>Gestión</th>
                        </tr>
                        <%
                            for (Cliente cliente : entidades) {
                        %>
                        <tr>
                            <td><%=cliente.getId()%></td>
                            <td><%=cliente.getCedula()%></td>
                            <td><%=cliente.getNombre()%></td>
                            <td>
                                <div class="btn-toolbar" role="toolbar">
                                    <div class="btn-group">
                                        <a href="ConsultarParaModificarCliente?id=<%=cliente.getId()%>" class="btn btn-default">
                                            <span class="glyphicon glyphicon-pencil"></span>
                                        </a>

                                        <a href="ConsultarParaEliminarCliente?id=<%=cliente.getId()%>" class="btn btn-default">
                                            <span class="glyphicon glyphicon-trash"></span>
                                        </a>

                                        <a href="consultarCliente?id=<%=cliente.getId()%>" class="btn btn-default" data-toggle="modal" data-target="#myModal<%=cliente.getId()%>">
                                            <span class="glyphicon glyphicon-eye-open"></span>
                                        </a>
                                    </div>
                                </div>

                            </td>
                        </tr>
                        <!-- Modal -->
        <div class="modal fade" id="myModal<%=cliente.getId()%>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">Detalle Cliente</h4>
                    </div>
                    <div class="modal-body">
                        <blockquote>
                            <p><strong>Id:</strong><%=cliente.getId()%></p>
                            <p><strong>Cedula:</strong><%=cliente.getCedula()%></p>
                            <p><strong>Nombre:</strong><%=cliente.getNombre()%></p>
                        </blockquote>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
                        <%
                            }
                        %>
                    </table>
                </div>
            </div>
        </div>
        <%
        } else {
        %>
        <div style="padding: 5% 5% 5% 5%">
            <div class="alert alert-warning">No existen Registros de Ningun Cliente.</div>
        </div>
        <%
            }
        %>
        
    </body>
</html>
