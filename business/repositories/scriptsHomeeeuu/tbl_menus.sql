DROP TABLE IF EXISTS tbl_menus;

CREATE TABLE tbl_menus (
    id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    menu varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
    nivel varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL,
    padre varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
    icono varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL,
    linkNivelRaiz varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
    linkNivelTres varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
    destino varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL,
    visible int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

INSERT INTO tbl_menus (menu, nivel, padre, icono, linkNivelRaiz, linkNivelTres, destino) VALUES
('UNICAB Virtual College', '', '', '', '', '', ''),
('CARTI Explore', '', '', '', '', '',''),
('UNICAB Solutions', '' ,'', '', '', '', ''),
('Admissions', '', '', '', '', '', ''),
('Virtual Classroom', '', '', '', 'https://aulavirtual.unicab.org/login/', 'https://aulavirtual.unicab.org/login/', '_blank'),
('Academic Record', '', '', '', 'https://unicab.org/login_registro.php', 'https://unicab.org/login_registro.php', '_blank'),
('Email', '', '', '', 'https://mail.google.com/a/unicab.org/', 'https://mail.google.com/a/unicab.org/', '_blank'),

('About Us', 'raiz', '1', '', 'business/org/pages/sobreNosotros.php', '../../../business/org/pages/sobreNosotros.php',''),
('Our History', 'raiz', '1', '', 'business/org/pages/historia.php', '../../../business/org/pages/historia.php',''),
('Guiding Principles', 'raiz', '1', '', 'business/org/pages/principiosYValores.php', '../../../business/org/pages/principiosYValores.php',''),
('UNICAB Groups Network', 'raiz', '1', '', 'business/org/pages/historia.php#grupos', '../../../business/org/pages/historia.php#grupos',''),
('Pedagogical Model', 'raiz', '1', '', 'business/org/pages/modelo.php', '../../../business/org/pages/modelo.php',''),
('Educational Offer', 'raiz', '1', '', '#ofertaAcademica', '#ofertaAcademica',''),
('Contact Directory', 'raiz', '1', '', 'business/org/pages/directorioInstitucional.php', '../../../business/org/pages/directorioInstitucional.php',''),
('Hours of attention', 'raiz', '1', '', 'business/org/pages/directorioInstitucional.php#horarios', '../../../business/org/pages/directorioInstitucional.php#horarios',''),
('Academic Calendar', 'raiz', '1', '', 'business/org/pages/calendario.php', '../../../business/org/pages/calendario.php',''),

('Announcements', 'raiz', '1', '', 'business/org/pages/calendario.php#comunicados', '../../../business/org/pages/calendario.php#comunicados', ''),
('Financial Statements', 'raiz', '1', '', 'business/org/pages/estadosFinancieros.php', '../../../business/org/pages/estadosFinancieros.php', ''),
('Application for Certifications', 'raiz', '1', '', 'business/org/pages/estadosFinancieros.php#certificaciones', '../../../business/org/pages/estadosFinancieros.php#certificaciones', ''),
('Academic Publications', 'raiz', '1', '', 'business/org/pages/publicacionesAcademicas.php', '../../../business/org/pages/publicacionesAcademicas.php', ''),

('Mission and Vision', 'raiz', '2', '', 'business/cartiExplora/pages/cartiHome.php#divMision', '../../../business/cartiExplora/pages/cartiHome.php#divMision',''),
('Principles and Values', 'raiz', '2', '', 'business/cartiExplora/pages/cartiHome.php#divPrincipios', '../../../business/cartiExplora/pages/cartiHome.php#divPrincipios',''),
('Servicios', 'raiz', '2', '', 'business/cartiExplora/pages/servicios.php', '../../../business/cartiExplora/pages/servicios.php',''),

('Who are we?', 'raiz', '3', '', 'business/solutions/pages/somos.php', '../../../business/solutions/pages/somos.php',''),
('Mission', 'raiz', '3', '', 'business/solutions/pages/mision.php', '../../../business/solutions/pages/mision.php',''),
('Vision', 'raiz', '3', '', 'business/solutions/pages/vision.php', '../../../business/solutions/pages/vision.php',''),
('Director of the Formal Education Program', 'raiz', '3', '', 'business/solutions/pages/directorProgramaEducacionFormal.php', '../../../business/solutions/pages/directorProgramaEducacionFormal.php',''),
('Informal education services', 'raiz', '3', '', 'business/solutions/pages/serviciosEducacionInformal.php', '../../../business/solutions/pages/serviciosEducacionInformal.php',''),
('Business consulting', 'raiz', '3', '', 'business/solutions/pages/consultoriaEmpresarial.php', '../../../business/solutions/pages/consultoriaEmpresarial.php',''),

('Interview', 'raiz', '4', '', 'business/org/pages/entrevista.php', '../../../business/org/pages/entrevista.php',''),
('Prior Knowledge Assessment', 'raiz', '4', '', 'business/org/pages/evaluacionPresaberes.php', '../../../business/org/pages/evaluacionPresaberes.php',''),
('Costs', 'raiz', '4', '', 'business/org/pages/costos.php', '../../../business/org/pages/costos.php',''),
('Payments', 'raiz', '4', '', 'business/org/pages/pagos.php', '../../../business/org/pages/pagos.php',''),

('Our Students', 'raiz', '1', '', 'business/org/pages/nuestrosEstudiantes.php', '../../../business/org/pages/nuestrosEstudiantes.php', ''),
('Blog', 'raiz', '1', '', 'business/org/pages/blog.php', '../../../business/org/pages/blog.php', '');

UPDATE tbl_menus SET menu = "Celebrating Achievements" WHERE id = 35;
UPDATE tbl_menus SET visible = 0 WHERE id = 13;
UPDATE tbl_menus SET visible = 0 WHERE id = 23;
UPDATE tbl_menus SET menu = "Services" WHERE id = 24;
UPDATE tbl_menus SET visible = 0 WHERE padre = 3 AND id != 24;

UPDATE tbl_menus SET visible = 0 WHERE id = 2;
UPDATE tbl_menus SET visible = 0 WHERE id = 3;
UPDATE tbl_menus SET visible = 0 WHERE id = 30;
UPDATE tbl_menus SET visible = 0 WHERE id = 31;