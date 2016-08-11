<%-- 
    Document   : ListaAgencia
    Created on : 11/08/2016, 01:24:22
    Author     : claudio
--%>

<%@page import="br.com.pirassununga.projetosites.value.Agencia"%>
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
                    <th>Endereco</th>
                    <th>Excluir</th>
                </tr>
            <%
                List<Agencia> listaResultado = (List<Agencia>) request.getAttribute("lista");
                for (Agencia a : listaResultado) {
            %>
            <tr>          
                <td> <%= a.getId()%> </td>
                <td><%= a.getNome()%></td>
                <td><%= a.getEndereco()%></td>
                <td><a href="ControladorAgencias?acao=deletar&id=<%= a.getId()%>">deletar</a></td>
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
