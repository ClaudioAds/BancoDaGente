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
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Joseph
 */
public class Login extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                    
        Usuario usuario=new Usuario();
        DaoFactoryIf fabrica = new DaoFactoryBD();
        UsuarioDaoIf usuarioDao = fabrica.criaUsuarioDAO();
        
        String email = request.getParameter("email");
        String senha = request.getParameter("senha");
         
        usuario.setEmail(email);
        usuario.setSenha(senha);
        Usuario usuarioAutenticado= usuarioDao.autenticacao(usuario);
        if (usuarioAutenticado != null) {
            HttpSession sessao=request.getSession();
            sessao.setAttribute("usuarioAutenticado",usuarioAutenticado);
            request.getRequestDispatcher("home.jsp").forward(request, response);
        } else {
            response.sendRedirect("erroLogin.jsp");
        }
    }
}
