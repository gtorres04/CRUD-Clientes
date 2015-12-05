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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Clientes</title>
    </head>
    <body>
        <jsp:include page="menuOpciones.jsp" flush="true"></jsp:include>
        <h1>Listado Clientes</h1>
        
            
            <%
                List<Cliente> entidades = (List) request.getAttribute("entidades");
                if (entidades != null) {
                    %>
                    <table>
            <tr>
                <th>ID</th><th>Cedula</th><th>Nombre</th><th>Gestion</th>
            </tr>
            <%
                    for (Cliente cliente : entidades) {
            %>
            <tr>
                <td><%=cliente.getId()%></td>
                <td><%=cliente.getCedula()%></td>
                <td><%=cliente.getNombre()%></td>
                <td>
                    <a href="ConsultarParaModificarCliente?id=<%=cliente.getId()%>">Editar</a>|
                    <a href="ConsultarParaEliminarCliente?id=<%=cliente.getId()%>">Eliminar</a>|
                    <a href="consultarCliente?id=<%=cliente.getId()%>">Ver</a>
                
                </td>
            </tr>
            <%
                }
                    %>
            </table>
            <%
            } else{
                    %>
            No existen Registros de Ningun Cliente.
            <%
                }
            %>
        
    </body>
</html>
