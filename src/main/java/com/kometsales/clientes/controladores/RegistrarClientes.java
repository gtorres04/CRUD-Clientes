/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kometsales.clientes.controladores;

import com.kometsales.clientes.dao.entidades.Cliente;
import com.kometsales.clientes.servicios.bean.ClienteServicioImplementacion;
import com.kometsales.clientes.servicios.bean.IClienteServicio;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author GerlinOTorresS
 */
public class RegistrarClientes extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String cedula = request.getParameter("cedula");
        String nombre = request.getParameter("nombre");
        Cliente entidad = new Cliente();
        RequestDispatcher rd = request.getRequestDispatcher("mensaje.jsp");
        try {
            entidad.setCedula(Long.parseLong(cedula));
            entidad.setNombre(nombre);
            IClienteServicio clienteServicio = new ClienteServicioImplementacion();
            clienteServicio.registrar(entidad);
            request.setAttribute("entidad", entidad);
            request.setAttribute("tipoMsn", "Exito");
            request.setAttribute("msn", "Registro Exitoso");
        } catch (SQLException ex) {
            request.setAttribute("entidad", entidad);
            request.setAttribute("tipoMsn", "Error");
            request.setAttribute("msn", "Registro Fallido-->" + ex.getMessage());
            System.out.println("EXCEPTION AL MOMENTO DE REGISTRAR UN CLIENTE-->" + ex.getMessage());
        }catch (NumberFormatException ex) {
            request.setAttribute("tipoMsn", "Error");
            request.setAttribute("msn", "La Identificación Digitada No es Valida-->" + ex.getMessage());
        }
        rd.forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
