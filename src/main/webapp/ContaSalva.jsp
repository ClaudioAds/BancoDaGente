<%-- 
    Document   : ContaSalva
    Created on : 11/08/2016, 04:11:25
    Author     : claudio
--%>

<%@page import="br.com.pirassununga.projetosites.factory.DaoFactoryBD"%>
<%@page import="br.com.pirassununga.projetosites.interfaces.ContaIf"%>
<%@page import="br.com.pirassununga.projetosites.factory.DaoFactoryIf"%>
<%@page import="br.com.pirassununga.projetosites.value.Conta"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pagina Salvar cadastro contas</title>
    </head>
    <body>
        <jsp:include page="cabecalho.jsp"></jsp:include>
       <% 
        String cnumero= request.getParameter("numero");
        String cdata= request.getParameter("data");
        
        
        Conta conta=new Conta();
        DaoFactoryIf fabrica = new DaoFactoryBD();
        ContaIf contaDao= fabrica.gerarDaoConta();
        conta.setNumero(cnumero);
        conta.setDataAbertura(cdata);
        contaDao.adicionar(conta);
        
         
        %>
        <h1>conta inserida com sucesso </h1>
        <a href="home.jsp">Voltar para a home de administrador</a>
    </body>
</html>
