<%--
  Created by IntelliJ IDEA.
  User: Kevin Olazo
  Date: 26/11/2025
  Time: 23:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registro de estudiante</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
    <style> .error { color: red; font-size: 0.9em; } </style>
</head>
<body>

<nav class="navbar navbar-dark bg-primary mb-4">
    <div class="container">
        <a class="navbar-brand" href="dashboard.jsp"> Volver al Dashboard</a>
    </div>
</nav>

<div class="container">
    <div class="card shadow">
        <div class="card-header bg-white">
            <h4>Nuevo Estudiante</h4>
        </div>
        <div class="card-body">
            <form action="registro-estudiante" method="post" id="formRegistro">

                <div class="row mb-3">
                    <div class="col-md-6">
                        <label class="form-label">Nombre Completo</label>
                        <input type="text" name="nombre" class="form-control" placeholder="Ej: Juan Pérez">
                    </div>
                    <div class="col-md-6">
                        <label class="form-label">DNI</label>
                        <input type="text" name="dni" class="form-control" placeholder="8 dígitos">
                    </div>
                </div>

                <div class="row mb-3">
                    <div class="col-md-6">
                        <label class="form-label">Correo Electrónico</label>
                        <input type="email" name="correo" class="form-control">
                    </div>
                    <div class="col-md-6">
                        <label class="form-label">Carrera</label>
                        <select name="carrera" class="form-select">
                            <option value="" disabled>Seleccione...</option>
                            <option value="computacion">Computación e Informática</option>
                            <option value="redes">Redes y Comunicaciones</option>
                            <option value="diseño">Diseño Gráfico</option>
                        </select>
                    </div>
                </div>

                <button type="submit" class="btn btn-success btn-lg">Registrar Estudiante</button>
            </form>
        </div>
    </div>
</div>


<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.5/dist/jquery.validate.min.js"></script>

<%--SCRIPT JQUERY para validacion del lado del Cliente --%>
<script>
    $(document).ready(function () {
        $('#formRegistro').validate({
            rules: {
                nombre: {required: true, minlength: 3},
                dni: {required: true, digits: true, minlength: 8, maxlength: 8},
                correo: {required: true, email: true},
                carrera: {required: true}
            },
            messages: {
                nombre: "Por favor ingrese su nombre completo",
                dni: "El DNI debe tener 8 numeros",
                correo: "Ingrese un correo valido",
                carrera: "Seleccione una carrera"
            },
            highlight: function(element, errorClass, validClass) {
                $(element).addClass('is-invalid');  // Usa clase de Bootstrap: borde rojo, sin cambiar color de texto
            },
            unhighlight: function(element, errorClass, validClass) {
                $(element).removeClass('is-invalid');  // Remueve el estilo de error
            }
        })
    })

</script>
</body>
</html>
