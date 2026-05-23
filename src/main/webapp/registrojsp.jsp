<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registro</title>
    <link rel="stylesheet" href="css/estilo.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="bg-light">
    
    <div class="contenedor">
        <img src="img/Logo.png" width="120">

    <h1>Formulario de Registro</h1>

    <form action="<%= request.getContextPath() %>/RegistrosServlet" method="POST">

        Nombre:
        <input type="text" name="nombre"
               pattern="[A-Za-zÁÉÍÓÚáéíóúñÑ ]+"
           title="Solo se permiten letras"
           required>">

        <br><br>

        Correo:
        <input type="email" name="correo"required>

        <br><br>

        Documento de identidad:
        <input type="text" name="documento"
                minlength="8"
           maxlength="12"
           pattern="[0-9]+"
           title="Solo numeros y minimo 10 digitos"
           required>

        <br><br>

        Fecha de nacimiento:
        <input type="date" name="fechaNacimiento"required>

        <br><br>

        Teléfono:
        <input type="tel" name="telefono"
                pattern="[0-9]+"
           minlength="10"
           maxlength="10"
           title="Ingrese solo numeros"
           required>

        <br><br>

        <input type="submit" value="Registrar">
        
    </form>
    </div>
</body>
</html>
