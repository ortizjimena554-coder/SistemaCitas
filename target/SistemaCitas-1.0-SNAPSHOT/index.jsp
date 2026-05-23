<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

    <meta charset="UTF-8">

    <title>Sistema de Citas</title>

    <link rel="stylesheet" href="css/estilo.css">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

</head>

<body class="bg-light">

    <div class="contenedor">

        <img src="img/Logo.png" width="120">

        <h1>Registro de Citas Médicas</h1>

        <form action="CitaServlet" method="POST">

            <label>Nombre:</label><br>

            <input type="text" name="nombre" class="form-control"><br><br>

            <label>Documento:</label><br>

            <input type="text" name="documento" class="form-control"><br><br>

            <label>Fecha:</label><br>

            <input type="date" name="fecha" class="form-control"><br><br>

            <label>Hora:</label><br>

            <input type="time" name="hora" class="form-control"><br><br>

            <input type="submit" value="Guardar Cita" class="btn btn-primary">

        </form>

    </div>

</body>

</html>
