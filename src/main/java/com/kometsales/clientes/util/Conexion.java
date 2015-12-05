/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kometsales.clientes.util;

import java.sql.Connection;
import java.sql.SQLException;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

/**
 *
 * @author GerlinOTorresS
 */
public class Conexion {

    public static Connection getConexion() throws SQLException {
        InitialContext ic = null;
        DataSource ds = null;
        try {
            ic = new InitialContext();
            //en esta parte es donde ponemos el Nombre
            //de JNDI para que traiga el datasource
            ds = (DataSource) ic.lookup("java:/comp/env/jdbc/TestDB");
        } catch (NamingException ex) {
            System.out.println("ERROR DATASOURCE-->"+ex.getMessage());
        }
        return ds.getConnection();
    }
    
}
