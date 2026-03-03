DROP TABLE IF EXISTS tbl_enlaces;

CREATE TABLE tbl_enlaces (
    id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_seccion int(11) NOT NULL,
    identificacion varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL,
    link varchar(200) NOT NULL DEFAULT '',
    visible int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

INSERT INTO tbl_enlaces (id_seccion, identificacion, link, visible) VALUES 
(37, 'Admissions', 'business/org/pages/costos.php', 1),
(37, 'We', 'business/org/pages/sobreNosotros.php', 1),
(37, 'Directory', 'business/org/pages/directorioInstitucional.php', 1),
(37, 'History', 'business/org/pages/historia.php', 1),
(37, 'Main', 'index.php', 1);

INSERT INTO tbl_enlaces (id_seccion, identificacion, link, visible) VALUES 
(7, 'Our students', 'business/org/pages/nuestrosEstudiantes.php', 1),
(7, 'Graduates', 'business/org/pages/egresados.php', 1),
(7, 'Testimonials', '#', 1),
(7, 'Academic calendar', 'business/org/pages/calendario.php', 1),
(7, 'Code of Conduct', '#', 0),
(7, 'Library', 'https://unicab.org/biblioteca/Biblioteca_Unicab/', 1),
(7, 'Entities that monitor us', '#entidadesVigilan', 1),
(7, 'Evidence from conferences and awards', '#', 0),
(7, 'Opening hours', 'business/org/pages/directorioInstitucional.php#horarios', 1),
(7, 'Directory', 'business/org/pages/directorioInstitucional.php', 1),
(7, 'Investigation', 'business/org/pages/publicacionesAcademicas.php', 1);

DELETE FROM tbl_enlaces WHERE id = 8;

INSERT INTO tbl_enlaces (id_seccion, identificacion, link, visible) VALUES 
(47, '', 'unicab.org', 1),
(47, '', 'http://localhost/cartiexplora?unsubscribeNewsletter=', 1), -- TODO: Cambiar URL por el de la pagina en produccion
(18, '', 'https://unicab.org/calendario/calendario_2025.pdf', 1)
;

UPDATE tbl_enlaces SET link = 'http://localhost/cartiexplora#newsletterBox' WHERE (`id` = '18');
