/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.pirassununga.projetosites.actions;

import br.com.pirassununga.projetosites.factory.DaoFactoryBD;
import br.com.pirassununga.projetosites.factory.DaoFactoryIf;
import br.com.pirassununga.projetosites.interfaces.AgenciaIf;
import br.com.pirassununga.projetosites.value.Agencia;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author claudio
 */
public class ControladorAgencias extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Agencia agencia = new Agencia();
        String acao = request.getParameter("acao");
        DaoFactoryIf fabrica = new DaoFactoryBD();
        AgenciaIf agenciaDao = fabrica.gerarDaoAgencia();

        if (acao != null && acao.equalsIgnoreCase("listar")) {
            List<Agencia> lista = agenciaDao.buscarTodos();

            request.setAttribute("lista", lista);
            RequestDispatcher saida = request.getRequestDispatcher("ListarAgencias.jsp");
            saida.forward(request, response);
        } else if (acao != null && acao.equalsIgnoreCase("deletar")) {
            String id = request.getParameter("id");
            agencia.setId(Integer.parseInt(id));
            agenciaDao.excluir(agencia);
            response.sendRedirect("ControladorAgencias?acao=listar");
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
