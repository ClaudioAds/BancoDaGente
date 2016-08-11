/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.pirassununga.projetosites.value;

import javax.websocket.OnClose;

/**
 *
 * @author claudio
 */
public class Conta {
    private int id;
    private String numero;
    private Double saldo;
    private String dataAbertura;

    public Conta() {
        this.saldo= new Double(0);
    }
    
    
            
    public String getNumero() {
        return numero;
    }

    public void setNumero(String numero) {
        this.numero = numero;
    }

    public Double getSaldo() {
        return saldo;
    }

    public void setSaldo(Double saldo) {
        this.saldo = saldo;
    }

    public String getDataAbertura() {
        return dataAbertura;
    }

    public void setDataAbertura(String dataAbertura) {
        this.dataAbertura = dataAbertura;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return "Conta{" + "id=" + id + ", numero=" + numero + ", saldo=" + saldo + ", dataAbertura=" + dataAbertura + '}';
    }
    

    
    
}
