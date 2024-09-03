<?php
header('Content-Type: application/json');
include 'db.php';

$sql = "SELECT * FROM registros_asistencia";
$result = $conn->query($sql);

$registros = [];

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $registros[] = $row;
    }
}

echo json_encode($registros);
$conn->close();

?>
