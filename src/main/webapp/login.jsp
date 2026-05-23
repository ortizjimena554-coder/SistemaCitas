<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>

    <meta charset="UTF-8">

    <title>Login</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet">

    <!-- Tu CSS -->
    <link rel="stylesheet" href="css/estilos.css">

</head>

<body>

    <div class="container">

        <div class="row justify-content-center align-items-center vh-100">

            <div class="col-md-5">

                <div class="card shadow p-4">

                    <!-- TITULO -->
                    <div class="text-center">
                        
                        <img src="<%=request.getContextPath()%>/img/Logo.png"
                             width="120"
                             alt="Logo">

                        <h2 class="text-primary">
                            Iniciar Sesión
                        </h2>

                        <p>
                            Sistema de Citas Médicas
                        </p>

                    </div>

                    <!-- FORMULARIO -->
                    <form action="registrojsp.jsp">

                        <!-- CORREO -->
                        <div class="mb-3">

                            <label>
                                Correo
                            </label>

                            <input type="email"
                                   class="form-control"
                                   placeholder="Ingrese su correo"
                                   required>

                        </div>

                        <!-- CONTRASEÑA -->
                        <div class="mb-3">

                            <label>
                                Contraseña
                            </label>

                            <input type="password"
                                   class="form-control"
                                   placeholder="Ingrese su contraseña"
                                   required>

                        </div>

                        <!-- BOTON -->
                        <div class="d-grid">

                            <button type="submit"
                                    class="btn btn-primary">

                                Ingresar

                            </button>

                        </div>

                    </form>

                    <!-- REGISTRO -->
                    <div class="text-center mt-3">

                        <a href="registro.jsp">

                            ¿No tienes cuenta? Registrarse

                        </a>

                    </div>

                </div>

            </div>

        </div>

    </div>

</body>
</html>