/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.pirassununga.projetosites.dao;

import br.com.pirassununga.projetosites.banco.ConexaoBD;
import br.com.pirassununga.projetosites.interfaces.ContaIf;
import br.com.pirassununga.projetosites.value.Conta;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author claudio
 */
public class ContaDao implements ContaIf {

    private ConexaoBD conex;
    Conta conta = new Conta();

    @Override
    public boolean adicionar(Conta conta) {
        boolean resultado = false;
        PreparedStatement pst = null;

        try {
            conex = new ConexaoBD();
            pst = conex.getConnection().prepareStatement("INSERT into conta(numero,data_abertura,saldo)"
                    + "VALUES (?,?,?)");

            pst.setString(1, conta.getNumero());
            pst.setString(2, conta.getDataAbertura());
            pst.setDouble(3, conta.getSaldo());

            if (pst.executeUpdate() > 0) {
                resultado = true;
                pst.close();
            }
        } catch (SQLException ex) {
           
        } catch (IOException | ClassNotFoundException ex) {
            Logger.getLogger(AgenciaDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        conex.desconecta();
        return resultado;
    }

    @Override
    public boolean excluir(Conta conta) {
        boolean resultado = false;
        PreparedStatement pst = null;
        try {
            conex = new ConexaoBD();
            pst = conex.getConnection().prepareStatement("DELETE FROM conta WHERE id=?");
            pst.setInt(1, conta.getId());
            if (pst.executeUpdate() > 0) {
                resultado = true;
                pst.close();
            }
        } catch (SQLException ex) {
            
        } catch (IOException | ClassNotFoundException ex) {
            Logger.getLogger(AgenciaDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        conex.desconecta();
        return resultado;
    }

    @Override
    public List<Conta> buscarTodos() {
        List<Conta> lista = new ArrayList<>();
        PreparedStatement pst = null;

        try {
            conex = new ConexaoBD();
            pst = conex.getConnection().prepareStatement("SELECT * FROM conta");
            ResultSet rs = pst.executeQuery();

            while (rs.next()) {
                Conta conta = new Conta();
                conta.setId(rs.getInt("id"));
                conta.setNumero(rs.getString("numero"));
                conta.setDataAbertura(rs.getString("data_abertura"));
                conta.setSaldo(rs.getDouble("saldo"));
                lista.add(conta);
            }
            rs.close();
            pst.close();
            conex.desconecta();
        } catch (SQLException | IOException | ClassNotFoundException ex) {
            Logger.getLogger(UsuarioDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return lista;
    }

}
