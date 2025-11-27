package com.ciberedu.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "StudentServlet", urlPatterns = {"/registro-estudiante"})
public class StudentServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 1. Recibir datos (UTF-8 para tildes)
        req.setCharacterEncoding("UTF-8");

        String nombre = req.getParameter("nombre");
        String dni = req.getParameter("dni");
        String carrera = req.getParameter("carrera");

        // 2. Validacion en Servidor (Doble seguridad: Cliente + Servidor)
        // Si alguien se salta el JS, esto lo atrapa
        if (dni == null || dni.length() != 8) {
            req.setAttribute("error", "Error grave: DNI invalido recibido en el servidor.");
            req.getRequestDispatcher("registro_estudiante.jsp").forward(req, resp);
            return;
        }

        // 3. Simulación de Guardado
        System.out.println(">>> GUARDANDO EN BD: " + nombre + " - " + dni + " - " + carrera);

        // 4. Respuesta de éxito
        // Usamos una redirección con un parámetro para mostrar un aviso
        resp.sendRedirect("dashboard.jsp?registro=exito");
    }
}
