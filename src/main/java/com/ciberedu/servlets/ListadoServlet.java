package com.ciberedu.servlets;

import com.ciberedu.entidades.Estudiante;
import com.ciberedu.modelos.EstudianteModel;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "ListadoServlet", urlPatterns = {"/ListadoServlet"})
public class ListadoServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 1. Instanciar el modelo
        EstudianteModel modelo = new EstudianteModel();

        // 2. Obtener la lista de la Base de Datos
        List<Estudiante> lista = modelo.listarEstudiantes();

        // 3. Guardar la lista en el request para enviarla al JSP
        req.setAttribute("listaEstudiantes", lista);

        // 4. Ir a la pagina de listado
        req.getRequestDispatcher("listado.jsp").forward(req,resp);
    }
}
