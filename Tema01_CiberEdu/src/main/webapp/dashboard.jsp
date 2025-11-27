<%--
  Created by IntelliJ IDEA.
  User: Kevin Olazo
  Date: 26/11/2025
  Time: 20:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="es">
<head>
    <title>Dashboard - CiberEdu</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
</head>
<body>

<nav class="navbar navbar-dark bg-dark mb-4">
    <div class="container">
        <a class="navbar-brand" href="#">CiberEdu</a>
        <div class="text-white">
            <span class="me-3">Bienvenido, <%=session.getAttribute("usuarioLogueado")%></span>
            <a href="login.jsp" class="btn btn-outline-light btn-sm">Salir</a>
        </div>
    </div>
</nav>

<div class="container">
    <div class="row text-center">
        <div class="col-md-4 mb-3">
            <div class="card h-100">
                <div class="card-body">
                    <h5>Mis Cursos</h5>
                    <p>Consulta tus notas.</p>
                    <button class="btn btn-primary">Ver</button>
                </div>
            </div>
        </div>
        <div class="col-md-4 mb-3">
            <div class="card h-100">
                <div class="card-body">
                    <h5>Matricula</h5>
                    <p>Proceso 2025-I</p>
                    <button class="btn btn-success">Iniciar</button>
                </div>
            </div>
        </div>

        <div class="col-md-4 mb-3">
            <div class="card h-100">
                <div class="card-body">
                    <h5>Perfil</h5>
                    <p>Mis datos personales.</p>
                    <button class="btn btn-secondary">Editar</button>
                </div>
            </div>
        </div>


    </div>
    <div class="text-center mt-5 text-muted">
        <small>Fecha del servidor: <%= new java.util.Date()%>
        </small>
    </div>


</div>


</body>
</html>
