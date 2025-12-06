<%--
  Created by IntelliJ IDEA.
  User: Kevin Olazo
  Date: 05/12/2025
  Time: 20:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Acceso CiberEdu</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<style>
    body {
        background-color: #f4f6f9;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    .login-box {
        width: 350px;
        padding: 20px;
        background: white;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
</style>
<body>

<div class="login-box">
    <h3 class="text-center text-primary mb-4">CiberEdu</h3>

    <% if (request.getAttribute("mensajeError") != null) {%>
    <div class="alert alert-danger text-center mb-3">
        <%= request.getAttribute("mensajeError")%>
    </div>
    <% }%>

    <form action="dashboard.jsp" method="post">
        <div class="mb-3">
            <label>Usuario:</label>
            <input type="text" name="usuario" class="form-control" required>
        </div>
        <div class="mb-3">
            <label>Contraseña:</label>
            <input type="text" name="clave" class="form-control" required>
        </div>
        <button type="submit" class="btn btn-primary w-100">Ingresar</button>
    </form>

</div>

</body>
</html>
