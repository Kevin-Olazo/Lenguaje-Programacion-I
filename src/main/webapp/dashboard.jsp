<%--
  Created by IntelliJ IDEA.
  User: Kevin Olazo
  Date: 05/12/2025
  Time: 20:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<nav class="navbar navbar-dark bg-primary px-4">
    <span class="navbar-brand">Sistema Academico</span>
    <a href="login.jsp" class="btn btn-sm btn-light">Salir</a>
</nav>

<div class="container mt-5">
    <h1>Bienvenido al Sistema</h1>
    <p class="lead">Selecciona una opción</p>

    <div class="row">
        <div class="col-md-4">
            <div class="card p-3">
                <h5>Mis Cursos</h5>
                <button class="btn btn-info text-white mt-2">
                    Ver
                </button>
            </div>
        </div>
        <div class="col col-md-4">
            <div class="card p-3">
                <a href="registro.jsp" class="btn btn-success">Nuevo Alumno</a>
            </div>
        </div>

        <div class="col col-md-4">
            <div class="card p-3">
                <a href="ListadoServlet" class="btn btn-primary">Ver Lista de Alumnos</a>
            </div>
        </div>

    </div>

</div>

</body>
</html>
