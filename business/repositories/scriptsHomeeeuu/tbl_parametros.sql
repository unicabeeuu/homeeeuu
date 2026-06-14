DROP TABLE IF EXISTS tbl_parametros;

CREATE TABLE tbl_parametros (
    id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    parametro varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
    v1 int(11) DEFAULT NULL,
    v2 int(11) DEFAULT NULL,
    t1 varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
    t2 varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
    f1 date DEFAULT NULL,
    f2 date DEFAULT NULL,
    id_seccion int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

INSERT INTO tbl_parametros (parametro, v1, v2, t1, t2, f1, f2, id_seccion) VALUES
('telefono_admisiones', NULL, NULL, '300 815 6531', NULL, NULL, NULL, 10),
('correo_admisiones', NULL, NULL, 'admisiones@unicab.org', NULL, NULL, NULL, 10),
('direccion_unicab', NULL, NULL, 'Calle 13a No. 16-60', NULL, NULL, NULL, 10),
('ubicacion_unicab', NULL, NULL, 'Sogamoso - Boyacá - Colombia', NULL, NULL, NULL, 10),
('blog_newsletter_texto', NULL, NULL, 'Receive our weekly newsletter', NULL, NULL, NULL, 8),
('titulo_form_inscripciones', NULL, NULL, 'Learn more', NULL, NULL, NULL, 4),
('checkbox_form_inscripciones', NULL, NULL, 'I agree to this data being stored and processed for the purpose of establishing contact. I understand that I can withdraw my consent at any time. *<br><br>* indicates the required fields.', NULL, NULL, NULL, 4),

('facebook', NULL, NULL, 'https://www.facebook.com/unicabvir', NULL, NULL, NULL, 10),
('x', NULL, NULL, 'https://x.com/unicab_virtual?lang=es', NULL, NULL, NULL, 10),
('instagram', NULL, NULL, 'https://www.instagram.com/unicabvirtual/?hl=es', NULL, NULL, NULL, 10),
('youtube', NULL, NULL, 'https://www.youtube.com/@unicabco/videos', NULL, NULL, NULL, 10),
('linkedin', NULL, NULL, 'https://co.linkedin.com/company/colegio-virtual-unicab', NULL, NULL, NULL, 10),
('tiktok', NULL, NULL, 'https://www.tiktok.com/@colegio_unicab_', NULL, NULL, NULL, 10),
('terminos_condiciones', NULL, NULL, 'Terms and Conditions / Privacy Policy / Cookies', NULL, NULL, NULL, 10),
('copyright', NULL, NULL, 'Copyright © 2026 - Creative and Systems Teams Unicab Virtual. All rights reserved.', NULL, NULL, NULL, 10);

INSERT INTO tbl_parametros (parametro, v1, v2, t1, t2, f1, f2, id_seccion) VALUES
('indicador_egresados', 1441, NULL, NULL, NULL, NULL, NULL, 5),
('indicador_graduados', 131, NULL, NULL, NULL, NULL, NULL, 5);

INSERT INTO tbl_parametros (parametro, v1, v2, t1, t2, f1, f2, id_seccion) VALUES
('blog_newsletter_texto2', NULL, NULL, 'Want to cancel your subscription? Click Here', NULL, NULL, NULL, 8),
('blog_newsletter_texto3', NULL, NULL, 'Do you wish to cancel your subscription? Enter your email address:', NULL, NULL, NULL, 8),
('boton_categoria1_blog', 1, NULL, 'Celebration of Achievements', NULL, NULL, NULL, 31),
('boton_categoria2_blog', 2, NULL, 'Projects and experiences', NULL, NULL, NULL, 31),
('boton_categoria3_blog', 3, NULL, 'GIU Research', NULL, NULL, NULL, 31)
;


