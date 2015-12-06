<%-- 
    Document   : menuOpciones
    Created on : 05-dic-2015, 11:01:52
    Author     : GerlinOTorresS
--%>
<nav class="navbar navbar-default" role="navigation">
  <!-- El logotipo y el icono que despliega el menú se agrupan
       para mostrarlos mejor en los dispositivos móviles -->
  <div class="navbar-header">
    <button type="button" class="navbar-toggle" data-toggle="collapse"
            data-target=".navbar-ex1-collapse">
      <span class="sr-only">Desplegar navegación</span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>
    <a class="navbar-brand" href="#">CRUD - Clientes</a>
  </div>
 
  <!-- Agrupar los enlaces de navegación, los formularios y cualquier
       otro elemento que se pueda ocultar al minimizar la barra -->
  <div class="collapse navbar-collapse navbar-ex1-collapse">
    <ul class="nav navbar-nav">
      <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
          MENU<b class="caret"></b>
        </a>
        <ul class="dropdown-menu">
          <li><a href="registrarClientes.jsp">Registrar Cliente</a></li>
          <li><a href="ListarClientes">Listar Cliente</a></li>
        </ul>
      </li>
    </ul>
  </div>
</nav>