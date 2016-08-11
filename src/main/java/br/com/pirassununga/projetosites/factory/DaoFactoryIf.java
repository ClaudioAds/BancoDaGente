/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.pirassununga.projetosites.factory;

import br.com.pirassununga.projetosites.interfaces.AgenciaIf;
import br.com.pirassununga.projetosites.interfaces.ContaIf;
import br.com.pirassununga.projetosites.interfaces.UsuarioDaoIf;

/**
 *
 * @author Joseph
 */
public interface DaoFactoryIf {
    
    public UsuarioDaoIf criaUsuarioDAO();
    
    public AgenciaIf gerarDaoAgencia();
    
    public ContaIf gerarDaoConta();
    
}
