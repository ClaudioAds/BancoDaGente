<%-- 
    Document   : listaUsuarios
    Created on : 01/08/2016, 19:45:38
    Author     : Joseph
--%>

<%@page import="br.com.pirassununga.projetosites.value.Usuario"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <jsp:include page="cabecalho.jsp"></jsp:include>
            <table class="table table-striped">
                <tr>
                    <th>Id</th>
                    <th>nome</th>
                    <th>email</th>
                    <th>cpf</th>
                    <th>rg</th>
                    <th>tipo</th>
                    <th>nascimento</th>
                    <th>Endereco</th>
                    <th>Excluir</th>
                </tr>
            <%
                List<Usuario> listaResultado = (List<Usuario>) request.getAttribute("lista");
                for (Usuario u : listaResultado) {
            %>
            <tr>          
                <td> <%= u.getId()%> </td>
                <td><%= u.getNome()%></td>
                <td><%= u.getEmail()%></td>
                <td><%= u.getCpf()%></td>
                <td><%= u.getRg()%></td>
                <td><%= u.getTipo()%></td>
                <td><%= u.getDataNasc()%></td>
                <td><%= u.getEndereco()%></td>
                <td><a href="ControladorUsuarios?acao=deletar&id=<%= u.getId()%>">deletar</a></td>
            </tr>
            <%
                }
            %>
        </table>

        <!--Construindo o Rodapé-->
        <footer class="container-fluid text-center navbar-inverse" id="rodape" >
            <p href="index.html"><h3>Banco da Gente &copy;</h3></p>
        </footer>
        <style>
            #rodape{
                position: absolute;
                font-size: large;
                color: chartreuse;
                bottom: 0;
                width: 100%
            }
        </style>
    </body>
</html>
