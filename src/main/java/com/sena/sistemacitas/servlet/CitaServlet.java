package com.sena.sistemacitas.servlet;

import com.sena.sistemacitas.servlet.ConexionBD;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CitaServlet")
public class CitaServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");

        String nombre = request.getParameter("nombre");
        String documento = request.getParameter("documento");
        String fecha = request.getParameter("fecha");
        String hora = request.getParameter("hora");

        try {

            ConexionBD conexionBD = new ConexionBD();
            Connection conexion = conexionBD.conectar();

            String sql = "INSERT INTO citas(nombre, documento, fecha, hora) VALUES(?,?,?,?)";

            PreparedStatement ps = conexion.prepareStatement(sql);

            ps.setString(1, nombre);
            ps.setString(2, documento);
            ps.setString(3, fecha);
            ps.setString(4, hora);

            ps.executeUpdate();

            response.getWriter().println("<h1>Cita guardada correctamente en MySQL</h1>");

        } catch (Exception e) {

            response.getWriter().println("Error: " + e);

        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        processRequest(request, response);
    }
}