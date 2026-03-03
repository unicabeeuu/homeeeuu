DROP TABLE IF EXISTS tbl_opciones_estados_financieros;

CREATE TABLE tbl_opciones_estados_financieros (
    id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombrePadre varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
    valor varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
    visible int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

INSERT INTO tbl_opciones_estados_financieros(nombrePadre, valor, visible) VALUES
('Relación con la institución', 'Current student', 1),
('Relación con la institución', 'Alumnus', 1),
('Relación con la institución', 'Father of a family', 1),
('Relación con la institución', 'Mediator teacher', 1),
('Tipo de certificación', 'Certificate of studies', 1),
('Tipo de certificación', 'Report card', 1),
('Tipo de certificación', 'Proof of enrollment', 1);