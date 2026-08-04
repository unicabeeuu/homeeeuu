DROP TABLE IF EXISTS tbl_eventos;

CREATE TABLE tbl_eventos (
    id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
    descripcion varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
    fechaPublicacion date DEFAULT NULL,
    fecha date DEFAULT NULL,
    hora varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
    lugar varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
    imagen varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
    link varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
    id_administrador int(11) NOT NULL,
    estado int(1) NOT NULL,
    tipo varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

INSERT INTO tbl_eventos (nombre, descripcion, fechaPublicacion, fecha, hora, id_administrador, estado, tipo)  
VALUES ('End of first period', 'Timely submission of activities March 20', CURDATE(), '2025-04-04', '18:00', 18, 0, 'comienzo'),
('Second period ends', 'Timely submission of activities May 23', CURDATE(), '2025-06-08', '18:00', 18, 0, 'comienzo'),
('End of third period', 'Timely submission of activities August 8', CURDATE(), '2025-08-22', '18:00', 18, 1, 'comienzo'),
('End of fourth period', 'Timely submission of activities October 31', CURDATE(), '2025-11-14', '18:00', 18, 1, 'comienzo')
;
