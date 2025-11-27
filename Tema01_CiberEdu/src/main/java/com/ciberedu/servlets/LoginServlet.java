package com.ciberedu.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

// 1. La anotación define la URL. Cuando el formulario envíe a "login", llega aquí
@WebServlet(name = "LoginServlet", urlPatterns = {"/login"})
public class LoginServlet extends HttpServlet{

    // 2. Usamos doPost porque el formulario del login.jsp usa method="post"
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        // 3. Recibimos los datos del formulario (los "name" de los inputs HTML)
        String usuario = req.getParameter("usuario");
        String clave = req.getParameter("password");

        // 4. Logica de Validacion (Simulada por ahora, Tema 3 sera con Base de Datos)
        if("admin".equals(usuario) && "123456".equals(clave)){

            // EXITO: Redirigimos al Dashboard
            // Enviamos un atributo "nombreUsuario" para mostrarlo en la bienvenida
            req.getSession().setAttribute("usuarioLogueado", usuario);
            resp.sendRedirect("dashboard.jsp");
        } else {

            // ERROR: Regresamos al Login con un mensaje
            // Usamos setAttribute para pasar el mensaje de error al JSP
            req.setAttribute("error", "Credenciales incorrectas. Intente de nuevo.");
            // forward matiene la peticion (es diferente a redirect)
            req.getRequestDispatcher("login.jsp").forward(req,resp);
        }
    }
}
