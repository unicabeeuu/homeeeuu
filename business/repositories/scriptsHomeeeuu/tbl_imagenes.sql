
DROP TABLE IF EXISTS tbl_imagenes;

CREATE TABLE tbl_imagenes (
    id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_seccion int(11) NOT NULL,
    ruta varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
    rutaMovil varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
    rutaTabletaVertical varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
    rutaTabletaHorizontal varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
    descripcion varchar(800) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL,
    titulo varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL,
    posicionTitulo varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL,
    enlace varchar(200) NOT NULL DEFAULT '',
    rutaEncima varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL,
    textoAlterno varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL,
    INDEX fk_tbl_imagenes_tbl_secciones (id_seccion),
    CONSTRAINT fk_tbl_imagenes_tbl_secciones FOREIGN KEY (id_seccion) REFERENCES tbl_secciones (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

INSERT INTO tbl_imagenes (id_seccion, ruta, rutaMovil, rutaTabletaVertical, rutaTabletaHorizontal, descripcion, titulo, posicionTitulo, rutaEncima, textoAlterno) VALUES
(2, 'assets/img/boton_primaria.png', '', '', '', 'botonPrimaria', '', '', 'assets/img/boton_over_primaria.png', ''),
(2, 'assets/img/boton_bachillerato.png', '', '', '', 'botonBachillerato', '', '', 'assets/img/boton_over_bachillerato.png', ''),
(2, 'assets/img/boton_ciclos.png', '', '', '', 'botonCiclos', '', '', 'assets/img/boton_over_ciclos.png', ''),
(3, 'assets/img/Grupo_tiroarco.png', '', '', '', 'tiroArco', 'Archery', 'abajo', '', ''),
(3, 'assets/img/Grupo_afisica.png', '', '', '', 'actividadFisica', 'A. Physicist', 'abajo', '', ''),
(3, 'assets/img/Grupo_parkour.png', '', '', '', 'parkour', 'Parkour', 'abajo', '', ''),
(3, 'assets/img/Grupo_pintura.png', '', '', '', 'pintura', 'Paint', 'abajo', '', ''),
(3, 'assets/img/Grupo_danza.png', '', '', '', 'danza', 'Dance', 'abajo', '', ''),
(3, 'assets/img/Grupo_cambiente.png', '', '', '', 'cambiente', 'C. Environment', 'abajo', '', ''),
(3, 'assets/img/Grupo_bmx.png', '', '', '', 'bmx', 'BMX', 'abajo', '', ''),
(3, 'assets/img/Grupo_cocina.png', '', '', '', 'cocina', 'Kitchen', 'abajo', '', ''),
(3, 'assets/img/Grupo_lectura.png', '', '', '', 'lectura', 'Reading', 'abajo', '', ''),
(3, 'assets/img/Grupo_musica.png', '', '', '', 'musica', 'Music', 'abajo', '', ''),
(3, 'assets/img/Grupo_coral.png', '', '', '', 'coral', 'Coral', 'abajo', '', ''),
(3, 'assets/img/Grupo_granja.png', '', '', '', 'granja', 'Farm', 'abajo', '', ''),
(5, 'assets/img/estudiantes.png', '', '', '', 'estudiantes', 'Students', 'derecha', '', ''),
(5, 'assets/img/graduados.png', '', '', '', 'graduados', 'Graduates', 'derecha', '', ''),
(5, 'assets/img/egresados1.png', '', '', '', 'egresados', 'Graduates', 'derecha', '', ''),
(6, 'assets/img/cc1.png', '', '', '', 'cc1', '', '', '', ''),
(6, 'assets/img/cc2.png', '', '', '', 'cc2', '', '', '', ''),
(6, 'assets/img/cc3.png', '', '', '', 'cc3', '', '', '', ''),
(7, 'assets/img/nuestros_estudiantes.png', '', '', '', 'nuestrosEstudiantes', 'Our students', 'derecha', '', ''),
(7, 'assets/img/calendario.png', '', '', '', 'calendario', 'Academic calendar', 'derecha', '', ''),
(7, 'assets/img/entidades.png', '', '', '', 'entidades', 'Entities that monitor us', 'derecha', '', ''),
(7, 'assets/img/egresados.png', '', '', '', 'egresados', 'Graduates', 'derecha', '', ''),
(0, 'assets/img/manual.png', '', '', '', 'manual', 'Code of Conduct', 'derecha', '', ''),
(0, 'assets/img/evidencias.png', '', '', '', 'evidencias', 'Evidence from conferences and awards', 'derecha', '', ''),
(7, 'assets/img/testimonios.png', '', '', '', 'testimonios', 'Testimonials', 'derecha', '', ''),
(7, 'assets/img/biblioteca.png', '', '', '', 'biblioteca', 'Library', 'derecha', '', ''),
(7, 'assets/img/atencion.png', '', '', '', 'atencion', 'Hours of attention', 'derecha', '', ''),
(7, 'assets/img/directorio.png', '', '', '', 'directorio', 'Directory', 'derecha', '', ''),
(7, 'assets/img/investigacion.png', '', '', '', 'investigacion', 'Investigation', 'derecha', '', ''),
(8, 'assets/img/conectados.png', '', '', '', 'conectados', '', '', '', ''),
(8, 'assets/img/enviar.png', '', '', '', 'Subscribe', '', 'derecha', '', ''),
(9, 'assets/img/Logo_thrive.png', '', '', '', 'logoUnicab', '', '', '', ''),
(10, 'assets/img/Logo_thrive_negativo.png', '', '', '', 'logo', 'Unicab Virtual College', '', 'https://thriveusa.org/', ''),
(10, 'assets/img/carti_explora.png', '', '', '', 'logo', 'CARTI Explore', '', 'https://thriveusa.org/business/cartiExplora/pages/cartiHome.php','' ),
(10, 'assets/img/unicab_solutions.png', '', '', '', 'logo', 'UNICAB Solutions', '', 'https://thriveusa.org/business/solutions/pages/somos.php', ''),

(10, 'assets/img/facebook.png', '', '', '', 'social-media', 'facebook', '', '', ''),
(10, 'assets/img/x.png', '', '', '', 'social-media', 'x', '', '', ''),
(10, 'assets/img/instagram.png', '', '', '', 'social-media', 'instagram', '', '', ''),
(10, 'assets/img/youtube.png', '', '', '', 'social-media', 'youtube', '', '', ''),
(11, 'assets/img/unicab_solutions.png', '', '', '', 'logoUnicabSolutions', '', '', '', ''),

(10, 'assets/img/1-1-1200x700.png', '', '', '', 'entidades', 'Boyacá Governorate', '', '', ''),
(10, 'assets/img/LogosSecSogamoso-300x153.png', '', '', '', 'entidades', 'Sogamoso Education Secretariat', '', '', ''),
(10, 'assets/img/Logo_Dian_Derecho.png', '', '', '', 'entidades', 'DIAN', '', '', ''),

(12, 'assets/img/organigrama.jpg', 'assets/img/organigrama_movil.png', 'assets/img/organigrama_tableta_horizontal.png', 'assets/img/organigrama_tableta_horizontal.png', 'organigrama', 'organigrama', '', '', 'organigrama'),
(13, 'assets/img/_DSC0141.jpg', '', '', '', '', '', '', '', 'unicab'),
(13, 'assets/img/_DSC0152.jpg', '', '', '', '', '', '', '', 'unicab'),
(13, 'assets/img/sotarira.jpg', '', '', '', '', '', '', '', 'unicab'),
(14, 'assets/img/Grupo 1@2x.png', '', '', '', 'For 17 years the school has been serving students with special socioeconomic needs who with deep passion wish to develop their special personal skills and study their primary and secondary education (grades 1 to 11) such as: athletes on the path to high performance, ballet and dance artists, theater, painting, science and technology researchers, students whose families travel around Colombia and the world, students with special health situations among others.', 'Regular Education (grades 1 through 11)', '', '', 'Regular education'),
(14, 'assets/img/Grupo 2@2x.png', '', '', '', 'The College also provides virtual service to people over 18 years of age who have not been able to complete their high school diploma, through the modality of preparatory cycles (2 years in 1) in a virtual manner.', 'Cycle-based education for adults', '', '', 'Cycle-based education'),
(14, 'assets/img/Grupo 3@2x.png', '', '', '', 'It is carried out through a gamified MOODLE version 3.11.18 technological platform, and Knowledge Mediator Teachers who attend to students from anywhere in the world through modern Information and Communication Technologies (ICT), allowing them to incorporate autonomy, development of thinking skills, development of their curiosity, creativity and handling of new technological tools into their learning, preparing them for the current and future world of knowledge.', 'The Teaching-Learning Process', '', '', 'The Teaching Process'),
(14, 'assets/img/Grupo 4@2x.png', '', '', '', 'Recognized by the Sogamoso Education Secretariat (Certified Education Entity), through which 655 high school students have graduated up to 2023 and have continued their higher education in the country and in countries such as the USA, Japan, Italy, Argentina, and Chile, among others.', 'We have a current Administrative Act', '', '', 'Current administrative'),
(15, 'assets/img/campus.jpg', 'assets/img/campus_movil.png', 'assets/img/campus_tableta_vertical.png', 'assets/img/campus_tableta_horizontal.png', '', '<b>Get to know</b><br> Our Campus', '', '', 'unicab campus'),
(16, 'assets/img/people_16003670@2x.png', '', '', '', 'We are a group of dreamers who believe that education must be transformed into a right-service for the benefit of the people, and that is why we created a non-profit corporation 23 years ago and since then we have dedicated ourselves to offering comprehensive services in dynamic and inclusive educational projects. <br><br> Our work is based on the needs of communities, with a focus on science, research, and information and communication technologies. We are committed to strategic quality management models, providing advice and consulting services that contribute to strengthening and positioning the productive sector, in line with our social purpose.', '<b>Who</b> Are?', '', '', 'Who are we?'),
(16, 'assets/img/g2784@2x.png', '', '', '', 'At UNICAB Educational Corporation, we are dedicated to offering a quality, humanistic, innovative and relevant education. <b>Our educational model, centered on the student</b>, it is based on research and the development of dynamic and inclusive learning, aligned with the demands of the knowledge society. <br><br> We promote critical thinking, creativity, and continuous learning, all inspired by principles and values ​​that empower our students as responsible leaders and global citizens committed to their environment. ', '<b>Our</b> Mission', '', '', 'Our Mission'),
(16, 'assets/img/vision_2967345@2x.png', '', '', '', 'By 2027, we will be a benchmark in innovative and transformative education, standing out for our ICT research and our commitment to developing the skills and potential of our students. We aspire to educate leaders who, through curiosity and collaboration, will contribute to transforming their communities in an inclusive and participatory way within a constantly evolving global society.', '<b>Our</b> Vision', '', '', 'Our vision'),
(17, 'assets/img/Grupo 50.png', '', '', '', '', 'search', '', '', ''),
(17, 'assets/img/CONTACTOS.png', '', '', '', 'image-contact', '', '', '', 'image'),
(17, 'assets/img/_2294971180768@2x.png', '', '', '', 'table', 'Name', '', '', ''),
(17, 'assets/img/Trazado 471@2x.png', '', '', '', 'table', 'Dep.', '', '', ''),
(17, 'assets/img/_2294971155520.png', '', '', '', 'table', 'Email', '', '', ''),
(17, 'assets/img/_2294971183744.png', '', '', '', 'table', 'Position', '', '', ''),
(17, 'assets/img/_2294971184896.png', '', '', '', 'table', 'Information', '', '', ''),
(17, 'assets/img/Grupo 1.png', '', '', '', 'image-schedule', 'MONDAY TO FRIDAY<br>8:00 a.m. TO 12:00 p.m.', '', '', 'schedule'),
(18, 'assets/img/elearning_5466286.svg', '', '', '', 'E-learning', '', '', '', 'E-learning'),
(20, 'assets/img/paper_14969976.svg', '', '', '', 'PDF', '', '', '', 'PDF'),

(21, 'assets/img/entidades.png', '', '', '', '', 'Foundation', 'abajo', '', ''),
(21, 'assets/img/trofeo.png', '', '', '', '', '2002-2003', 'abajo', '', ''),
(21, 'assets/img/trofeo.png', '', '', '', '', '2004-2007', 'abajo', '', ''),
(21, 'assets/img/trofeo.png', '', '', '','', '2007-2008', 'abajo', '', ''),
(22, 'assets/img/historia2.png', '', '', '', '', '', '', '', 'ParteArriba'),
(22, 'assets/img/historia1.png', '', '', '', '', '', '', '', 'ParteArriba'),
(22, 'assets/img/historia3.png', '', '', '', '', '', '', '', 'ParteArriba'),
(22, 'assets/img/unicabhistoria.png', '', '', '', '', '', '', '', 'ParteAbajo'),
(23, 'assets/img/GIU.png', '', '', '', '', 'UNICAB Research Group (GIU)', 'arriba', '', ''),
(23, 'assets/img/EquipoCreativo.jpg', '', '', '', '', 'Team Creative', 'arriba', '', ''),
(23, 'assets/img/EquipoSistemas.jpg', '', '', '', '', 'Team Systems', 'arriba', '', ''),
(23, 'assets/img/EquipoCorreccion.jpg', '', '', '', '', 'Team Style Editing', 'arriba', '', ''),
(23, 'assets/img/EquipoMaestros.png', '', '', '', '', 'Group Teachers Corps', 'arriba', '', ''),
(24, 'assets/img/modeloPedagogico.gif', '', '', '', '', '', 'izquierda', '', ''),
(24, 'assets/img/think.svg', '', '', '', '', 'Enhancement of students´ individual skills.', 'abajo', '', ''),
(24, 'assets/img/elearning.svg', '', '', '', '', 'Strengthening principles and values ​​based on student autonomy.', 'abajo', '', ''),
(24, 'assets/img/audiobook.svg', '', '', '', '', 'Development of the student´s creative thinking.', 'abajo', '', ''),
(26, 'assets/img/browser_4919708.png', '', '', '', 'calendario', 'Academic year(s) to which the application corresponds', 'arriba', '', ''),
(26, 'assets/img/icon-send.png', '', '', '', 'icon-send', '', '', '', ''),

(27, 'assets/img/Farid_Hastamorir.png', '', '', '', 'imagen-farid-hastamorir', '', '', '', ''),
(27, 'assets/img/Favio_Felipe.png', '', '', '', 'imagen-favio-felipe', '', '', '', ''),
(27, 'assets/img/favio_felipe_2.png', '', '', '', 'imagen-favio-felipe', '', '', '', ''),
(27, 'assets/img/Isabella_Tapias.png', '', '', '', 'imagen-isabella-tapias', '', '', '', ''),
(27, 'assets/img/Jhon_Caicedo.png', '', '', '', 'imagen-jhon-caicedo', '', '', '', ''),
(27, 'assets/img/Juan_Baez.png', '', '', '', 'imagen-juan-baez', '', '', '', ''),
(27, 'assets/img/Juan_Jose_Huerfano.png', '', '', '', 'imagen-juan-jose', '', '', '', ''),
(27, 'assets/img/Katerin_Gomez.png', '', '', '', 'imagen-katerin-gomez', '', '', '', ''),

(28, 'assets/img/descargar_pdf.png', '', '', '', 'Download icon', '', '', '', ''),
(29, 'assets/img/bannerPrincipios.png', '', '', '', 'Banner', '', '', '', ''),
(29, 'assets/img/compromiso.png', '', '', '', 'Icono', 'Commitment', 'derecha', '', ''),
(29, 'assets/img/honestidad.png', '', '', '', 'Icono', 'Honesty', 'derecha', '', ''),
(29, 'assets/img/solutions-icon-sistemas.png', '', '', '', 'icono', 'Freedom', 'derecha', '', ''),
(29, 'assets/img/equidad.png', '', '', '', 'Icono', 'Equity', 'derecha', '', ''),
(29, 'assets/img/responsabilidad.png', '', '', '', 'Icono', 'Responsibility', 'derecha', '', ''),
(29, 'assets/img/responsabilidad.png', '', '', '', 'Icono', 'Liberty', 'derecha', '', ''),

(30, 'assets/img/Banner_carti.png', '', '', '', 'Banner', '', '', '', ''),
(30, 'assets/img/explorador.png', '', '', '', 'Explorer image', '', '', '', ''),
(30, 'assets/img/solutions-icon-transformacion.png', '', '', '', 'Icono', 'Mission', 'abajo', '', ''),
(30, 'assets/img/solutions-icon-capacitacion.png', '', '', '', 'Icono', 'Vision', 'abajo', '', ''),
(30, 'assets/img/vision_naranja.png', '', '', '', 'Icono', 'Institutional Principles', 'abajo', '', ''),
(30, 'assets/img/compromiso.png', '', '', '', 'Icono', 'Commitment', 'derecha', '', ''),
(30, 'assets/img/honestidad.png', '', '', '', 'Icono', 'Ethics', 'derecha', '', ''),
(30, 'assets/img/solutions-icon-desarrollo.png', '', '', '', 'Icono', 'Freedom', 'derecha', '', ''),
(30, 'assets/img/equidad.png', '', '', '', 'Icono', 'Equity', 'derecha', '', ''),
(30, 'assets/img/responsabilidad.png', '', '', '', 'Icono', 'Responsibility', 'derecha', '', ''),
(30, 'assets/img/solutions-icon-sistemas.png', '', '', '', 'Icono', 'Pertinence', 'derecha', '', ''),

(31, 'assets/img/conectados.png', '', '', '', '', 'Main', 'abajo', '', ''),
(33, 'assets/img/enviar.png', '', '', '', '', 'Subscribe', 'izquierda', '', ''), 
(33, 'assets/img/love.png', '', '', '', '', '', '', '', ''), 
(33, 'assets/img/chatIcon.png', '', '', '', '', '', '', '', ''), 
(33, 'assets/img/shareIcon.png', '', '', '', '', 'Share on', 'izquierda', '', ''), 
(33, 'assets/img/facebookOrangeBg.png', '', '', '', '', '', '', '', ''), 
(33, 'assets/img/instagramOrangeBg.png', '', '', '', '', '', '', '', ''), 
(33, 'assets/img/linkedInOrangeBg.png', '', '', '', '', '', '', '', ''), 
(33, 'assets/img/whatsappOrangeBg.png', '', '', '', '', '', '', '', ''),

(34, 'assets/img/admisiones/Admisiones_2025_1.jpg', '', '', '', '', '', '', '', ''), 
(34, 'assets/img/admisiones/ico1_admisiones_2025_1.jpg', '', '', '', '', '', '', '', ''), 
(34, 'assets/img/admisiones/ico2_admisiones_2025_1.jpg', '', '', '', '', '', '', '', ''),
(34, 'assets/img/admisiones/continua_proceso_1.jpg', '', '', '', '', '', '', '', ''),
(34, 'assets/img/loading1.gif', '', '', '', '', '', '', '', ''),
(34, 'assets/img/admisiones/enviar_1.jpg', '', '', '', '', '', '', '', ''),

(35, 'assets/img/whatsapp_icon_negro.png', '', '', '', 'contact-icon', 'Communicate', '', '', ''),
(35, 'assets/img/location_icon_negro.png', '', '', '', 'location-icon', 'Communicate', '', '', ''),
(35, 'assets/img/blog_icon_negro.png', '', '', '', 'blog-icon', 'Communicate', '', '', '');

INSERT INTO tbl_imagenes (id_seccion, ruta, rutaMovil, rutaTabletaVertical, rutaTabletaHorizontal, descripcion, titulo, posicionTitulo, rutaEncima, textoAlterno) VALUES
(36, 'assets/img/advertencia_correo1.png', '', '', '', 'Advertencia', '', '', '', ''),
(36, 'assets/img/admisiones/Panchita.png', '', '', '', 'Panchita', '', '', '', '')
;

INSERT INTO tbl_imagenes (id_seccion, ruta, rutaMovil, rutaTabletaVertical, rutaTabletaHorizontal, descripcion, titulo, posicionTitulo, rutaEncima, textoAlterno) VALUES
(38, 'assets/img/IconoPresaberes.png', '', '', '', '', '', 'abajo', '', '');

INSERT INTO tbl_imagenes (id_seccion, ruta, rutaMovil, rutaTabletaVertical, rutaTabletaHorizontal, descripcion, titulo, posicionTitulo, rutaEncima, textoAlterno) VALUES 
(39, 'assets/img/pagos/statement.png', '', '', '', 'statement-cion', 'Payment via MiPagoAmigo', 'izquierda', '', ''),
(39, 'assets/img/pagos/Banco_Caja_Social.png', '', '', '', 'banco caja social icono', '', '', '', '');

INSERT INTO tbl_imagenes (id_seccion, ruta, rutaMovil, rutaTabletaVertical, rutaTabletaHorizontal, descripcion, titulo, posicionTitulo, enlace, rutaEncima, textoAlterno) VALUES 
(39, 'assets/img/pagos/mipagoamigo.png', '', '', '', 'mipagoamigo icono', '', '', 'https://www.mipagoamigo.com/MPA_WebSite/ServicePayments/StartPayment?id=3555&searchedCategoryId=&searchedAgreementName=UNICAB%20CORPORACION%20EDUCATIVA', '', ''),
(39, 'assets/img/pagos/operation.png', '', '', '', 'instructivo pago', 'Payment instructions', '', 'https://youtu.be/Q48MW92gABA', '', '');

INSERT INTO tbl_imagenes (id_seccion, ruta, rutaMovil, rutaTabletaVertical, rutaTabletaHorizontal, descripcion, titulo, posicionTitulo, rutaEncima, textoAlterno) VALUES 
(39, 'assets/img/pagos/statement.png', '', '', '', 'statement-icon', 'Payment via ePayco', '', '', ''),
(39, 'assets/img/pagos/epayco.png', '', '', '', 'epayco', 'Pension payment concepts', '', '', ''),
(39, 'assets/img/pagos/right-arrow.png', '', '', '', 'flecha', '', '', '', ''),
(39, 'assets/img/pagos/ref_pago.png', '', '', '', 'referencia pago', 'Payment reference', 'arriba', '', ''),
(39, 'assets/img/pagos/transaction.png', '', '', '', 'transaccion icono', '', '', '', '')
;

INSERT INTO tbl_imagenes (id_seccion, ruta, rutaMovil, rutaTabletaVertical, rutaTabletaHorizontal, descripcion, titulo, posicionTitulo, rutaEncima, textoAlterno) VALUES 
(40, 'assets/img/pagos/statement.png', '', '', '', 'statement-icon', 'Costs', 'izquierda', '', ''),
(40, 'assets/img/paper_14969976.svg', '', '', '', 'descargar-pdf', 'View', '', '', ''),
(40, 'assets/img/ayuda.gif', '', '', '', 'imagen ayuda', 'Contact our team', '', '', '');

UPDATE tbl_imagenes SET titulo = '' WHERE (id = 130);
UPDATE tbl_imagenes SET titulo = 'Registrations Open', enlace = '#inscripcionesAbiertas' WHERE (id = 131);
UPDATE tbl_imagenes SET enlace = 'https://wa.me/573008156531/?text=Hola necesito asesoría del proceso de admisiones.' WHERE (id = 129);

UPDATE tbl_imagenes SET rutaMovil = 'assets/img/unicabHistoriaMovil.jpg' WHERE (id = 76);
UPDATE tbl_imagenes SET rutaTabletaVertical = 'assets/img/unicabHistoriaTablets.jpg' WHERE (id = 76);

INSERT INTO tbl_imagenes (id_seccion, ruta, rutaMovil, rutaTabletaVertical, rutaTabletaHorizontal, descripcion, titulo, posicionTitulo, rutaEncima, textoAlterno) VALUES
(37, 'assets/img/liked.png', '', '', '', '', '', '', '', ''),
(10, 'assets/img/sumertic.png', '', '', '', 'aliados', 'Our Allies', '', '', ''),
(10, 'assets/img/linkedin.svg', '', '', '', 'social-media', 'linkedin', '', '', ''),
(10, 'assets/img/tiktok.svg', '', '', '', 'social-media', 'tiktok', '', '', '');


DELETE FROM tbl_imagenes WHERE id = 142 AND ruta = 'assets/img/pagos/ref_pago.png';
UPDATE tbl_imagenes SET posicionTitulo = 'izquierda' WHERE (id = 139);
UPDATE tbl_imagenes SET posicionTitulo = 'izquierda' WHERE (id = 135);
UPDATE tbl_imagenes SET rutaMovil = 'assets/img/bannerPrincipios.png', rutaTabletaVertical = 'assets/img/bannerPrincipios.png', rutaTabletaHorizontal = 'assets/img/bannerPrincipios.png' WHERE (id = 97);


DELETE FROM tbl_imagenes WHERE id = 28 AND ruta = 'assets/img/testimonios.png';
UPDATE tbl_imagenes SET ruta = 'assets/img/egresados1.png' WHERE id = 18;
UPDATE tbl_imagenes SET ruta = 'assets/img/modeloPedagogico.gif' WHERE id = 82;

INSERT INTO tbl_imagenes (id_seccion, ruta, rutaMovil, rutaTabletaVertical, rutaTabletaHorizontal, descripcion, titulo, posicionTitulo, rutaEncima, textoAlterno) VALUES
(42, 'assets/img/egresadosOnce.png', '', '', '', '', '', '', '', ''),
(42, 'assets/img/egresadosOnce_1.png', '', '', '', '', '', '', '', ''),
(42, 'assets/img/egresadosOnce_profesores.png', '', '', '', '', '', '', '', ''),
(42, 'assets/img/egresadosOnce_2.png', '', '', '', '', '', '', '', ''),
(43, 'assets/img/egresadosCiclos.png', '', '', '', '', '', '', '', ''),
(43, 'assets/img/egresadosCiclos_1.png', '', '', '', '', '', '', '', ''),
(43, 'assets/img/egresadosCiclos_2.png', '', '', '', '', '', '', '', ''),
(43, 'assets/img/egresadosCiclos_3.png', '', '', '', '', '', '', '', ''),
(44, 'assets/img/graduadosNoveno.png', '', '', '', '', '', '', '', ''),
(44, 'assets/img/graduadosNoveno_1.png', '', '', '', '', '', '', '', ''),
(44, 'assets/img/graduadosNoveno_2.png', '', '', '', '', '', '', '', ''),
(44, 'assets/img/graduadosNoveno_3.png', '', '', '', '', '', '', '', ''),
(45, 'assets/img/graduadosQuinto.png', '', '', '', '', '', '', '', ''),
(45, 'assets/img/graduadosQuinto_1.png', '', '', '', '', '', '', '', ''),
(45, 'assets/img/graduadosQuinto_2.png', '', '', '', '', '', '', '', ''),
(45, 'assets/img/graduadosQuinto_3.png', '', '', '', '', '', '', '', '');

INSERT INTO tbl_imagenes (id_seccion, ruta, rutaMovil, rutaTabletaVertical, rutaTabletaHorizontal, descripcion, titulo, posicionTitulo, enlace, rutaEncima, textoAlterno) VALUES
(47, 'assets/img/logoUnicabNewsletter.png', '', '', '', '', '', '', '', '', ''),
(47, 'assets/img/newsletterInscrito.png', '', '', '', '', '', '', '', '', ''),
(47, 'assets/img/newsletterPublicacionesIcon.png', '', '', '', '', '', '', '', '', ''),
(47, 'assets/img/newsletterNoticiasIcon.png', '', '', '', '', '', '', '', '', ''),
(47, 'assets/img/newsletterEventosIcon.png', '', '', '', '', '', '', '', '', ''),
(47, 'assets/img/newsletterHerramientasIcon.png', '', '', '', '', '', '', '', '', '')
;

INSERT INTO tbl_imagenes (id_seccion, ruta, rutaMovil, rutaTabletaVertical, rutaTabletaHorizontal, descripcion, titulo, posicionTitulo, enlace, rutaEncima, textoAlterno) VALUES
(48, 'assets/img/encabezado_informes1.jpg', '', '', '', '', '', '', '', '', ''),
(48, 'assets/img/checked_1.jpg', '', '', '', '', '', '', '', '', ''),
(48, 'assets/img/unchecked_1.jpg', '', '', '', '', '', '', '', '', ''),
(48, 'assets/img/na_1.jpg', '', '', '', '', '', '', '', '', '')
;

INSERT INTO tbl_imagenes (id_seccion, ruta, rutaMovil, rutaTabletaVertical, rutaTabletaHorizontal, descripcion, titulo, posicionTitulo, rutaEncima, textoAlterno) VALUES 
(25, 'assets/img/pagos/statement.png', '', '', '', 'statement-icon', 'Financial statements', 'izquierda', '', ''),
(25, 'assets/img/paper_14969976.svg', '', '', '', 'descargar-pdf', 'View', '', '', '')
;

UPDATE tbl_imagenes SET ruta = 'assets/img/principios.jpg', rutaMovil = 'assets/img/principios.jpg', rutaTabletaVertical = 'assets/img/principios.jpg', rutaTabletaHorizontal = 'assets/img/principios.jpg' WHERE (id = '97');

UPDATE tbl_imagenes SET enlace = 'business/org/pages/sobreNosotros.php#ofertaAcademica' WHERE (id = '1');
UPDATE tbl_imagenes SET enlace = 'business/org/pages/sobreNosotros.php#ofertaAcademica' WHERE (id = '2');
UPDATE tbl_imagenes SET enlace = 'business/org/pages/sobreNosotros.php#ofertaAcademica' WHERE (id = '3');

UPDATE tbl_imagenes SET ruta = 'assets/img/Grupo 2.svg' WHERE (id = '4');
UPDATE tbl_imagenes SET ruta = 'assets/img/Grupo 3.svg' WHERE (id = '5');
UPDATE tbl_imagenes SET ruta = 'assets/img/Grupo 4.svg' WHERE (id = '6');
UPDATE tbl_imagenes SET ruta = 'assets/img/Grupo 5.svg' WHERE (id = '7');
UPDATE tbl_imagenes SET ruta = 'assets/img/Grupo 6.svg' WHERE (id = '8');
UPDATE tbl_imagenes SET ruta = 'assets/img/Grupo 7.svg' WHERE (id = '9');
UPDATE tbl_imagenes SET ruta = 'assets/img/Grupo 8.svg' WHERE (id = '10');
UPDATE tbl_imagenes SET ruta = 'assets/img/Grupo 9.svg' WHERE (id = '11');
UPDATE tbl_imagenes SET ruta = 'assets/img/Grupo 10.svg' WHERE (id = '12');
UPDATE tbl_imagenes SET ruta = 'assets/img/Grupo 13.svg' WHERE (id = '13');
UPDATE tbl_imagenes SET ruta = 'assets/img/Grupo 12.svg' WHERE (id = '14');
UPDATE tbl_imagenes SET ruta = 'assets/img/Grupo 11.svg' WHERE (id = '15');

UPDATE tbl_imagenes SET enlace = 'business/org/pages/sobreNosotros.php#primariaYBachillerato' WHERE (id = '1');
UPDATE tbl_imagenes SET enlace = 'business/org/pages/sobreNosotros.php#primariaYBachillerato' WHERE (id = '2');
UPDATE tbl_imagenes SET enlace = 'business/org/pages/sobreNosotros.php#ciclos' WHERE (id = '3');

UPDATE tbl_imagenes SET enlace = 'https://thriveusa.org/#inscripcionesAbiertas' WHERE (id = '131');

UPDATE tbl_imagenes SET ruta = 'assets/img/GIU.jpg' WHERE id = 77 AND ruta = "assets/img/GIU.png";
UPDATE tbl_imagenes SET ruta = 'assets/img/equipoDocentes.jpg' WHERE id = 81 AND ruta = "assets/img/EquipoMaestros.png";

UPDATE tbl_imagenes SET titulo = 'Enhancement of skills <br><span>individual student data.</span>' WHERE id = 83 AND titulo = "Enhancement of students´ individual skills.";
UPDATE tbl_imagenes SET titulo = 'Strengthening principles and values <br><span>based on student autonomy.</span>' WHERE id = 84 AND titulo = "Strengthening principles and values ​​based on student autonomy.";
UPDATE tbl_imagenes SET titulo = 'Development of creative thinking <br><span>of the student.</span>' WHERE id = 85 AND titulo = "Development of the student´s creative thinking."
;

UPDATE tbl_imagenes SET enlace = 'https://thriveusa.org/#inicio' WHERE (id = '36');
UPDATE tbl_imagenes SET enlace = 'https://thriveusa.org/business/cartiExplora/pages/cartiHome.php' WHERE (id = '37');
UPDATE tbl_imagenes SET enlace = 'https://thriveusa.org/business/solutions/pages/somos.php' WHERE (id = '38');
UPDATE tbl_imagenes SET titulo = 'MONDAY TO FRIDAY<br>8:00 a.m. A 12:00 p.m.<br>2:00 p.m A 6:00 p.m.' WHERE (id = '66');

UPDATE tbl_imagenes SET id_seccion = '1' WHERE (id = '40');
UPDATE tbl_imagenes SET id_seccion = '1' WHERE (id = '149');
UPDATE tbl_imagenes SET id_seccion = '1' WHERE (id = '150');
