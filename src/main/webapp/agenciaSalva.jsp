<%-- 
    Document   : salvoComSucesso
    Created on : 01/08/2016, 19:56:41
    Author     : Joseph
--%>

<%@page import="br.com.pirassununga.projetosites.interfaces.AgenciaIf"%>
<%@page import="br.com.pirassununga.projetosites.value.Agencia"%>
<%@page import="br.com.pirassununga.projetosites.interfaces.UsuarioDaoIf"%>
<%@page import="br.com.pirassununga.projetosites.factory.DaoFactoryBD"%>
<%@page import="br.com.pirassununga.projetosites.factory.DaoFactoryIf"%>
<%@page import="br.com.pirassununga.projetosites.value.Endereco"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="br.com.pirassununga.projetosites.value.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pagina Salvar cadastro Agencias</title>
    </head>
    <body>
        <jsp:include page="cabecalho.jsp"></jsp:include>
       <% 
        String anome= request.getParameter("name");
        String numeroAg= request.getParameter("numero-ag");
        String atelefone= request.getParameter("telefone");
        String arua= request.getParameter("rua");
        String acidade= request.getParameter("cidade");
        String auf= request.getParameter("uf");
        String anumero= request.getParameter("numero");
        
        Agencia agencia=new Agencia();
        Endereco endereco= new Endereco();
        DaoFactoryIf fabrica = new DaoFactoryBD();
        AgenciaIf agenciaDao= fabrica.gerarDaoAgencia();
        agencia.setNome(anome);
        agencia.setNumero(numeroAg);
        agencia.setTelefone(atelefone);
        endereco.setRua(arua);
        endereco.setCidade(acidade);
        endereco.setUf(auf);
        endereco.setNumero(Integer.parseInt(anumero));
        agencia.setEndereco(endereco);
        agenciaDao.adicionar(agencia);
         
        %>
        <h1>Agencia inserida com sucesso</h1>
        <a href="home.jsp">Voltar para a home de administrador</a>
    </body>
</html>
