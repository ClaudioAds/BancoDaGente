/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.pirassununga.projetosites.actions;

import br.com.pirassununga.projetosites.factory.DaoFactoryBD;
import br.com.pirassununga.projetosites.factory.DaoFactoryIf;
import br.com.pirassununga.projetosites.interfaces.UsuarioDaoIf;
import br.com.pirassununga.projetosites.value.Usuario;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ControladorUsuarios extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Usuario usuario = new Usuario();
        String acao = request.getParameter("acao");
        DaoFactoryIf fabrica = new DaoFactoryBD();
        UsuarioDaoIf usuarioDao = fabrica.criaUsuarioDAO();

        if (acao != null && acao.equalsIgnoreCase("listar")) {
            List<Usuario> lista = usuarioDao.buscarTodos();

            request.setAttribute("lista", lista);
            RequestDispatcher saida = request.getRequestDispatcher("ListarUsuarios.jsp");
            saida.forward(request, response);
        } else if (acao != null && acao.equalsIgnoreCase("deletar")) {
            String id = request.getParameter("id");
            usuario.setId(Integer.parseInt(id));
            usuarioDao.excluir(usuario);
            response.sendRedirect("ControladorUsuarios?acao=listar");
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
