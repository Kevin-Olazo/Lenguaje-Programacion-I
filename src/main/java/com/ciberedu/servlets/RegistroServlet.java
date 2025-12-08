package com.ciberedu.servlets;

import com.ciberedu.util.MySqlConexion;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet(name = "RegistroServlet", urlPatterns = {"/RegistroServlet"})
public class RegistroServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8"); // Para las tildes

        // 1. Recibir datos del formulario
        String nombre = req.getParameter("nombre");
        String dni = req.getParameter("dni");
        // Convertimos edad a entero (con proteccion basica)
        int edad = 0;
        try {
            edad = Integer.parseInt(req.getParameter("edad"));
        } catch (NumberFormatException e) {
            edad = 0; // Valor por defecto si falla
        }
        String carrera = req.getParameter("carrera");

        String mensaje;
        Connection con = null;
        PreparedStatement ps = null;

        try {
            // 2. Obtener conexion
            con = MySqlConexion.getConexion();

            // 3. Preparar la sentencia SQL
            // Los signos de interrogación (?) son parámetros seguros
            String sql = "INSERT INTO estudiantes (nombre, dni, edad, carrera) VALUES(?, ?, ?, ?)";

            ps = con.prepareStatement(sql);
            ps.setString(1, nombre);
            ps.setString(2, dni);
            ps.setInt(3, edad);
            ps.setString(4, carrera);

            // 4. Ejecutar la inserción
            int filasAfectadas = ps.executeUpdate();

            if (filasAfectadas > 0) {
                mensaje = "¡Éxito! El alumno " + nombre + " fue registrado en la Base de Datos";
            } else {
                mensaje = "Error: No se pudo guardar el registro.";
            }

        } catch (SQLException e){
            mensaje = "Error de Base de Datos" + e.getMessage();
            e.printStackTrace();
        } finally {
            try {
                if (ps != null) ps.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        // 6. Responder al JSP
        req.setAttribute("mensajeExito", mensaje);
        req.getRequestDispatcher("registro.jsp").forward(req,resp);
    }
}