DROP TABLE IF EXISTS tbl_textos;

DROP TABLE IF EXISTS tbl_formularios;

DROP TABLE IF EXISTS tbl_imagenes;

DROP TABLE IF EXISTS tbl_secciones;

CREATE TABLE tbl_secciones (
    id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    seccion varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
    visible int(11) NOT NULL,
    paginaPadre varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
    titulo varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL,
    subTitulo varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL,
    texto varchar(10000) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

INSERT INTO tbl_secciones (seccion, visible, paginaPadre, titulo, subTitulo, texto) VALUES
('', 0, '', '', '', '');

UPDATE tbl_secciones SET id = 0;

ALTER TABLE tbl_secciones
    MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

INSERT INTO tbl_secciones (seccion, visible, paginaPadre, titulo, subTitulo, texto) VALUES
('banner', 1, 'home', '', '', ''),
('ofertaAcademica', 1, 'home', 'Academic Offer', '', ''),
('descubreTusHabilidades', 0, 'home', 'Discover Your Skills', 'CARTI EXPLORE', 'High Performance Center for Talent and Intelligence'),
('inscripcionesAbiertas', 1, 'home', 'Registrations Open', '2025', 'Call us or write to us'),
('indicadores', 1, 'home', 'Indicators that speak about us', '', ''),
('conoceNuetroCampus', 0, 'home', 'Get to know', 'Our Campus', 'CARTI EXPLORA is the High Performance Center for Talent and Intelligence, the UNICAB Educational Corporation´s campus located in the Municipality of Sogamoso. It serves students from the region, the department, and the country through learning spaces that, like a laboratory, allow students to explore their curiosity, personal skills, and thinking abilities by interacting directly with sports, nature, art, science, culture, and technology, and stimulating creativity, research, and socio-emotional development autonomously.'),
('zonaDeEnlaces', 1, 'home', 'Link Zone', '', ''),
('blogConectados', 1, 'home', 'Blog', '', ''),
('navBar', 1, 'home', '', '', ''),
('footer', 1,'home', '', '', ''),
('navBarSolutions', 1, 'home', '', '', ''),

('sobreNosotrosUnicab', 1,'sobreNosotros', 'What is <b>UNICAB EDUCATIONAL CORPORATION?</b>', '', 'The Business Training Unit of Boyacá “<b>UNICAB EDUCATIONAL CORPORATION</b>” It is a non-profit institution, created 23 years ago through the Secretariat of Social Participation of the Government of Boyacá, which provides formal and informal education services with more than 23 years of experience and has the following organizational structure:'),
('sobreNosotrosImagenesUne', 1,'sobreNosotros', '', '', ''),
('sobreNosotrosEducacionFormal', 1,'sobreNosotros', '<b>School</b><br> UNICAB Virtual ', '(Formal Education)', ''),
('sobreNosotrosImagenesDos', 1,'sobreNosotros', '', '', ''),
('sobreNosotrosQuinesSomos', 1,'sobreNosotros', '', '', ''),
('directorioInstitucional', 1, '', '<b>DIRECTORY</b> Institutional','',''),
('calendarioAcademico', 1, '', '<b>CALENDAR</b> Academic','',''),
('calendarioProximoEvento', 1, '', 'Next event','','Time Remaining'),
('comunicados', 0, '', 'PRESS RELEASES','',''),

('lineaTiempo', 1, 'historia', 'History and Achievements', '', ''),
('informacion', 1,'historia', '', '', ''),
('ecosistema', 1, 'historia', '', '', ''),
('nuestroModelo', 1, 'modelo', 'Our Pedagogical Model', 'UNICAB Ecosystem', '21st-century education, mediated by ICT, must be guided by teachers who are mediators and guides of knowledge, who study, research and accompany the teaching-learning processes, making it possible for students and their families to be at the center of the development of pedagogical work. <br> <br> The model has been built with a team of professionals passionate about serving in quality education, whom we have named: <span class="font-roboto-black">“UNICAB VIRTUAL PEDAGOGICAL MODEL”.</span> This is based on constructivist, conceptual and problem-solving pedagogies, and in it, managers, administrators and teachers mediating knowledge, through technology and virtuality, work on three basic lines, namely:'),

('estadosFinancieros', 1, '','<b>STATES</b> FINANCIAL', '', ''),
('solicitudesCertificaciones', 1, '','<b>APPLICATIONS FOR</b> CERTIFICATIONS AND PAPERS', '', ''),

('nuestrosEstudiantes', 1, 'nuestrosEstudiantes', '<b>Our</b><br><span style="color:#0B77B3;">Students</span>', '', ''),
('publicacionesAcademicas', 1, 'publicacionesAcademicas', '<b>Publications</b> Academics', '', ''),
('principiosYValores', 1, 'principiosYValores', '<b>Principles and</b><br>Corporate Values', '', 'UNICAB is a formal education institution that strives for the comprehensive development of each and every one of its students; but when we talk about development, we move to a completely innovative context, because it is here where, through our curricular structure,<i> development is the autonomous and conscious result of the student in terms of a defined learning process and a flexible, dynamic, and relevant teaching methodology based on ethical principles so that, together with the development of capacities, skills, and abilities in specific areas</i>, they can have excellent performance and project a harmonious life project with identity, which corresponds to their dreams, aspirations, and abilities.'),
('cartiHome', 0, 'cartiHome', '<b>CARTI</b> Explore', '', ''),

('busqueda', 1, 'blog', '<span class="font-roboto-black">Celebrating Achievements and</span><br>Sharing Experiences', '', ''),
('noticias', 1,'blog', 'Featured News', '', ''),
('lastPost', 1, 'blog', '', '', ''),

('entrevista', 1, 'admisiones', 'Admissions', 'Interviews', ''),
('botonFlotante', 1, 'home', '', '', ''),

('resultadoPreAdmisiones', 1, 'admisiones', 'Admissions', 'Pre-Admission Results', '');

INSERT INTO tbl_secciones (seccion, visible, paginaPadre, titulo, subTitulo, texto) VALUES 
('BlogPost', 1, 'blogpost', '', '', ''),
('Presaberes', 1, 'presaberes', 'Pre-assessment', '(It is recommended to use browsers other than Internet Explorer)', ''),
('pagos', '1', 'admisiones', '', '', '');

INSERT INTO tbl_secciones (seccion, visible, paginaPadre, titulo, subTitulo, texto) VALUES 
('costos', 1, 'admisiones', '', 'Check here for the latest costs approved by the Sogamoso Education Secretariat', '(Year 2024)');

UPDATE tbl_secciones SET titulo = 'Featured News' WHERE id = 32;
UPDATE tbl_secciones SET titulo = 'Featured News' WHERE id = 8;

INSERT INTO tbl_secciones (seccion, visible, paginaPadre, titulo, subTitulo, texto) VALUES 
('promo2024', 1, 'egresados', 'Moments that mark', 'Class of 2024', ''),
('egresadosOnce', 1, 'egresados', 'Our pride, Graduates', 'Grade ELEVEN', 'Our eleventh-grade students are graduating from UNICAB in the class of 2024. They have successfully completed their academic training in a virtual format, consolidating key competencies for higher education and professional life. This achievement reflects the effort, discipline, and educational quality that characterize our pedagogical model.'),
('egresadosCiclos', 1, 'egresados', 'Education that transforms lives', 'CYCLES', 'At UNICAB, we celebrate the graduation of adult students, many of them from rural areas, who resumed their studies through online education. With effort and perseverance, they overcame barriers and demonstrated that it is never too late to learn. Today they graduate as an example of resilience and hope for their families and communities.'),
('graduadosNoveno', 1, 'egresados', 'One More Step on the Path', 'NINTH Degree', 'The ninth-grade graduation at UNICAB represents a key moment in the virtual educational journey. Our students complete an essential phase of their schooling, moving towards new academic responsibilities. This group stands out for its commitment, autonomy, and readiness for the challenges of secondary school.'),
('graduadosQuinto', 1, 'egresados', 'Our Brave Elementary School Students', 'FIFTH Grade', 'We celebrate the graduation of our fifth-grade students at UNICAB, who proudly complete their virtual elementary school cycle. This stage marks the end of a valuable basic academic journey and the beginning of a new path in secondary education. Their experience has been filled with learning, skills development, and personal growth.')
;

INSERT INTO tbl_secciones (seccion, visible, paginaPadre, titulo, subTitulo, texto) VALUES 
('presaberes_principal', 1, 'presaberes', 'WELCOME', '', ''),
('newsletterInscrito', 1, 'correo', 'You are already part of <strong style="color:#FF9805;">Connected</strong>,<br>the official UNICAB blog', 'Thanks for subscribing!', 'From now on you will be aware of:'),
('resultadosPresaberes', 1, 'presaberes', '', '', '')
;

UPDATE tbl_secciones SET titulo = '<span>History and</span><br> Achievements' WHERE id = 21;
UPDATE tbl_secciones SET visible = 0 WHERE id = 6 AND seccion = 'conoceNuetroCampus';

UPDATE tbl_secciones SET titulo = '<b>DIRECTORY</b> Institutional' WHERE id = 17;
UPDATE tbl_secciones SET titulo = '<b>CALENDAR</b> Academic' WHERE id = 18;

INSERT INTO tbl_secciones (seccion, visible, paginaPadre, titulo, subTitulo, texto) VALUES 
('servicios_carti', 1, 'cartiHome', 'Servicios <b>CARTI</b> Explora', '<b>Aprendizajes para un mundo cambiante</b>', ''),
('footerEEUU', 1, 'home', '', '', '')
;
