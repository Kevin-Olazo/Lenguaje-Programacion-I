<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Acceso - CiberEdu</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
</head>
<body class="bg-light">

<%--CARD--%>
<div class="container d-flex justify-content-center">
    <div class="col-12 col-md-7 col-lg-5">
        <div class="card card-login p-4">
            <%--CARD HEAD--%>
            <div class="card-header text-center bg-primary mb-3 rounded-4">
                <h1 class="h3 text-white">CiberEdu</h1>
                <p class="text-white-50">Sistema de Gestion Academica</p>
            </div>
            <%-- Mensaje de Error si la contrasena es incorrecta--%>
            <%
                String mensajeError = (String) request.getAttribute("error");
                if (mensajeError != null) {
            %>
            <div class="alert alert-danger" role="alert">
                <%=mensajeError %>
            </div>
            <% }%>

            <%--CARD BODY--%>

            <form action="login" method="POST">
                <div class="form-floating mb-3">
                    <input type="text" name="usuario" class="form-control" placeholder="Ej: admin" required>
                    <label class="form-label">Usuario</label>
                </div>

                <div class="form-floating mb-3">

                    <input type="text" name="dni" class="form-control" placeholder="Ej: 78954264" required>
                    <label class="form-label">DNI</label>
                </div>

                <div class="mb-3 form-floating">

                    <input type="password" name="password" class="form-control" placeholder="*********" required>
                    <label class="form-label">Contraseña</label>
                </div>

                <button type="submit" class="btn btn-primary w-100 btn-lg">Ingresar</button>
            </form>

            <div class="text-center mt-3">
                <small class="text-muted">Desarrollado para LP1 - Cibertec</small>
            </div>
        </div>
    </div>
</div>
</body>
</html>
