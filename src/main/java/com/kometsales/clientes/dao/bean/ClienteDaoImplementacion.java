/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kometsales.clientes.dao.bean;

import com.kometsales.clientes.dao.entidades.Cliente;
import com.kometsales.clientes.util.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author GerlinOTorresS
 */
public class ClienteDaoImplementacion implements IClienteDao {

    @Override
    public Cliente consultarClientePorCedula(Cliente entidad) throws SQLException {
        Connection conexion = Conexion.getConexion();
        ResultSet rs=null;
        try {
            PreparedStatement pst = conexion.prepareStatement("SELECT * FROM clientes WHERE id=?");
            pst.setLong(1, entidad.getId());
            pst.execute();
            rs = pst.getResultSet();
            if (rs != null) {
                while (rs.next()) {
                    Long id=(Long)rs.getLong("id");
                    long cedula=rs.getLong("cedula");
                    String nombre=rs.getString("nombre");
                    entidad.setCedula(cedula);
                    entidad.setNombre(nombre);
                }
            }else{
                entidad=null;
            }
        } finally {
            conexion.close();
        }
        return entidad;
    }

    @Override
    public void registrar(Cliente entidad) throws SQLException {
        Connection conexion = Conexion.getConexion();
        try {
            PreparedStatement pst = conexion.prepareStatement("INSERT INTO clientes (cedula,nombre) VALUES(?,?)");
            pst.setLong(1, entidad.getCedula());
            pst.setString(2, entidad.getNombre());
            int codeResult = pst.executeUpdate();
        } finally {
            conexion.close();
        }
    }

    @Override
    public void modificar(Cliente entidad) throws SQLException {
        Connection conexion = Conexion.getConexion();
        try {
            PreparedStatement pst = conexion.prepareStatement("UPDATE clientes SET cedula = ?, nombre = ? WHERE id = ?");
            pst.setLong(1, entidad.getCedula());
            pst.setString(2, entidad.getNombre());
            pst.setLong(3, entidad.getId());
            int codeResult = pst.executeUpdate();
        } finally {
            conexion.close();
        }
    }

    @Override
    public void eliminar(Cliente entidad) throws SQLException {
        Connection conexion = Conexion.getConexion();
        try {
            PreparedStatement pst = conexion.prepareStatement("DELETE FROM clientes WHERE id=?");
            pst.setLong(1, entidad.getId());
            int codeResult = pst.executeUpdate();
        } finally {
            conexion.close();
        }
    }

    @Override
    public List<Cliente> listar() throws SQLException {
        Connection conexion = Conexion.getConexion();
        ResultSet rs = null;
        List<Cliente> entidades = null;
        try {
            PreparedStatement pst = conexion.prepareStatement("SELECT * FROM clientes");
            pst.execute();
            rs = pst.getResultSet();
            if (rs != null) {
                entidades = new ArrayList<Cliente>();
                while (rs.next()) {
                    Long id=(Long)rs.getLong("id");
                    long cedula=rs.getLong("cedula");
                    String nombre=rs.getString("nombre");
                    Cliente cliente=new Cliente();
                    cliente.setId(id);
                    cliente.setCedula(cedula);
                    cliente.setNombre(nombre);
                    entidades.add(cliente);
                }
            }
        } finally {
            conexion.close();
        }
        return entidades;
    }

}
