/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kometsales.clientes.dao;

import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author GerlinOTorresS
 */
public interface IDao<T> {
    void registrar(T entidad)throws SQLException;
    void modificar(T entidad)throws SQLException;
    void eliminar(T entidad)throws SQLException;
    List<T> listar()throws SQLException;
}
