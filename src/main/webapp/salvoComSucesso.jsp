<%-- 
    Document   : salvoComSucesso
    Created on : 01/08/2016, 19:56:41
    Author     : Joseph
--%>

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
        <title>Pagina Salvar cadastro clientes</title>
    </head>
    <body>
        <jsp:include page="cabecalho.jsp"></jsp:include>
       <% 
        String snome= request.getParameter("nome");
        String semail= request.getParameter("email");
        String ssenha= request.getParameter("senha");
        String scpf= request.getParameter("cpf");
        String srg= request.getParameter("rg");
        String stipo=request.getParameter("tipo");
        String snascimento= request.getParameter("data-nascimento");
        String srua= request.getParameter("rua");
        String snumero= request.getParameter("numero");
        String scidade= request.getParameter("cidade");
        String suf= request.getParameter("uf");
        
        Usuario usuario=new Usuario();
        Endereco endereco= new Endereco();
        DaoFactoryIf fabrica = new DaoFactoryBD();
        UsuarioDaoIf usuarioDao= fabrica.criaUsuarioDAO();
        usuario.setCpf(scpf);
        usuario.setEmail(semail);
        usuario.setSenha(ssenha);
        usuario.setNome(snome);
        usuario.setRg(srg);
        usuario.setDataNasc(snascimento);
        usuario.setTipo(stipo);
        endereco.setRua(srua);
        endereco.setCidade(scidade);
        endereco.setUf(suf);
        endereco.setNumero(Integer.parseInt(snumero));
        usuario.setEndereco(endereco);
        usuarioDao.adicionar(usuario);
         
        %>
        <h1>Usuario inserido com sucesso</h1>
        <a href="home.jsp">Voltar para a home de administrador</a>
    </body>
</html>
