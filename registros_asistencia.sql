
/*
                BBDD asistencia_db by Ivan Jara Melgarejo

CREATE DATABASE asistencia_db;

USE asistencia_db;

CREATE TABLE registros_asistencia (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_profesor VARCHAR(255) NOT NULL,
    apellido_profesor VARCHAR(255) NOT NULL,
    fecha_curso DATE NOT NULL,
    curso VARCHAR(255) NOT NULL,
    hora_inicio_planificada TIME NOT NULL,
    hora_fin_planificada TIME NOT NULL,
    asistencia ENUM('SI', 'NO') NOT NULL,
    hora_inicio_asistencia TIME NULL,
    hora_fin_asistencia TIME NULL,
    tipo_inasistencia ENUM('JUSTIFICADA', 'NO JUSTIFICADA') NULL,
    descripcion_causa TEXT NULL
);

USE asistencia_db;

INSERT INTO registros_asistencia (nombre_profesor, apellido_profesor, fecha_curso, curso, hora_inicio_planificada, hora_fin_planificada, asistencia, hora_inicio_asistencia, hora_fin_asistencia, tipo_inasistencia, descripcion_causa) 
VALUES 
('Juan', 'Pérez', '2024-09-01', 'Matemáticas', '08:00', '10:00', 'SI', '08:05', '10:00', NULL, NULL),
('María', 'García', '2024-09-01', 'Ciencias', '10:00', '12:00', 'NO', NULL, NULL, 'JUSTIFICADA', 'Enfermedad'),
('Carlos', 'López', '2024-09-02', 'Historia', '08:00', '10:00', 'SI', '08:00', '10:00', NULL, NULL),
('Ana', 'Martínez', '2024-09-02', 'Lengua', '10:00', '12:00', 'NO', NULL, NULL, 'NO JUSTIFICADA', NULL),
('Luis', 'Rodríguez', '2024-09-03', 'Geografía', '08:00', '10:00', 'SI', '08:10', '10:00', NULL, NULL);

SELECT * FROM registros_asistencia


*/