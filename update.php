<?php
include 'db.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $id = $_POST['id'];
    $nombre_profesor = $_POST['nombre_profesor'];
    $apellido_profesor = $_POST['apellido_profesor'];
    $fecha_curso = $_POST['fecha_curso'];
    $curso = $_POST['curso'];
    $hora_inicio_planificada = $_POST['hora_inicio_planificada'];
    $hora_fin_planificada = $_POST['hora_fin_planificada'];
    $asistencia = $_POST['asistencia'];
    $hora_inicio_asistencia = $_POST['hora_inicio_asistencia'] ?? null;
    $hora_fin_asistencia = $_POST['hora_fin_asistencia'] ?? null;
    $tipo_inasistencia = $_POST['tipo_inasistencia'] ?? null;
    $descripcion_causa = $_POST['descripcion_causa'] ?? null;

    $sql = "UPDATE registros_asistencia SET 
            nombre_profesor='$nombre_profesor', 
            apellido_profesor='$apellido_profesor', 
            fecha_curso='$fecha_curso', 
            curso='$curso', 
            hora_inicio_planificada='$hora_inicio_planificada', 
            hora_fin_planificada='$hora_fin_planificada', 
            asistencia='$asistencia', 
            hora_inicio_asistencia='$hora_inicio_asistencia', 
            hora_fin_asistencia='$hora_fin_asistencia', 
            tipo_inasistencia='$tipo_inasistencia', 
            descripcion_causa='$descripcion_causa'
            WHERE id=$id";

    if ($conn->query($sql) === TRUE) {
        echo "Registro actualizado exitosamente";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }

    $conn->close();
    header('Location: crud.html');
    exit();
}
?>
