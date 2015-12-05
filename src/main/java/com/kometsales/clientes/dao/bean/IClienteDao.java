/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kometsales.clientes.dao.bean;

import com.kometsales.clientes.dao.entidades.Cliente;
import com.kometsales.clientes.dao.IDao;
import java.sql.SQLException;
/**
 *
 * @author GerlinOTorresS
 */
public interface IClienteDao extends IDao<Cliente>{
    public Cliente consultarClientePorCedula(Cliente entidad) throws SQLException;
}
