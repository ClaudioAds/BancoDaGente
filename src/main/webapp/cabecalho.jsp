<%-- 
    Document   : cabecalho
    Created on : 01/08/2016, 19:46:13
    Author     : Joseph
--%>
<%@page import="br.com.pirassununga.projetosites.value.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <title>Cabeçalho</title>
    </head>
    <body>
        <div id="container">
            <div class="menuTopo">
                <nav class="navbar navbar-inverse">
                    <div class="container-fluid">
                        <div class="navbar-header">
                            <a class="navbar-brand" href="#">Banco Da Gente</a>
                        </div>
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="home.jsp">Home</a></li>
                            <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Cadastros <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="cadastro.html">Cadastrar Usuarios</a></li>
                                    <li><a href="CadastroAgencia.html">Cadastrar Agencias</a></li>
                                    <li><a href="CadastroConta.html">cadastrar Contas</a></li>
                                </ul>
                            </li>                            
                            <li><a href="ControladorUsuarios?acao=listar">Listar Usuarios</a></li>
                            <li><a href="ControladorAgencias?acao=listar">Listar Agencias</a></li>

                        </ul>
                        
                        <% Usuario usuarioAutenticado = (Usuario) session.getAttribute("usuarioAutenticado");%> 
                        <ul class="nav navbar-nav navbar-right">
                            <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-user"></span><label><%= usuarioAutenticado.getNome()%></label></a>
                                <ul class="dropdown-menu">
                                    <li><a href="Logout">Sair</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
        </div>
    </body>
</html>
