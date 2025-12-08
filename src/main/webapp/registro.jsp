<%--
  Created by IntelliJ IDEA.
  User: Kevin Olazo
  Date: 05/12/2025
  Time: 21:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Registro Estudiante</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* 1. Estilo para el MENSAJE de error (el texto de aviso) */
        label.error {
            color: red;
            font-size: 0.85rem;
            font-weight: 500;
            margin-top: 5px;
            display: block; /* Para que baje a una nueva línea */
        }

        /* 2. Estilo para el CAMPO (Input/Select) cuando hay error */
        /* Le ponemos borde rojo, pero forzamos el color de texto a negro/normal */
        input.error, select.error {
            border: 1px solid red;
            color: #212529; /* Color de texto estándar de Bootstrap */
        }

        /* Opcional: Quitar el fondo rojo suave que a veces pone Bootstrap/Browser */
        input.error:focus, select.error:focus {
            box-shadow: 0 0 0 0.25rem rgba(220, 53, 69, 0.25);
            border-color: #dc3545;
        }
    </style>
</head>
<body class="bg-light">

<div class="container mt-5">
    <div class="card shadow col-md-8 mx-auto">
        <div class="card-header bg-success text-white">
            <h4>Registro de Alumno (CiberEdu)</h4>
        </div>
        <div class="card-body">

            <% if (request.getAttribute("mensajeExito") != null) { %>
            <div class="alert alert-success">
                <%= request.getAttribute("mensajeExito") %>
            </div>
            <% } %>

            <form id="formRegistro" action="RegistroServlet" method="POST">
                <div class="mb-3">
                    <label>Nombre Completo:</label>
                    <input type="text" name="nombre" class="form-control">
                </div>

                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label>DNI:</label>
                        <input type="text" name="dni" class="form-control">
                    </div>
                    <div class="col-md-6 mb-3">
                        <label>Edad:</label>
                        <input type="text" name="edad" class="form-control">
                    </div>
                </div>

                <div class="mb-3">
                    <label>Carrera:</label>
                    <select name="carrera" class="form-select">
                        <option value="">Seleccione...</option>
                        <option value="Computacion">Computacion e informatica</option>
                        <option value="Redes">Redes y Comunicaciones</option>
                    </select>
                </div>

                <button type="submit" class="btn btn-primary w-100">Registrar</button>
                <div class="text-center mt-3">
                    <a href="dashboard.jsp">Volver al dashboard</a>
                </div>
            </form>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.5/dist/jquery.validate.min.js"></script>

<script>
    $(document).ready(function () {
        console.log("JQuery cargado correctamente. Iniciando validacion...")

        $("#formRegistro").validate({
            rules: {
                nombre: { required: true, minlength: 5},
                dni: { required: true, digits: true, minlength: 8, maxlength: 8},
                edad: { required: true, digits: true, min: 16, max: 99},
                carrera: { required: true }
            },
            messages: {
                nombre: "El nombre es obligatorio (minimo 5 letras)",
                dni: "DNI debe tener 8 numeros",
                edad: "Edad invalida (16-99)",
                carrera: "Debe elegir una carrera"
            },
            // Clase de error para CSS
            errorClass: "error"
        });
    });
</script>
</body>
</html>
