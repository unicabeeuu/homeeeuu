DROP TABLE IF EXISTS tbl_publicaciones_academicas;

CREATE TABLE tbl_publicaciones_academicas (
    id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombreArchivo VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
    fechaSubida DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    ruta VARCHAR(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
    destino varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL,
    linkLeer varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
    visible TINYINT(1) NOT NULL DEFAULT 1,
    rutaImagen varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
    descripcionImagen varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL,
    titulo varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
    texto varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
    isbn varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

INSERT INTO tbl_publicaciones_academicas (nombreArchivo, ruta, destino, linkLeer, visible, rutaImagen, descripcionImagen, titulo, texto, isbn)  VALUES 
('revista_talentos_dorados', 'https://unicab.org/assets/pdfs/revista/Revista_UNICAB.pdf', '_blank', 'https://unicab.org/assets/pdfs/revista/Revista_UNICAB.pdf', 1, 'assets/img/portada_talentos.png', 'Cover of Golden Talents Magazine', 'Golden Talents Magazine', 'Our UNICAB Virtual ECOSYSTEM educational model immerses students with exceptional abilities and talents in a learning environment that combines personal, social, economic, and cultural factors through the use of ICT and the support of mediating teachers who guide these talents in a <q><em><b>a new school that prioritizes diversification, tolerance, and respect for individuality, difference, and diversity, where unique individuals are formed who develop the multiplicity of options that life offers them.</b></em></q> (Adaotadi de German de Zubiria, 2013).', ''),
('ecosistema_apredizaje_digital', 'https://unicab.org/assets/pdfs/ECOSISTEMA_DE_APRENDIZAJE_DIGITAL.pdf', '_blank', 'https://unicab.org/assets/pdfs/ECOSISTEMA_DE_APRENDIZAJE_DIGITAL.pdf', 1, 'assets/img/portada_ecosistemaAprendizaje.jpg', 'Digital Learning Ecosystem Homepage', 'Digital Learning Ecosystem', 'Our UNICAB Virtual ECOSYSTEM educational model immerses students with exceptional abilities and talents in a learning environment that combines personal, social, economic, and cultural factors through the use of ICT and the support of mediating teachers who guide these talents in a <q><em><b>A new school that prioritizes diversification, tolerance, and respect for individuality, difference, and diversity, where unique individuals are formed who develop the multiplicity of options that life offers them.</b></em></q> (Adaotadi de German de Zubiria, 2013).', '978-958-53384-1-8'),
('proyecto_educacion_digital', 'https://unicab.org/assets/pdfs/PROYECTO_DE_EDUCACION_DIGITAL.pdf', '_blank', 'https://unicab.org/assets/pdfs/PROYECTO_DE_EDUCACION_DIGITAL.pdf', 1, 'assets/img/portada_educacionDigital.jpg', 'Digital Education Project Cover', 'Digital Education Project', 'Our UNICAB Virtual ECOSYSTEM educational model immerses students with exceptional abilities and talents in a learning environment that combines personal, social, economic, and cultural factors through the use of ICT and the support of mediating teachers who guide these talents in a <q><em><b>A new school that prioritizes diversification, tolerance, and respect for individuality, difference, and diversity, where unique individuals are formed who develop the multiplicity of options that life offers them.</b></em></q> (Adaotadi de German de Zubiria, 2013).', '978-958-53384-2-5');