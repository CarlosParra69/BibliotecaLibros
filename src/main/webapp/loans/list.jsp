<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Préstamos - Sistema de Biblioteca</title>
    <link rel="stylesheet" href="../css/styles.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js" integrity="sha384-k6d4wzSIapyDyv1kpU366/PK5hCdSbCRGRCMv+eplOQJWyd1fbcAu9OCUj5zNLiq" crossorigin="anonymous"></script>
    <script>
        function validateForm() {
            var returnDate = new Date(document.getElementById('returnDate').value);
            var loanDate = new Date(document.getElementById('loanDate').value);
            
            if (returnDate < loanDate) {
                alert('La fecha de devolución debe ser posterior a la fecha de préstamo.');
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
    <header>
        <h1>Biblioteca</h1>
        <p>Gestión de Préstamos</p>
    </header>

    <nav class="text-center">
        <ul class="mb-4">
            <li><a href="../index.jsp">Inicio</a></li>
            <li><a href="../books/list.jsp">Libros</a></li>
            <li><a href="list.jsp">Préstamos</a></li>
        </ul>
    </nav>
    <%
                            // Aquí normalmente se obtendría el ID del préstamo y se buscarían los detalles en la base de datos
                            String loanId = request.getParameter("id");
                            // Por ahora usaremos datos de ejemplo
                            String bookTitle = "Ejemplo de Libro";
                            String borrowerName = "Juan Pérez";
                            String loanDate = "2025-01-01";
                            String returnDate = "2025-01-15";
                            String status = "Activo";
                        %>

    <div class="container">
        <h2>Agregar Nuevo Préstamo</h2>

        <div class="container mt-4">
            <div class="row align-items-center">
                <!-- Columna del formulario -->
                <div class="col-md-6">
                    <div>
                            <a href="add.jsp" class="btn btn-success">Realizar Prestamo</a>
                    </div>
                </div>

                <!-- Columna de la imagen -->
                <div class="col-md-6 text-center">
                    <img src="../img/loan.png" alt="Imagen de préstamo" class="img-fluid rounded" style="max-height: 350px;">
                </div>
            </div>
        </div>

        <h2>Lista de Préstamos</h2>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>ID del Libro</th>
                    <th>Nombre del Prestatario</th>
                    <th>Fecha de Préstamo</th>
                    <th>Fecha de Devolución</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <!-- Aquí se mostrarían los préstamos -->
                <tr>
                    <td>1</td>
                    <td>1</td>
                    <td>Juan Pérez</td>
                    <td>2025-01-01</td>
                    <td>2025-01-15</td>
                    <td class="text-center">
                        <a href="edit.jsp?id=1" class="btn btn-warning">Editar</a>
                        <a href="return.jsp?id=1" class="btn btn-info text-white">Devolver</a>
                        <a href="delete.jsp?id=1" class="btn btn-danger">Eliminar</a>
                        
                    </td>
                </tr>
            </tbody>
        </table>
    </div>

    <footer>
        <p>&copy; 2025 Sistema de Biblioteca</p>
    </footer>
</body>
</html>