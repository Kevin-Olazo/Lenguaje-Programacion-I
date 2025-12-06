package com.ciberedu.servlets;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

// 1. ANOTACIÓN: Define que este Servlet responde a "/LoginServlet"
// El manual explica el ciclo de vida (init, service, destroy) en pág. 34 [cite: 1261-1269].
@WebServlet(name = "LoginServlet", urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {

    // 2. DOPOST: Para recibir datos sensibles (contraseñas) de forma segura
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        // 3. RECIBIR DATOS: Capturamos lo que el usuario escribió en los inputs
        String usuario = req.getParameter("usuario");
        String clave = req.getParameter("clave"); // Ojo: debe coincidir con el name="" de HTML

        // 4. LOGICA DEL NEGOCIO (Simulacion previa a MySQL)
        // En el Tema 3, aquí llamaremos a la base de datos MySQL.
        // Por ahora, validamos "en duro"
        if ("admin".equals(usuario) && "123456".equals("clave")) {

            // EXITO: Creamos sesion
            HttpSession session = req.getSession();
            session.setAttribute("usuarioLogueado", "Administrador (MySQL)");

            // Redirigimos al dashboard
            resp.sendRedirect("dashboard.jsp");
        } else {

            // ERROR: Mandamos un mensaje al JSP
            req.setAttribute("mensajeError", "Usuario o contraseña incorrectos");

            // Rgresamos al login
            req.getRequestDispatcher("login").forward(req,resp);
        }

    }
}
