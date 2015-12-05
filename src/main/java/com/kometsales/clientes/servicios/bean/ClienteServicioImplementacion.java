/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kometsales.clientes.servicios.bean;

import com.kometsales.clientes.dao.bean.ClienteDaoImplementacion;
import com.kometsales.clientes.dao.bean.IClienteDao;
import com.kometsales.clientes.dao.entidades.Cliente;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author GerlinOTorresS
 */
public class ClienteServicioImplementacion implements IClienteServicio{
    IClienteDao clienteDao;

    public ClienteServicioImplementacion(IClienteDao clienteDao) {
        this.clienteDao = clienteDao;
    }
    public ClienteServicioImplementacion() {
        this.clienteDao = new ClienteDaoImplementacion();
    }
    public void setClienteDao(IClienteDao clienteDao) {
        this.clienteDao = clienteDao;
    }
    @Override
    public void registrar(Cliente entidad) throws SQLException {
        clienteDao.registrar(entidad);
    }

    @Override
    public void modificar(Cliente entidad) throws SQLException {
        clienteDao.modificar(entidad);
    }

    @Override
    public void eliminar(Cliente entidad) throws SQLException {
        clienteDao.eliminar(entidad);
    }

    @Override
    public List<Cliente> listar() throws SQLException {
        return clienteDao.listar();
    }

    @Override
    public Cliente consultarClientePorCedula(Cliente entidad) throws SQLException {
        return clienteDao.consultarClientePorCedula(entidad);
    }
    
}
