/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.pirassununga.projetosites.interfaces;

import br.com.pirassununga.projetosites.value.Conta;
import java.util.List;

/**
 *
 * @author claudio
 */
public interface ContaIf {
     public boolean adicionar(Conta conta);
    
    public boolean excluir(Conta conta);
    
    public List<Conta> buscarTodos();
}
