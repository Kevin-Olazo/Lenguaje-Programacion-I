<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Acceso - CiberEdu</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
</head>
<body>

<%--CARD--%>
<div class="card card-login p-4">
    <%--CARD HEAD--%>
    <div class="text-center mb-4">
        <h1 class="h3 text-primary">CiberEdu</h1>
        <p class="text-muted">Sistema de Gestion Academica</p>
    </div>

    <%--CARD BODY--%>

    <form action="dashboard.jsp" method="POST">
        <div class="mb-3">
            <label class="form-label"></label>
            <input type="text" name="usuario" class="form-control" placeholder="Ej: admin" required>
        </div>

        <div class="mb-3">
            <label class="form-label">Contraseña</label>
            <input type="password" name="password" class="form-control" placeholder="*********" required>
        </div>
        <button type="submit" class="btn btn-primary w-100">Ingresar</button>
    </form>

    <div class="text-center mt-3">
        <small class="text-muted">Desarrollado para LP1 - Cibertec</small>
    </div>
</div>
</body>
</html>
