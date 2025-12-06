package com.ciberedu.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "RegistroServlet", urlPatterns = {"/RegistroServlet"})
public class RegistroServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8"); // Para las tildes

        // 1. Recibir
        String nombre = req.getParameter("nombre");
        String dni = req.getParameter("dni");
        String edad = req.getParameter("edad");
        String carrera = req.getParameter("carrera");

        // 2. Simular proceso MySQL
        System.out.println("--- INTENTO DE REGISTRO EN MYSQL ---");
        System.out.println("Datos: " + nombre + " | " + dni + " | " + carrera);

        // 3. Validar en Servidor (Respaldo)
        if (nombre != null && dni != null && dni.length() == 8) {
            // ÉXITO
            req.setAttribute("mensajeExito", "¡Alumno " + nombre + " registrado correctamente!");
        } else {
            // ERROR (Aunque JQuery debería haberlo evitado)
            req.setAttribute("mensajeExito", "Error: Datos inválidos en el servidor.");
        }

        // 4. Responder
        req.getRequestDispatcher("registro.jsp").forward(req, resp);
    }
}