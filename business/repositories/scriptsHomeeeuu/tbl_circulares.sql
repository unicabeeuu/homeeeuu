DROP TABLE IF EXISTS tbl_circulares;

CREATE TABLE tbl_circulares (
    id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombreArchivo VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
    ruta VARCHAR(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
    destino varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL,
    linkLeer varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
    visible TINYINT(1) NOT NULL DEFAULT 1,
    titulo varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
    id_seccion INT(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

INSERT INTO tbl_circulares (nombreArchivo, ruta, destino, linkLeer, visible, titulo, id_seccion)  VALUES 
('Costs of Regular Education', 'https://unicab.org/assets/descargas/costos/Circular_029_Costos_educación_regular_2024.pdf', '_blank', '', 1, 'GENERAL CIRCULAR No. 029 Of December 15, 2023 Regular School', 40),
('Costs of Education by Cycles', 'https://unicab.org/assets/descargas/costos/Circular_030_Costos_educación_ciclos_2024.pdf', '_blank', '', 1, 'GENERAL CIRCULAR No. 030 Of December 15, 2023 Education by Cycles', 40)
;

INSERT INTO tbl_circulares (nombreArchivo, ruta, destino, linkLeer, visible, titulo, id_seccion)  VALUES 
('Accounting Notes 2020', 'https://unicab.org/assets/pdfs/NOTAS_CONTABLES_2020.pdf', '_blank', '', 1, 'Accounting Notes 2020', 25),
('Statements of Financial Position', 'https://unicab.org/assets/pdfs/SF_BASICO.pdf', '_blank', '', 1, 'Statements of Financial Position', 25),
('Income Statement', 'https://unicab.org/assets/pdfs/ESF_BASICO.pdf', '_blank', '', 1, 'Income Statement', 25)
;

