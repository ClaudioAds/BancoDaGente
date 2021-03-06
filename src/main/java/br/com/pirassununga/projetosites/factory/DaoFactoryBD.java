/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.pirassununga.projetosites.factory;

import br.com.pirassununga.projetosites.dao.AgenciaDao;
import br.com.pirassununga.projetosites.dao.ContaDao;
import br.com.pirassununga.projetosites.dao.UsuarioDao;
import br.com.pirassununga.projetosites.interfaces.AgenciaIf;
import br.com.pirassununga.projetosites.interfaces.ContaIf;
import br.com.pirassununga.projetosites.interfaces.UsuarioDaoIf;

/**
 *
 * @author Joseph
 */
public class DaoFactoryBD implements DaoFactoryIf{
    
     @Override
    public UsuarioDaoIf criaUsuarioDAO() {
        return new UsuarioDao();
    }
    
      @Override
    public AgenciaIf gerarDaoAgencia() {
      return new AgenciaDao();   
    }
    
     @Override
    public ContaIf gerarDaoConta(){
        return new ContaDao();
    }
}
