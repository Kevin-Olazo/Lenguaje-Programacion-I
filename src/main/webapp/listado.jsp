<%@ page import="com.ciberedu.entidades.Estudiante" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Kevin Olazo
  Date: 09/12/2025
  Time: 15:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Listado de Alumnos</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

<div class="container mt-5">
    <h2 class="mb-4 text-center text-primary">Listado de Estudiantes</h2>

    <div class="card shadow">
        <div class="card-body">
            <div class="mb-3 text-end">
                <a href="registro.jsp" class="btn btn-success">Nuevo alumno</a>
                <a href="dashboard.jsp" class="btn btn-secondary">Volver</a>
            </div>

            <table class="table table-striped table-hover table-bordered">
                <thead class="table-dark">
                <tr>
                    <th>ID</th>
                    <th>Nombre Completo</th>
                    <th>DNI</th>
                    <th>Edad</th>
                    <th>Carrera</th>
                    <th>Acciones</th>
                </tr>
                </thead>
                <tbody>
                <%-- CODIGO JAVA INCRUSTADO (SCRIPTLET) --%>
                <%
                    // Recuperamos la lista que envío el Servlet
                    List<Estudiante> lista = (List<Estudiante>) request.getAttribute("listaEstudiantes");

                    if (lista != null) {
                        for (Estudiante e : lista) {

                %>
                <tr>
                    <td><%= e.getId()%>
                    </td>
                    <td><%= e.getNombre()%>
                    </td>
                    <td><%= e.getDni()%>
                    </td>
                    <td><%= e.getEdad()%>
                    </td>
                    <td><%= e.getCarrera()%>
                    </td>
                    <td>
                        <button class="btn btn-sm btn-warning">Editar</button>
                        <button class="btn btn-sm btn-danger">Eliminar</button>
                    </td>
                </tr>
                <% }
                } else { %>
                <tr>
                    <td colspan="6" class="text-center">No hay alumnos registrados</td>
                </tr>
                <% }%>
                </tbody>
            </table>
        </div>
    </div>
</div>

</body>
</html>
