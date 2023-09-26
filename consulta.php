<?php
include('db.php'); // Incluye el archivo de conexión

// Consulta para obtener tipos de sangre disponibles
$sql = "SELECT * FROM tipoDeSangre";
$result = $conn->query($sql);

// Mostrar resultados en una tabla
?>
<!DOCTYPE html>
<html>
<head>
    <title>Consulta de sangre disponible</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <header>
        <h1 class="centered">Consulta de sangre disponible</h1>
        <p>Banco de sangre donde tu salud está primero.</p>
    </header>
    <table>
        <tr>
            <th>Tipo de Sangre</th>
        </tr>
        <?php
        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                echo "<tr><td>" . $row["tipo"] . "</td></tr>";
            }
        } else {
            echo "<tr><td>No hay datos disponibles</td></tr>";
        }
        ?>
    </table>
</body>
</html>
