<?php
header('Content-Type: application/json');

include 'db.php';

$id = isset($_GET['id']) ? intval($_GET['id']) : 0;

if ($id > 0) {
    $sql = "SELECT * FROM registros_asistencia WHERE id = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("i", $id);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        $data = $result->fetch_assoc();
    } else {
        $data = [];
    }

    echo json_encode($data);
    
    $stmt->close();
} else {
    echo json_encode(["error" => "ID inválido"]);
}

$conn->close();
?>
