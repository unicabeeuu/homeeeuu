/*DROP DATABASE IF EXISTS admin_unieeuu;

CREATE DATABASE admin_unieeuu DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci;*/

/*######################################################################################################*/
SET SQL_SAFE_UPDATES = 0;

DROP TABLE IF EXISTS tbl_carga_profesor;

CREATE TABLE tbl_carga_profesor (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_profesor int(11) NOT NULL,
  id_grado int(11) NOT NULL,
  id_materia int(11) NOT NULL,
  id_empleado int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_certificados;

CREATE TABLE tbl_certificados (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  fecha_expedicion date NOT NULL,
  numero varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  tipo_certificado varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  id_estudiante int(11) NOT NULL,
  id_grado int(11) NOT NULL,
  ruta varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  numero1 int(11) DEFAULT NULL,
  identificacion varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  ruta1 varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  a int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_equivalence_idest;

CREATE TABLE tbl_equivalence_idest (
  id_moodle int(11) NOT NULL,
  id_registro int(11) NOT NULL,
  PRIMARY KEY (id_moodle, id_registro)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_equivalence_idest_temp1;

CREATE TABLE tbl_equivalence_idest_temp1 (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_moodle int(11) NOT NULL,
  nom_moodle varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  grado varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  id_registro int(11) NOT NULL,
  nom_registro varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  actualizar int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_equivalence_idgra;

CREATE TABLE tbl_equivalence_idgra (
  id_category int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  id_grado_ra int(4) NOT NULL,
  grado_ra varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_equivalence_idmat;

CREATE TABLE tbl_equivalence_idmat (
  id_course int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  shortname varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  id_materia_ra int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_equivalence_per;

CREATE TABLE tbl_equivalence_per (
  idnumber varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  periodo int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_estudiantes_eval_admision;

CREATE TABLE tbl_estudiantes_eval_admision (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nombre varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  n_documento varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  id_grado int(11) DEFAULT 0,
  email varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  observaciones varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  origen varchar(30) DEFAULT NULL,
  año int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_grados_materias;

CREATE TABLE tbl_grados_materias (
  id int(15) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_grado int(15) NOT NULL,
  id_materia int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

INSERT INTO tbl_grados_materias (id, id_grado, id_materia) VALUES
(1, 2, 1),
(4, 2, 4),
(5, 2, 5),
(6, 2, 6),
(7, 2, 7),
(9, 2, 9),
(10, 3, 1),
(13, 3, 4),
(14, 3, 5),
(15, 3, 6),
(16, 3, 7),
(18, 3, 9),
(19, 4, 1),
(22, 4, 4),
(23, 4, 5),
(24, 4, 6),
(25, 4, 7),
(27, 4, 9),
(28, 5, 1),
(31, 5, 4),
(32, 5, 5),
(33, 5, 6),
(34, 5, 7),
(36, 5, 9),
(37, 6, 1),
(40, 6, 4),
(41, 6, 5),
(42, 6, 6),
(43, 6, 7),
(45, 6, 9),
(46, 7, 1),
(49, 7, 4),
(50, 7, 5),
(51, 7, 6),
(52, 7, 7),
(54, 7, 9),
(55, 8, 1),
(58, 8, 4),
(59, 8, 5),
(60, 8, 6),
(61, 8, 7),
(63, 8, 9),
(64, 9, 1),
(67, 9, 4),
(68, 9, 5),
(69, 9, 6),
(70, 9, 7),
(72, 9, 9),
(73, 10, 1),
(76, 10, 4),
(77, 10, 5),
(78, 10, 6),
(79, 10, 7),
(81, 10, 9),
(82, 11, 10),
(85, 11, 7),
(86, 11, 15),
(89, 11, 5),
(90, 11, 11),
(91, 11, 12),
(92, 11, 9),
(93, 12, 10),
(96, 12, 7),
(97, 12, 15),
(100, 12, 5),
(101, 12, 11),
(102, 12, 12),
(103, 12, 9),
(104, 15, 5),
(105, 15, 6),
(106, 15, 7),
(107, 15, 4),
(108, 15, 9),
(109, 15, 1),
(116, 16, 5),
(117, 16, 6),
(118, 16, 7),
(119, 16, 4),
(120, 16, 9),
(121, 16, 1),
(122, 17, 5),
(123, 17, 11),
(124, 17, 7),
(125, 17, 15),
(126, 17, 12),
(128, 17, 9),
(129, 17, 10),
(130, 18, 5),
(131, 18, 11),
(132, 18, 7),
(133, 18, 15),
(134, 18, 12),
(136, 18, 9),
(137, 18, 10),
(138, 13, 1),
(139, 13, 4),
(140, 13, 5),
(141, 13, 6),
(142, 13, 7),
(143, 14, 1),
(144, 14, 4),
(145, 14, 5),
(146, 14, 6),
(147, 14, 7);

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_materias;

CREATE TABLE tbl_materias (
  Id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  materia varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  materiaIngles varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  pensamiento varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  pensamientoingles varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

INSERT INTO tbl_materias (Id, materia, materiaIngles, pensamiento, pensamientoingles) VALUES
(1, 'CIENCIAS NATURALES ', 'SCIENCE ', 'BIOÉTICO', 'BIOETHICS'),
(2, 'EDUCACIÓN ÉTICA Y EN VALORES', 'ETHICS AND VALUES', 'BIOÉTICO', 'BIOETHICS'),
(3, 'EDUCACIÓN FÍSICA', 'PHYSICAL EDUCATION', 'BIOÉTICO', 'BIOETHICS'),
(4, 'CIENCIAS SOCIALES', 'SOCIAL SCIENCE ', 'SOCIAL', 'SOCIAL'),
(5, 'MATEMÁTICAS', 'MATHS', 'NUMÉRICO', 'NUMERIC'),
(6, 'HUMANIDADES – LENGUA CASTELLANA', 'SPANISH', 'HUMANÍSTICO E', 'HUMANISTIC'),
(7, 'HUMANIDADES- INGLÉS', 'ENGLISH', 'HUMANÍSTICO I', 'HUMANISTIC'),
(8, 'ARTISTICA', 'ARTS', 'HUMANÍSTICO', 'HUMANISTIC'),
(9, 'TECNOLOGÍA E INFORMÁTICA', 'INFORMATION TECHNOLOGY', 'TECNOLÓGICO', 'TECHNOLOGIC '),
(10, 'QUÍMICA', 'CHEMISTRY', 'BIOÉTICO', 'BIOETHICS'),
(11, 'FÍSICA', 'PHYSICS', 'BIOÉTICO F', 'BIOETHICS'),
(12, 'CIENCIAS POLÍTICAS', 'POLITICS SCIENCE', 'SOCIAL', 'SOCIAL'),
(13, 'FILOSOFÍA', 'PHILOSOPHY', 'HUMANÍSTICO', 'HUMANISTIC'),
(15, 'HUMANIDADES - ESPAÑOL', 'SPANISH', 'HUMANÍSTICO E', 'HUMANISTIC'),
(16, 'ÉNFASIS EN EDUCACIÓN FÍSICA', 'EMPHASIS ON PHYSICAL EDUCATION', 'BIOÉTICO', 'BIOETHICS');

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_notas;

CREATE TABLE tbl_notas (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nota float NOT NULL DEFAULT 0,
  id_periodo int(11) NOT NULL,
  id_materia int(11) NOT NULL,
  id_grado int(11) NOT NULL,
  id_estudiante int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_notas_mood_temp;

CREATE TABLE tbl_notas_mood_temp (
  id_est int(11) NOT NULL PRIMARY KEY,
  lastname varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  firstname varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  shortname varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  id int(11) NOT NULL,
  name varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  id_grado int(11) NOT NULL,
  periodo varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  periodo_ra int(11) NOT NULL,
  calificacion float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_notas_mood_temp_est;

CREATE TABLE tbl_notas_mood_temp_est (
  id_est int(11) NOT NULL PRIMARY KEY,
  lastname varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  firstname varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  shortname varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  id_mat_mood int(11) NOT NULL,
  name varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  id_grado int(11) NOT NULL,
  idnumber varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  calificacion float NOT NULL DEFAULT 0,
  email_inst varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_notas_temp;

CREATE TABLE tbl_notas_temp (
  nota float NOT NULL DEFAULT 0,
  id_periodo int(11) NOT NULL,
  id_materia int(11) NOT NULL,
  id_grado int(11) NOT NULL,
  id_estudiante int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_notas_temp_ins;

CREATE TABLE tbl_notas_temp_ins (
  id_estudiante int(11) NOT NULL PRIMARY KEY,
  apellidos varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  nombres varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  grado varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  materia varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  id_periodo int(11) NOT NULL,
  id_materia int(11) NOT NULL,
  id_grado int(11) NOT NULL,
  nota_actual float NOT NULL,
  nota_nueva float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_notas_temp_ins_ghf;

CREATE TABLE tbl_notas_temp_ins_ghf (
  id_estudiante int(11) NOT NULL PRIMARY KEY,
  apellidos varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  nombres varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  grado varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  materia varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  id_periodo int(11) NOT NULL,
  id_materia int(11) NOT NULL,
  id_grado int(11) NOT NULL,
  nota_actual decimal(10,1) NOT NULL DEFAULT 0.0,
  nota_nueva float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_notas_temp_manual;

CREATE TABLE tbl_notas_temp_manual (
  id int(11) NOT NULL DEFAULT 0,
  nota float NOT NULL DEFAULT 0,
  id_periodo int(11) NOT NULL,
  id_materia int(11) NOT NULL,
  id_grado int(11) NOT NULL,
  id_estudiante int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_notas_temp_no_ra;

CREATE TABLE tbl_notas_temp_no_ra (
  id_estudiante int(11) NOT NULL PRIMARY KEY,
  apellidos varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  nombres varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  grado varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  materia varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  id_periodo int(11) NOT NULL,
  id_materia int(11) NOT NULL,
  id_grado int(11) NOT NULL,
  nota_actual float NOT NULL,
  nota_nueva float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_notas_temp_upd;

CREATE TABLE tbl_notas_temp_upd (
  id_estudiante int(11) NOT NULL PRIMARY KEY,
  apellidos varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  nombres varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  grado varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  materia varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  id_periodo int(11) NOT NULL,
  id_materia int(11) NOT NULL,
  id_grado int(11) NOT NULL,
  nota_actual float NOT NULL,
  nota_nueva float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_periodos;

CREATE TABLE tbl_periodos (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  periodo int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

INSERT INTO tbl_periodos (periodo) VALUES
(1),
(2),
(3),
(4);

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_querys_ra;

CREATE TABLE tbl_querys_ra (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  pensamiento varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  grados varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  campos1 varchar(1300) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  campos2 varchar(800) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  campos3 varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  tablas varchar(350) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  condicion1 varchar(450) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  condicion2 varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  condicion3 varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  condicion4 varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  condicion5 varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  orden varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  actualizado varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  seleccionados int(11) NOT NULL,
  insertados_tem int(11) NOT NULL,
  actualizados int(11) NOT NULL,
  nuevos int(11) NOT NULL,
  procesar int(11) NOT NULL,
  est_nue_no_reg int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

INSERT INTO tbl_querys_ra (pensamiento, grados, campos1, campos2, campos3, tablas, condicion1, condicion2, condicion3, condicion4, condicion5, orden, actualizado, seleccionados, insertados_tem, actualizados, nuevos, procesar, est_nue_no_reg) VALUES
('Hum_Esp', '9, 10, 11', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '15, 16, 17', ') AND c.id IN (', '44, 50, 54, 96, 98, 100', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7GWnsFrH7URyLruhUojkRse/oVokkgGh++dv/LJbOa+Aj/YFetlNyRSbKutOEHBHhA==', '202100916_1859', 904, 904, 7, 2, 0, 0),
('Hum_Esp', '6, 7, 8', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '12, 13, 14', ') AND c.id IN (', '90, 92, 94', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7GWnsFrH7URyLruhUojkRse/oVokkgGh++dv/LJbOa+Aj/YFetlNyRSbKutOEHBHhA==', '202100916_1902', 1064, 1064, 0, 0, 0, 0),
('Hum_Esp', 'primaria', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '4, 5, 6, 8, 9', ') AND c.id IN (', '80, 82, 84, 86, 88', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7GWnsFrH7URyLruhUojkRse/oVokkgGh++dv/LJbOa+Aj/YFetlNyRSbKutOEHBHhA==', '202100916_1904', 951, 951, 3, 0, 0, 0),
('Hum_Ing', '9, 10, 11', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '15, 16, 17', ') AND c.id IN (', '95, 97, 99', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7GWnsFrH7URyLruhUojkRse/oVokkgGh++dv/LJbOa+Aj/YFetlNyRSbKutOEHBHhA==', '202100916_1906', 911, 911, 8, 0, 0, 0),
('Hum_Ing', '6, 7, 8', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '12, 13, 14', ') AND c.id IN (', '89, 91, 93', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7GWnsFrH7URyLruhUojkRse/oVokkgGh++dv/LJbOa+Aj/YFetlNyRSbKutOEHBHhA==', '202100916_1907', 1059, 1059, 6, 0, 0, 0),
('Hum_Ing', 'primaria', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '4, 5, 6, 8, 9', ') AND c.id IN (', '79, 81, 83, 85, 87', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7GWnsFrH7URyLruhUojkRse/oVokkgGh++dv/LJbOa+Aj/YFetlNyRSbKutOEHBHhA==', '202100916_1911', 924, 924, 7, 1, 0, 0),
('Hum_Ing', 'ciclos', '', '', '', '', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '', ') AND c.id IN (', '', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', '', '20191017', 0, 0, 0, 0, 0, NULL),
('Bio', '9, 10, 11', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '15, 16, 17', ') AND c.id IN (', '42, 47, 52', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7GWnsFrH7URyLruhUojkRse/oVokkgGh++dv/LJbOa+Aj/YFetlNyRSbKutOEHBHhA==', '202100916_1921', 893, 893, 12, 3, 0, 0),
('Bio', '6, 7, 8', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '12, 13, 14', ') AND c.id IN (', '27, 36, 41', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7GWnsFrH7URyLruhUojkRse/oVokkgGh++dv/LJbOa+Aj/YFetlNyRSbKutOEHBHhA==', '202100922_1038', 1111, 1111, 0, 0, 0, 0),
('Bio', 'primaria', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '4, 5, 6, 8, 9', ') AND c.id IN (', '3, 7, 17, 18, 25', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7GWnsFrH7URyLruhUojkRse/oVokkgGh++dv/LJbOa+Aj/YFetlNyRSbKutOEHBHhA==', '202100916_1924', 969, 969, 8, 0, 0, 0),
('Bio', 'ciclos', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '19, 20, 22, 23, 28, 30', ') AND c.id IN (', '63, 64, 73, 76, 110, 115', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7GWnsFrH7URyLruhUojkRse/oVokkgGh++dv/LJbOa+Aj/YFetlNyRSbKutOEHBHhA==', '202100916_1925', 36, 36, 0, 0, 0, 0),
('Num', '9, 10, 11', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mTqQxBRxn2G7EHUl3iTEZTep/kmpVl+JKfY8QZyaN5L+dbME3FrCcxwMBaVuQ/4HtSbjVsfJw9Cu6oyDHSe7fywb5Kd0AQUD8dw3+7gOcqbcnAx9Q8MJ3pALnmxkiMDvg3MlX6hFnot7GURaQ/QKDHj/u9i1LBRErO7vRzEJF1xyhWWqeyb1ZZdaNKjqI6rwVVaWkxOgKhogzGDVPrLLoaZrHr2Rdrky3mrK/kcZK3+zTHHhYYrhTyA1STeOozNaunAx1m/iVYlEUw248jljlb9Y3LxehHAN7WkMw/cpdaZpWzDnM0O8rXivaFwuZLEzZdhDjSU9SRjrNWmtL2eefl/PyGYJUXZmNsDpNwIzkYRtXx0hLVI2FFI4a6IMdgf42SH/t+vurKzkVuEwAvzxZXzp6d8LBLc0jgs5VClCItAFwnrGrGIvGT3P/AJjMbesRCzIn46n3eYz6Sdri9Zcs2xa2FaDUwOsIFZhfNoUalyMtGqEhpncQV9cMpHq0TwufRCU0bGHc9GRjOtk5UAGdqC9FZFqGSJB1jSvQmoygbJ', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '15, 16, 17', ') AND c.id IN (', '46, 51, 55', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7GWnsFrH7URyLruhUojkRse/oVokkgGh++dv/LJbOa+Aj/YFetlNyRSbKutOEHBHhA==', '202100916_1928', 1386, 1386, 481, 0, 0, 0),
('Num', '6, 7, 8', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '12, 13, 14', ') AND c.id IN (', '31, 35, 40', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7GWnsFrH7URyLruhUojkRse/oVokkgGh++dv/LJbOa+Aj/YFetlNyRSbKutOEHBHhA==', '202100916_1930', 1106, 1106, 12, 2, 0, 0),
('Num', 'primaria', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '4, 5, 6, 8, 9', ') AND c.id IN (', '8, 13, 16, 19, 26', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7GWnsFrH7URyLruhUojkRse/oVokkgGh++dv/LJbOa+Aj/YFetlNyRSbKutOEHBHhA==', '20191017', 0, 0, 0, 0, 0, NULL),
('Num', 'ciclos', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mTqQxBRxn2G7EHUl3iTEZRgaLLaMxIdoNOrE2LR80JzQBdjtLNFeTCD+oOsj9Iwq5qfYRLCpPqiY8A8kq88TTDelyQILlcQsHPxIa36/SKOoCrPD9RScbW5gGtKmBTGKJ0dwT7z5s0x/rtk5Iab5ohKF1kXdjDG8OW7mSKEOazWMGvU6UUlLBmSfFaDmOYM87xtWYs/gVt84sWRrFcaHZyzORcgOWLdlxFTcWxuHibGtqFBW1sN8r0OOt/OtJOMRADLZ+Ov3NArVApbauAzNpPawcbPQqEEyZNgGA8Eht38IpCz23ddoZbm39Cx86FgYBGE+qeiXDvzWnXrnwbJA5edZOjKa/GmJwfH+35w4dJI7MSdBZHSkoFfmdsAK7IA202KMXp/GxQAHPDpQmp3YGkSk72bv7VXsD+6aF3xTYHxqRdBsnV/6mAUoy3Ymv66D8WLP0cOq6p/k3NhG1sK25KlOJZqwVaJavSE9DY7tCSQz/4TkzBWkJICi54wO3Wd3g==', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '19, 20, 22, 23, 28, 30', ') AND c.id IN (', '59, 67, 71, 75, 106, 117', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7GWnsFrH7URyLruhUojkRse/oVokkgGh++dv/LJbOa+Aj/YFetlNyRSbKutOEHBHhA==', '20191017', 0, 0, 0, 0, 0, NULL),
('Tec', '9, 10, 11', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '15, 16, 17', ') AND c.id IN (', '43, 48, 56', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7GWnsFrH7URyLruhUojkRse/oVokkgGh++dv/LJbOa+Aj/YFetlNyRSbKutOEHBHhA==', '202100916_1931', 814, 814, 4, 0, 0, 0),
('Tec', '6, 7, 8', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '12, 13, 14', ') AND c.id IN (', '28, 32, 38', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7GWnsFrH7URyLruhUojkRse/oVokkgGh++dv/LJbOa+Aj/YFetlNyRSbKutOEHBHhA==', '202100916_1933', 1016, 1016, 7, 1, 0, 0),
('Tec', 'primaria', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '4, 5, 6, 8, 9', ') AND c.id IN (', '2, 4, 5, 6, 22', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7GWnsFrH7URyLruhUojkRse/oVokkgGh++dv/LJbOa+Aj/YFetlNyRSbKutOEHBHhA==', '20191017', 0, 0, 0, 0, 0, NULL),
('Tec', 'cicloIII', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '19', ') AND c.id IN (', '62', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7GWnsFrH7URyLruhUojkRse/oVokkgGh++dv/LJbOa+Aj/YFetlNyRSbKutOEHBHhA==', '20191017', 0, 0, 0, 0, 0, NULL),
('Tec', 'ciclos', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '19, 20, 22, 23, 28, 30', ') AND c.id IN (', '62, 68, 69, 78, 109, 114', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7GWnsFrH7URyLruhUojkRse/oVokkgGh++dv/LJbOa+Aj/YFetlNyRSbKutOEHBHhA==', '20191017', 0, 0, 0, 0, 0, NULL),
('Social', '9, 10, 11', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '15, 16, 17', ') AND c.id IN (', '45, 49, 53', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7GWnsFrH7URyLruhUojkRse/oVokkgGh++dv/LJbOa+Aj/YFetlNyRSbKutOEHBHhA==', '202100916_1935', 817, 817, 22, 0, 0, 0),
('Social', '6, 7, 8', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '12, 13, 14', ') AND c.id IN (', '30, 34, 37', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7GWnsFrH7URyLruhUojkRse/oVokkgGh++dv/LJbOa+Aj/YFetlNyRSbKutOEHBHhA==', '202100916_1936', 977, 977, 0, 0, 0, 0),
('Social', 'primaria', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '4, 5, 6, 8, 9', ') AND c.id IN (', '10, 11, 15, 20, 24', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7GWnsFrH7URyLruhUojkRse/oVokkgGh++dv/LJbOa+Aj/YFetlNyRSbKutOEHBHhA==', '20211026_1449', 1008, 1008, 0, 0, 0, 0),
('Social', 'ciclos', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '19, 20, 22, 23, 28, 30', ') AND c.id IN (', '60, 65, 72, 74, 111, 116', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7GWnsFrH7URyLruhUojkRse/oVokkgGh++dv/LJbOa+Aj/YFetlNyRSbKutOEHBHhA==', '20191017', 0, 0, 0, 0, 0, NULL),
('Hum_Esp', '9', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '15', ') AND c.id IN (', '44, 96', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251119_1600', 268, 268, 19, 0, 0, 0),
('Hum_Esp', '10', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '16', ') AND c.id IN (', '50, 98', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251119_1606', 328, 332, 25, 0, 0, 0),
('Hum_Esp', '11', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '17', ') AND c.id IN (', '54, 100', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251119_1610', 440, 440, 38, 0, 0, 0),
('Hum_Esp', '6', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '12', ') AND c.id IN (', '90', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251119_1549', 128, 128, 1, 0, 0, 0),
('Hum_Esp', '7', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '13', ') AND c.id IN (', '92', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251119_1554', 224, 224, 4, 0, 0, 0),
('Hum_Esp', '8', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '14', ') AND c.id IN (', '94', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251119_1557', 328, 328, 8, 0, 0, 0),
('Hum_Ing', '9', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '15', ') AND c.id IN (', '95', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251119_1604', 268, 201, 0, 0, 0, 0),
('Hum_Ing', '10', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '16', ') AND c.id IN (', '97', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251124_1751', 328, 332, 8, 29, 0, 0),
('Hum_Ing', '11', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '17', ') AND c.id IN (', '99', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251124_1756', 440, 440, 14, 36, 0, 0),
('Hum_Ing', '6', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '12', ') AND c.id IN (', '89', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251119_1550', 128, 128, 1, 0, 0, 0),
('Hum_Ing', '7', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '13', ') AND c.id IN (', '91', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251119_1555', 224, 224, 0, 0, 0, 0),
('Hum_Ing', '8', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '14', ') AND c.id IN (', '93', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251119_1557', 328, 328, 0, 0, 0, 0),
('Bio', '9', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '15', ') AND c.id IN (', '42', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251119_1559', 268, 268, 14, 0, 0, 0);
INSERT INTO tbl_querys_ra (pensamiento, grados, campos1, campos2, campos3, tablas, condicion1, condicion2, condicion3, condicion4, condicion5, orden, actualizado, seleccionados, insertados_tem, actualizados, nuevos, procesar, est_nue_no_reg) VALUES
('Bio', '10', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4oKpXs06a6eF3IarUjg2o7Dm5Q40glxsQm5nvO+g2Z8leTqLCthom/c/j5J7ndsbWB8+6EdlHjYtHPQw0izJIFHX8I5f+QjhbSfkQAhy0+6YvR47cH+uZaP3npjDiClKBIBudinhpOUiEFERONktgVx2avfkgCCxcD6VPiE/DdmbdwWnH+QqrghRMbtnPFy+WPOaLYb8T1WZa/olkRr7EqEAqpQW9gmU14ktJs+InDDJcs0x6axjJwalTc6IxzbdzttGZobihb5Oem3wXw85DCQ7B5G9hSCd3cer4t2A7GRQAY8qIhfE6RPoAAT5GMcB7ZxlSWn2sB3SGCfmuy/i8d6FQDxbdM3CGLP1e4gRXPOXHjprw93y5Wt6WVcp2dpaGty9pGX2bNn2k/otrCcF3mOQnhnOJ/AjsFgB9vlg5XKOrMkUpyaPbJyTotXVPw7C+IP9nuE/fgWCUhw9RFe2JY3i7coPqBLjIchaUq0ULT1sbHBvB5Xcl3D+fljXSj86N7dolalzulQzcVN0wnc2RjnUXYWnibysFJjeYUZ/Yi9yTAjgxLjK5jbZtZkwoFcL1dFQPlN1vE1Q8pZU+KexkMwWbjuO9RKsch6czlVMmvlrVhJD2p4VIwrEOH+p85QGiUBw+i5ZCZxMgB8RSN57wxiyYfeqWAViRUx82y7w1UlD', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '16', ') AND c.id IN (', '135', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251119_1606', 328, 332, 5, 0, 0, 0),
('Bio', '11', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4oKpXs06a6eF3IarUjg2o7Dm5Q40glxsQm5nvO+g2Z8l9dIpcpA95gcm5gr4kWA64La9kW/xIzmqF9XN2cbISnvyULDCt3qWs/rdznLXaQtZ3q+vhbPib0wzVKMCl5JHqCIPCDAHF6SxOv8Xw62vxEhRbF1wSV2PfqHNA1sqkv1spenRJMWU/E7CaSUTeAYWFKgUcixIfbCmf8RA29J9ijhKa6MQlO3R6L/LCvZN8kPz0/J7Wj17OFLr9sOujhY3k3CQTTav04mI/dGdGk6LV3uCwZO4K8fvgva7bIALTmd1bkzAdW/kGyUoQcg7NXF89vWJzv3Mu8Tap4hKy2f6+8upMIAuWDQ365kMCMMIpEvyxupS/9HTmd5gJEa+JIaL1PCWvUMzM7ZMKmOh99ZXwJTHePwp377j5TER0XwR7X88MkqSqbAgXLM+9WUt83TVurunjfnamce/tptrYPQNyGcPxLHPvbNLhv4bq0HRrOMJtVqLm1dmvfkH3f5fiHmO4wiMRr0e4/R7yvbdR5vStPw9yReMdtmRL7P/R2On/XpD76K782nsGXkcug7GcxB7b/L9gXZl7ZjZyBHwDZK28rgIjFwoJ1wrKe7+1BChbNW4Dk432eTiQpCKwhQ0x1fkpHRS4OZr1cL+0RuHXQEiWzC0gYEk45SpBUZ9J1nplNtg', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '17', ') AND c.id IN (', '139', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251119_1609', 440, 440, 0, 0, 0, 0),
('Bio', '6', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '12', ') AND c.id IN (', '27', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251119_1549', 128, 128, 3, 0, 0, 0),
('Bio', '7', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '13', ') AND c.id IN (', '36', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251119_1553', 224, 224, 1, 0, 0, 0),
('Bio', '8', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '14', ') AND c.id IN (', '41', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251119_1557', 328, 328, 5, 0, 0, 0),
('Num', '9', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mTqQxBRxn2G7EHUl3iTEZTep/kmpVl+JKfY8QZyaN5L+dbME3FrCcxwMBaVuQ/4HtSbjVsfJw9Cu6oyDHSe7fywb5Kd0AQUD8dw3+7gOcqbcnAx9Q8MJ3pALnmxkiMDvg3MlX6hFnot7GURaQ/QKDHj/u9i1LBRErO7vRzEJF1xyhWWqeyb1ZZdaNKjqI6rwVVaWkxOgKhogzGDVPrLLoaZrHr2Rdrky3mrK/kcZK3+zTHHhYYrhTyA1STeOozNaunAx1m/iVYlEUw248jljlb9Y3LxehHAN7WkMw/cpdaZpWzDnM0O8rXivaFwuZLEzZdhDjSU9SRjrNWmtL2eefl/PyGYJUXZmNsDpNwIzkYRtXx0hLVI2FFI4a6IMdgf42SH/t+vurKzkVuEwAvzxZXzp6d8LBLc0jgs5VClCItAFwnrGrGIvGT3P/AJjMbesRCzIn46n3eYz6Sdri9Zcs2xa2FaDUwOsIFZhfNoUalyMtGqEhpncQV9cMpHq0TwufRCU0bGHc9GRjOtk5UAGdqC9FZFqGSJB1jSvQmoygbJ', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '15', ') AND c.id IN (', '46', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251119_1605', 268, 268, 18, 0, 0, 0),
('Num', '10', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '16', ') AND c.id IN (', '51', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251120_1110', 328, 332, 0, 0, 0, 0),
('Num', '11', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '17', ') AND c.id IN (', '55', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251119_1610', 440, 440, 10, 0, 0, 0),
('Num', '6', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '12', ') AND c.id IN (', '31', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251119_1550', 128, 128, 4, 0, 0, 0),
('Num', '7', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '13', ') AND c.id IN (', '35', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251119_1555', 224, 224, 8, 0, 0, 0),
('Num', '8', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '14', ') AND c.id IN (', '40', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251119_1558', 328, 328, 0, 0, 0, 0),
('Tec', '9', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '15', ') AND c.id IN (', '43', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251119_1606', 268, 268, 0, 0, 0, 0),
('Tec', '10', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '16', ') AND c.id IN (', '48', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251119_1608', 328, 332, 4, 4, 0, 0),
('Tec', '11', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '17', ') AND c.id IN (', '56', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251119_1612', 440, 440, 0, 0, 0, 0),
('Tec', '6', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '12', ') AND c.id IN (', '28', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251119_1553', 128, 128, 3, 0, 0, 0),
('Tec', '7', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '13', ') AND c.id IN (', '32', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251119_1556', 224, 224, 9, 0, 0, 0),
('Tec', '8', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '14', ') AND c.id IN (', '38', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251119_1559', 328, 328, 19, 0, 0, 0),
('Social', '9', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '15', ') AND c.id IN (', '45', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251119_1605', 268, 268, 28, 0, 0, 0),
('Social', '10', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '16', ') AND c.id IN (', '49', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251119_1608', 328, 332, 24, 0, 0, 0),
('Social', '11', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '17', ') AND c.id IN (', '53', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251119_1611', 440, 440, 29, 0, 0, 0),
('Social', '6', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '12', ') AND c.id IN (', '30', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251119_1553', 128, 128, 6, 0, 0, 0),
('Social', '7', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '13', ') AND c.id IN (', '34', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251119_1556', 224, 224, 4, 0, 0, 0),
('Social', '8', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '14', ') AND c.id IN (', '37', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251119_1558', 328, 328, 6, 0, 0, 0),
('Hum_Esp', '1', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '4', ') AND c.id IN (', '80', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251119_1538', 16, 16, 0, 0, 0, 0),
('Hum_Esp', '2', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '5', ') AND c.id IN (', '82', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251119_1540', 36, 36, 0, 0, 0, 0),
('Hum_Esp', '3', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '6', ') AND c.id IN (', '84', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251119_1542', 80, 80, 0, 0, 0, 0),
('Hum_Esp', '4', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '8', ') AND c.id IN (', '86', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251119_1544', 64, 64, 0, 0, 0, 0),
('Hum_Esp', '5', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '9', ') AND c.id IN (', '88', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251119_1547', 140, 140, 0, 0, 0, 0),
('Hum_Esp', 'Ciclo III', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4/8PM5dnuqffW72CfepKlCc3MPQWBcFitxKNAwD3NYJWkxutHYh7AO2l4iZO+DroYp2sJ09xA1uomOJDE5SH2kHGf/A3BV88iJQUivqN8tNPrOjuxZr/lsRnxSfXRYweREhwTy+dk9djoOT7tAgJEk7KUtaidNs8gBEciTS51RRL5+FQ7wgr9niTYhksX4mekgS+EWxSrFIstCeB23mEdGyeYgZjHiFMOjaPRu/UawV+B3xa6wpzZ4lSJJwNeYkjo=', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '38', ') AND c.id IN (', '157', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251120_0945', 1, 0, 0, 0, 0, 0),
('Hum_Esp', 'Ciclo IV', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4/8PM5dnuqffW72CfepKlCc3MPQWBcFitxKNAwD3NYJWkxutHYh7AO2l4iZO+DroYp2sJ09xA1uomOJDE5SH2kHGf/A3BV88iJQUivqN8tNPrOjuxZr/lsRnxSfXRYweREhwTy+dk9djoOT7tAgJEk7KUtaidNs8gBEciTS51RRL5+FQ7wgr9niTYhksX4mekgS+EWxSrFIstCeB23mEdGyeYgZjHiFMOjaPRu/UawV+B3xa6wpzZ4lSJJwNeYkjo=', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '39', ') AND c.id IN (', '163', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251120_0947', 2, 0, 0, 0, 0, 0),
('Hum_Esp', 'Ciclo V', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4/8PM5dnuqffW72CfepKlCc3MPQWBcFitxKNAwD3NYJWkxutHYh7AO2l4iZO+DroYp2sJ09xA1uomOJDE5SH2kHGf/A3BV88iJQUivqN8tNPrOjuxZr/lsRnxSfXRYweREhwTy+dk9djoOT7tAgJEk7KUtaidNs8gBEciTS51RRL5+FQ7wgr9niTYhksX4mekgS+EWxSrFIstCeB23mEdGyeYgZjHiFMOjaPRu/UawV+B3xa6wpzZ4lSJJwNeYkjo=', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '40', ') AND c.id IN (', '168', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251120_0948', 2, 0, 0, 0, 0, 0),
('Hum_Esp', 'Ciclo VI', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4/8PM5dnuqffW72CfepKlCc3MPQWBcFitxKNAwD3NYJWkxutHYh7AO2l4iZO+DroYp2sJ09xA1uomOJDE5SH2kHGf/A3BV88iJQUivqN8tNPrOjuxZr/lsRnxSfXRYweREhwTy+dk9djoOT7tAgJEk7KUtaidNs8gBEciTS51RRL5+FQ7wgr9niTYhksX4mekgS+EWxSrFIstCeB23mEdGyeYgZjHiFMOjaPRu/UawV+B3xa6wpzZ4lSJJwNeYkjo=', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '41', ') AND c.id IN (', '174', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251120_0950', 0, 0, 0, 0, 0, 0),
('Hum_Ing', '1', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '4', ') AND c.id IN (', '79', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251119_1538', 16, 16, 0, 0, 0, 0),
('Hum_Ing', '2', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '5', ') AND c.id IN (', '81', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251119_1540', 36, 36, 0, 0, 0, 0),
('Hum_Ing', '3', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '6', ') AND c.id IN (', '83', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251119_1542', 80, 80, 0, 0, 0, 0),
('Hum_Ing', '4', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '8', ') AND c.id IN (', '85', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251119_1544', 64, 64, 0, 0, 0, 0);
INSERT INTO tbl_querys_ra (pensamiento, grados, campos1, campos2, campos3, tablas, condicion1, condicion2, condicion3, condicion4, condicion5, orden, actualizado, seleccionados, insertados_tem, actualizados, nuevos, procesar, est_nue_no_reg) VALUES
('Hum_Ing', '5', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '9', ') AND c.id IN (', '87', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251119_1547', 140, 140, 0, 0, 0, 0),
('Bio', '1', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '4', ') AND c.id IN (', '3', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251119_1537', 16, 16, 0, 0, 0, 0),
('Bio', '2', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '5', ') AND c.id IN (', '7', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251119_1540', 36, 36, 0, 0, 0, 0),
('Bio', '3', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '6', ') AND c.id IN (', '17', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251119_1541', 80, 80, 0, 0, 0, 0),
('Bio', '4', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '8', ') AND c.id IN (', '18', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251119_1544', 64, 64, 0, 0, 0, 0),
('Bio', '5', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '9', ') AND c.id IN (', '25', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251119_1547', 140, 140, 0, 0, 0, 0),
('Bio', 'Ciclo III', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '38', ') AND c.id IN (', '159', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251120_0944', 1, 0, 0, 0, 0, 0),
('Bio', 'Ciclo IV', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '39', ') AND c.id IN (', '161', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251120_0946', 16, 0, 0, 0, 0, 0),
('Bio', 'Ciclo V', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4oKpXs06a6eF3IarUjg2o7Dm5Q40glxsQm5nvO+g2Z8l9IpQ0VTcj+x3ZIIR2PzxkEBX/hdffThNPBQ5tnQp4HM0X3rfE95cO93xzK0WUZ0PBTF8fHuYjxA1Ey8Y+ZtkJrE0HeJXH/jXG1JshGc2rcXfVyQ79oJawYTlji4GlxPycjhYzn7HZYL2FJiDfKu5dtpS6lY6NW9JuYNl0RP/pKqHXdaS2hsz7B7VEC3cwNRXiKIpuauxKvRnGrA5auJG5iZ6snpGwMMbXmn22hdcSQDGNVeWGcP4E9RwcdZOTWQT7xGGyQTkc2LiSmbjDS4du8LlBE3A9FyECsmMXor5lK+mZsSyhmGFiUd/rOh633VSVACMCRpC6Lo3cj2oK+rEi7mohAlaACRC/aMTXRFz7BIf/d5mz4Ici/vPR74ZI2FjbwM3YOwZMo7lkOVLS1vzz4X4W8wtm5HrRV4NH54EOfnCagwDoHfYNYiu64ZrNENVK09diGof8tAbQnIlQigago8DiroI0g4n45rrRJ7qqzqykJ9GLeWglkHccIRHN/P3cdvn43hKPC9XIA4e3Y6kI0KJqNCNF6d0BzQMtFo5ZrJpfA6Y1ZX/adEZjc65QPgHcXtGEnagl0f0wUf2hw+J+S58HTDyEGZII+SSGPmgVns=', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '40', ') AND c.id IN (', '171', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251120_0948', 3, 0, 0, 0, 0, 0),
('Bio', 'Ciclo VI', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4oKpXs06a6eF3IarUjg2o7Dm5Q40glxsQm5nvO+g2Z8l9IpQ0VTcj+x3ZIIR2PzxkEBX/hdffThNPBQ5tnQp4HM0X3rfE95cO93xzK0WUZ0PBTF8fHuYjxA1Ey8Y+ZtkJrE0HeJXH/jXG1JshGc2rcXfVyQ79oJawYTlji4GlxPycjhYzn7HZYL2FJiDfKu5dtpS6lY6NW9JuYNl0RP/pKqHXdaS2hsz7B7VEC3cwNRXiKIpuauxKvRnGrA5auJG5iZ6snpGwMMbXmn22hdcSQDGNVeWGcP4E9RwcdZOTWQT7xGGyQTkc2LiSmbjDS4du8LlBE3A9FyECsmMXor5lK+mZsSyhmGFiUd/rOh633VSVACMCRpC6Lo3cj2oK+rEi7mohAlaACRC/aMTXRFz7BIf/d5mz4Ici/vPR74ZI2FjbwM3YOwZMo7lkOVLS1vzz4X4W8wtm5HrRV4NH54EOfnCagwDoHfYNYiu64ZrNENVK09diGof8tAbQnIlQigago8DiroI0g4n45rrRJ7qqzqykJ9GLeWglkHccIRHN/P3cdvn43hKPC9XIA4e3Y6kI0KJqNCNF6d0BzQMtFo5ZrJpfA6Y1ZX/adEZjc65QPgHcXtGEnagl0f0wUf2hw+J+S58HTDyEGZII+SSGPmgVns=', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '41', ') AND c.id IN (', '177', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251120_0950', 1, 0, 0, 0, 0, 0),
('Num', '1', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '4', ') AND c.id IN (', '8', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251119_1538', 16, 16, 0, 0, 0, 0),
('Num', '2', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '5', ') AND c.id IN (', '13', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251119_1540', 36, 36, 0, 0, 0, 0),
('Num', '3', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '6', ') AND c.id IN (', '16', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251119_1543', 80, 80, 0, 0, 0, 0),
('Num', '4', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '8', ') AND c.id IN (', '19', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251119_1546', 64, 64, 0, 0, 0, 0),
('Num', '5', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '9', ') AND c.id IN (', '26', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251120_0938', 141, 140, 0, 0, 0, 1),
('Num', 'Ciclo III', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mTqQxBRxn2G7EHUl3iTEZRgaLLaMxIdoNOrE2LR80JzQBdjtLNFeTCD+oOsj9Iwq5qfYRLCpPqiY8A8kq88TTDelyQILlcQsHPxIa36/SKOoCrPD9RScbW5gGtKmBTGKJ0dwT7z5s0x/rtk5Iab5ohKF1kXdjDG8OW7mSKEOazWMGvU6UUlLBmSfFaDmOYM87xtWYs/gVt84sWRrFcaHZyzORcgOWLdlxFTcWxuHibGtqFBW1sN8r0OOt/OtJOMRADLZ+Ov3NArVApbauAzNpPawcbPQqEEyZNgGA8Eht38IpCz23ddoZbm39Cx86FgYBGE+qeiXDvzWnXrnwbJA5edZOjKa/GmJwfH+35w4dJI7MSdBZHSkoFfmdsAK7IA202KMXp/GxQAHPDpQmp3YGkSk72bv7VXsD+6aF3xTYHxqRdBsnV/6mAUoy3Ymv66D8WLP0cOq6p/k3NhG1sK25KlOJZqwVaJavSE9DY7tCSQz/4TkzBWkJICi54wO3Wd3g==', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '38', ') AND c.id IN (', '155', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251120_0945', 0, 0, 0, 0, 0, 0),
('Num', 'Ciclo IV', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mTqQxBRxn2G7EHUl3iTEZRgaLLaMxIdoNOrE2LR80JzQBdjtLNFeTCD+oOsj9Iwq5qfYRLCpPqiY8A8kq88TTDelyQILlcQsHPxIa36/SKOoCrPD9RScbW5gGtKmBTGKJ0dwT7z5s0x/rtk5Iab5ohKF1kXdjDG8OW7mSKEOazWMGvU6UUlLBmSfFaDmOYM87xtWYs/gVt84sWRrFcaHZyzORcgOWLdlxFTcWxuHibGtqFBW1sN8r0OOt/OtJOMRADLZ+Ov3NArVApbauAzNpPawcbPQqEEyZNgGA8Eht38IpCz23ddoZbm39Cx86FgYBGE+qeiXDvzWnXrnwbJA5edZOjKa/GmJwfH+35w4dJI7MSdBZHSkoFfmdsAK7IA202KMXp/GxQAHPDpQmp3YGkSk72bv7VXsD+6aF3xTYHxqRdBsnV/6mAUoy3Ymv66D8WLP0cOq6p/k3NhG1sK25KlOJZqwVaJavSE9DY7tCSQz/4TkzBWkJICi54wO3Wd3g==', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '39', ') AND c.id IN (', '166', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251120_0947', 0, 0, 0, 0, 0, 0),
('Num', 'Ciclo V', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '40', ') AND c.id IN (', '172', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251120_0949', 6, 0, 0, 0, 0, 0),
('Num', 'Ciclo VI', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '41', ') AND c.id IN (', '178', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251120_0950', 0, 0, 0, 0, 0, 0),
('Tec', '1', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '4', ') AND c.id IN (', '2', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251119_1539', 16, 16, 0, 0, 0, 0),
('Tec', '2', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '5', ') AND c.id IN (', '4', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251119_1541', 36, 36, 0, 0, 0, 0),
('Tec', '3', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '6', ') AND c.id IN (', '5', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251119_1543', 80, 80, 0, 0, 0, 0),
('Tec', '4', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '8', ') AND c.id IN (', '6', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251119_1546', 64, 64, 0, 0, 0, 0),
('Tec', '5', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '9', ') AND c.id IN (', '22', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251119_1548', 140, 140, 0, 0, 0, 0),
('Tec', 'Ciclo III', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '38', ') AND c.id IN (', '158', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251120_0946', 1, 0, 0, 0, 0, 0),
('Tec', 'Ciclo IV', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '39', ') AND c.id IN (', '165', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251120_0948', 1, 0, 0, 0, 0, 0),
('Tec', 'Ciclo V', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '40', ') AND c.id IN (', '170', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251120_0949', 1, 0, 0, 0, 0, 0),
('Tec', 'Ciclo VI', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '41', ') AND c.id IN (', '176', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251120_0951', 1, 0, 0, 0, 0, 0),
('Social', '1', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '4', ') AND c.id IN (', '10', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251119_1539', 16, 16, 0, 0, 0, 0),
('Social', '2', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '5', ') AND c.id IN (', '11', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251119_1541', 36, 36, 0, 0, 0, 0),
('Social', '3', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '6', ') AND c.id IN (', '15', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251119_1543', 80, 80, 0, 0, 0, 0),
('Social', '4', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '8', ') AND c.id IN (', '20', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251119_1546', 64, 64, 0, 0, 0, 0),
('Social', '5', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '9', ') AND c.id IN (', '24', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251119_1548', 140, 140, 0, 0, 0, 0),
('Social', 'Ciclo III', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '38', ') AND c.id IN (', '160', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251120_0946', 1, 0, 0, 0, 0, 0),
('Social', 'Ciclo IV', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '39', ') AND c.id IN (', '164', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251120_0947', 1, 0, 0, 0, 0, 0),
('Social', 'Ciclo V', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '40', ') AND c.id IN (', '169', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251120_0949', 2, 0, 0, 0, 0, 0);
INSERT INTO tbl_querys_ra (pensamiento, grados, campos1, campos2, campos3, tablas, condicion1, condicion2, condicion3, condicion4, condicion5, orden, actualizado, seleccionados, insertados_tem, actualizados, nuevos, procesar, est_nue_no_reg) VALUES
('Social', 'Ciclo VI', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '41', ') AND c.id IN (', '175', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251120_0951', 0, 0, 0, 0, 0, 0),
('Hum_Esp', 'Ciclo I', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mTqQxBRxn2G7EHUl3iTEZQW5Scd6qo/PK+UlGec4bujeqAXLGeMRhFkmo505lHQ65NTMJpfdRuOFYopGxaBN9HYfXXSsiqPHlIc07EPj7696ycnd2Mnsx0CAh84UCMVNvHe6K1DGByHUBAPZCMKg3hiLh5grAEumknWMzvqVAofu1F3RB0WQIk3Eszpcmq6v/QRRvQ+Ag9C1I70jN1h4MS2urfwzHzLh+MSzPCS1kqlRoIK8Lw+8UGz2CgXGzo+cJytiX8qoZouKoxmlT3kR4+a2g3/dC/nwV4knBmRIfqvYQUCUFqt4lsLrkz7ezmP6B3iXQgxbW+ntK1MEwaTBczxhHp5GCLeuNEom7Ay9Q/Q/sM+h5dFMQ6GBXyJDDgO2oKCGxuqNF5f8mfmKqoDNuBWJLc59voiyQHhmOUrZZkkO2JTTGwCWZC6cuTlqHrsFTVAQn5IaLn/o2MpUbBPKorhesxvNUz1Q2qZJQsbJRwLoNV1avQUIyy7p2Zfx5LwPOyxKvtffr0oLwZtr4WhnKbDLez1iqbzPgKPrH1EhdZyQeus5g0ZOse4WTp6NWM7RIPe6eMx2aWWwllq6uRYCI1u0iQLZdU+87OrL0Jh+dEw', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '36', ') AND c.id IN (', '143', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7GWnsFrH7URyLruhUojkRse/oVokkgGh++dv/LJbOa+Aj/YFetlNyRSbKutOEHBHhA==', '20251120_0939', 0, 0, 0, 0, 0, 0),
('Hum_Ing', 'Ciclo I', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mTqQxBRxn2G7EHUl3iTEZQW5Scd6qo/PK+UlGec4bujeqAXLGeMRhFkmo505lHQ65NTMJpfdRuOFYopGxaBN9HYfXXSsiqPHlIc07EPj7696ycnd2Mnsx0CAh84UCMVNvHe6K1DGByHUBAPZCMKg3hiLh5grAEumknWMzvqVAofu1F3RB0WQIk3Eszpcmq6v/QRRvQ+Ag9C1I70jN1h4MS2urfwzHzLh+MSzPCS1kqlRoIK8Lw+8UGz2CgXGzo+cJytiX8qoZouKoxmlT3kR4+a2g3/dC/nwV4knBmRIfqvYQUCUFqt4lsLrkz7ezmP6B3iXQgxbW+ntK1MEwaTBczxhHp5GCLeuNEom7Ay9Q/Q/sM+h5dFMQ6GBXyJDDgO2oKCGxuqNF5f8mfmKqoDNuBWJLc59voiyQHhmOUrZZkkO2JTTGwCWZC6cuTlqHrsFTVAQn5IaLn/o2MpUbBPKorhesxvNUz1Q2qZJQsbJRwLoNV1avQUIyy7p2Zfx5LwPOyxKvtffr0oLwZtr4WhnKbDLez1iqbzPgKPrH1EhdZyQeus5g0ZOse4WTp6NWM7RIPe6eMx2aWWwllq6uRYCI1u0iQLZdU+87OrL0Jh+dEw', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '36', ') AND c.id IN (', '144', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7GWnsFrH7URyLruhUojkRse/oVokkgGh++dv/LJbOa+Aj/YFetlNyRSbKutOEHBHhA==', '20251120_0940', 0, 0, 0, 0, 0, 0),
('Hum_Esp', 'Ciclo II', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mTqQxBRxn2G7EHUl3iTEZQW5Scd6qo/PK+UlGec4bujeqAXLGeMRhFkmo505lHQ65NTMJpfdRuOFYopGxaBN9HYfXXSsiqPHlIc07EPj7696ycnd2Mnsx0CAh84UCMVNvHe6K1DGByHUBAPZCMKg3hiLh5grAEumknWMzvqVAofu1F3RB0WQIk3Eszpcmq6v/QRRvQ+Ag9C1I70jN1h4MS2urfwzHzLh+MSzPCS1kqlRoIK8Lw+8UGz2CgXGzo+cJytiX8qoZouKoxmlT3kR4+a2g3/dC/nwV4knBmRIfqvYQUCUFqt4lsLrkz7ezmP6B3iXQgxbW+ntK1MEwaTBczxhHp5GCLeuNEom7Ay9Q/Q/sM+h5dFMQ6GBXyJDDgO2oKCGxuqNF5f8mfmKqoDNuBWJLc59voiyQHhmOUrZZkkO2JTTGwCWZC6cuTlqHrsFTVAQn5IaLn/o2MpUbBPKorhesxvNUz1Q2qZJQsbJRwLoNV1avQUIyy7p2Zfx5LwPOyxKvtffr0oLwZtr4WhnKbDLez1iqbzPgKPrH1EhdZyQeus5g0ZOse4WTp6NWM7RIPe6eMx2aWWwllq6uRYCI1u0iQLZdU+87OrL0Jh+dEw', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '37', ') AND c.id IN (', '154', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7GWnsFrH7URyLruhUojkRse/oVokkgGh++dv/LJbOa+Aj/YFetlNyRSbKutOEHBHhA==', '20251120_0941', 1, 0, 0, 0, 0, 0),
('Hum_Ing', 'Ciclo II', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mTqQxBRxn2G7EHUl3iTEZQW5Scd6qo/PK+UlGec4bujeqAXLGeMRhFkmo505lHQ65NTMJpfdRuOFYopGxaBN9HYfXXSsiqPHlIc07EPj7696ycnd2Mnsx0CAh84UCMVNvHe6K1DGByHUBAPZCMKg3hiLh5grAEumknWMzvqVAofu1F3RB0WQIk3Eszpcmq6v/QRRvQ+Ag9C1I70jN1h4MS2urfwzHzLh+MSzPCS1kqlRoIK8Lw+8UGz2CgXGzo+cJytiX8qoZouKoxmlT3kR4+a2g3/dC/nwV4knBmRIfqvYQUCUFqt4lsLrkz7ezmP6B3iXQgxbW+ntK1MEwaTBczxhHp5GCLeuNEom7Ay9Q/Q/sM+h5dFMQ6GBXyJDDgO2oKCGxuqNF5f8mfmKqoDNuBWJLc59voiyQHhmOUrZZkkO2JTTGwCWZC6cuTlqHrsFTVAQn5IaLn/o2MpUbBPKorhesxvNUz1Q2qZJQsbJRwLoNV1avQUIyy7p2Zfx5LwPOyxKvtffr0oLwZtr4WhnKbDLez1iqbzPgKPrH1EhdZyQeus5g0ZOse4WTp6NWM7RIPe6eMx2aWWwllq6uRYCI1u0iQLZdU+87OrL0Jh+dEw', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '37', ') AND c.id IN (', '153', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7GWnsFrH7URyLruhUojkRse/oVokkgGh++dv/LJbOa+Aj/YFetlNyRSbKutOEHBHhA==', '20251120_0941', 0, 0, 0, 0, 0, 0),
('Bio', 'Ciclo I', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '36', ') AND c.id IN (', '147', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7GWnsFrH7URyLruhUojkRse/oVokkgGh++dv/LJbOa+Aj/YFetlNyRSbKutOEHBHhA==', '20251120_0939', 0, 0, 0, 0, 0, 0),
('Bio', 'Ciclo II', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '37', ') AND c.id IN (', '152', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7GWnsFrH7URyLruhUojkRse/oVokkgGh++dv/LJbOa+Aj/YFetlNyRSbKutOEHBHhA==', '20251120_0941', 4, 0, 0, 0, 0, 0),
('Num', 'Ciclo I', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mTqQxBRxn2G7EHUl3iTEZRgaLLaMxIdoNOrE2LR80JzQBdjtLNFeTCD+oOsj9Iwq5qfYRLCpPqiY8A8kq88TTDelyQILlcQsHPxIa36/SKOoCrPD9RScbW5gGtKmBTGKJ0dwT7z5s0x/rtk5Iab5ohKF1kXdjDG8OW7mSKEOazWMGvU6UUlLBmSfFaDmOYM87xtWYs/gVt84sWRrFcaHZyzORcgOWLdlxFTcWxuHibGtqFBW1sN8r0OOt/OtJOMRADLZ+Ov3NArVApbauAzNpPawcbPQqEEyZNgGA8Eht38IpCz23ddoZbm39Cx86FgYBGE+qeiXDvzWnXrnwbJA5edZOjKa/GmJwfH+35w4dJI7MSdBZHSkoFfmdsAK7IA202KMXp/GxQAHPDpQmp3YGkSk72bv7VXsD+6aF3xTYHxqRdBsnV/6mAUoy3Ymv66D8WLP0cOq6p/k3NhG1sK25KlOJZqwVaJavSE9DY7tCSQz/4TkzBWkJICi54wO3Wd3g==', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '36', ') AND c.id IN (', '148', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7GWnsFrH7URyLruhUojkRse/oVokkgGh++dv/LJbOa+Aj/YFetlNyRSbKutOEHBHhA==', '20251120_0940', 0, 0, 0, 0, 0, 0),
('Num', 'Ciclo II', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mTqQxBRxn2G7EHUl3iTEZRgaLLaMxIdoNOrE2LR80JzQBdjtLNFeTCD+oOsj9Iwq5qfYRLCpPqiY8A8kq88TTDelyQILlcQsHPxIa36/SKOoCrPD9RScbW5gGtKmBTGKJ0dwT7z5s0x/rtk5Iab5ohKF1kXdjDG8OW7mSKEOazWMGvU6UUlLBmSfFaDmOYM87xtWYs/gVt84sWRrFcaHZyzORcgOWLdlxFTcWxuHibGtqFBW1sN8r0OOt/OtJOMRADLZ+Ov3NArVApbauAzNpPawcbPQqEEyZNgGA8Eht38IpCz23ddoZbm39Cx86FgYBGE+qeiXDvzWnXrnwbJA5edZOjKa/GmJwfH+35w4dJI7MSdBZHSkoFfmdsAK7IA202KMXp/GxQAHPDpQmp3YGkSk72bv7VXsD+6aF3xTYHxqRdBsnV/6mAUoy3Ymv66D8WLP0cOq6p/k3NhG1sK25KlOJZqwVaJavSE9DY7tCSQz/4TkzBWkJICi54wO3Wd3g==', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '37', ') AND c.id IN (', '149', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7GWnsFrH7URyLruhUojkRse/oVokkgGh++dv/LJbOa+Aj/YFetlNyRSbKutOEHBHhA==', '20251120_0943', 0, 0, 0, 0, 0, 0),
('Tec', 'Ciclo I', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '36', ') AND c.id IN (', '145', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7GWnsFrH7URyLruhUojkRse/oVokkgGh++dv/LJbOa+Aj/YFetlNyRSbKutOEHBHhA==', '20251120_0940', 0, 0, 0, 0, 0, 0),
('Tec', 'Ciclo II', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '37', ') AND c.id IN (', '150', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7GWnsFrH7URyLruhUojkRse/oVokkgGh++dv/LJbOa+Aj/YFetlNyRSbKutOEHBHhA==', '20251120_0944', 0, 0, 0, 0, 0, 0),
('Social', 'Ciclo I', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '36', ') AND c.id IN (', '146', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7GWnsFrH7URyLruhUojkRse/oVokkgGh++dv/LJbOa+Aj/YFetlNyRSbKutOEHBHhA==', '20251120_0940', 0, 0, 0, 0, 0, 0),
('Social', 'Ciclo II', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4M+4tThbvajDFHz+N+6PDwEdSjc4jlsvR912QnjmXt29jelNstDZFHL4TOLygqRGNKwGcdrjXrJ85S8Yq/DCkVHGC2k1jfoZBO0BSkih5VdLN9K+b12RWlH2zT/K8rBiRpsTmEvE0bP81vIbzvLEvk', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '37', ') AND c.id IN (', '151', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7GWnsFrH7URyLruhUojkRse/oVokkgGh++dv/LJbOa+Aj/YFetlNyRSbKutOEHBHhA==', '20251120_0944', 1, 0, 0, 0, 0, 0),
('Hum_Ing', 'Ciclo III', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4/8PM5dnuqffW72CfepKlCc3MPQWBcFitxKNAwD3NYJWkxutHYh7AO2l4iZO+DroYp2sJ09xA1uomOJDE5SH2kHGf/A3BV88iJQUivqN8tNPrOjuxZr/lsRnxSfXRYweREhwTy+dk9djoOT7tAgJEk7KUtaidNs8gBEciTS51RRL5+FQ7wgr9niTYhksX4mekgS+EWxSrFIstCeB23mEdGyeYgZjHiFMOjaPRu/UawV+B3xa6wpzZ4lSJJwNeYkjo=', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '38', ') AND c.id IN (', '156', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251120_0945', 0, 0, 0, 0, 0, 0),
('Hum_Ing', 'Ciclo IV', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4/8PM5dnuqffW72CfepKlCc3MPQWBcFitxKNAwD3NYJWkxutHYh7AO2l4iZO+DroYp2sJ09xA1uomOJDE5SH2kHGf/A3BV88iJQUivqN8tNPrOjuxZr/lsRnxSfXRYweREhwTy+dk9djoOT7tAgJEk7KUtaidNs8gBEciTS51RRL5+FQ7wgr9niTYhksX4mekgS+EWxSrFIstCeB23mEdGyeYgZjHiFMOjaPRu/UawV+B3xa6wpzZ4lSJJwNeYkjo=', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '39', ') AND c.id IN (', '162', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251120_0947', 0, 0, 0, 0, 0, 0),
('Hum_Ing', 'Ciclo V', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4/8PM5dnuqffW72CfepKlCc3MPQWBcFitxKNAwD3NYJWkxutHYh7AO2l4iZO+DroYp2sJ09xA1uomOJDE5SH2kHGf/A3BV88iJQUivqN8tNPrOjuxZr/lsRnxSfXRYweREhwTy+dk9djoOT7tAgJEk7KUtaidNs8gBEciTS51RRL5+FQ7wgr9niTYhksX4mekgS+EWxSrFIstCeB23mEdGyeYgZjHiFMOjaPRu/UawV+B3xa6wpzZ4lSJJwNeYkjo=', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '40', ') AND c.id IN (', '167', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251120_0948', 0, 0, 0, 0, 0, 0),
('Hum_Ing', 'Ciclo VI', 'WV/8nnlUkHpylASPyRsq0mnGr90fD7T3+oj6T8v1igHqDgAJrL7ztpYGh/BSR9Fe7CMWTGs1B+uILls2GFdE4mUjWPoXaQuYwL8kkihJ1NS7sqtlkQTtPPT6QRmJdZazs3TNJiY1X+B5RU4Ne5VcC4UnCWTUipKXJRFY08o5lXwmY4nIImRb+hsT9cpBRWh8BEA/+AXJXuDnIyeqOj2fJtuOa6zQasLjJvJ6t3ysTqNoW/I7e9d3650sD/WsBu8LzQLqpb0HcEnjeCmJxGrXQSRPH+lZXf7Nw8UDQnil9F4/8PM5dnuqffW72CfepKlCc3MPQWBcFitxKNAwD3NYJWkxutHYh7AO2l4iZO+DroYp2sJ09xA1uomOJDE5SH2kHGf/A3BV88iJQUivqN8tNPrOjuxZr/lsRnxSfXRYweREhwTy+dk9djoOT7tAgJEk7KUtaidNs8gBEciTS51RRL5+FQ7wgr9niTYhksX4mekgS+EWxSrFIstCeB23mEdGyeYgZjHiFMOjaPRu/UawV+B3xa6wpzZ4lSJJwNeYkjo=', '', '', 'tusBBtALtludCvQ9r9WrYq3eFS8At+k1hw/8bVAe0usTNKwVVfleqeupeUNF36YKlPKzLzxwaivSQjXuY0J6LJO1woOoXU4fy9YBV3pUHfQvWhnx8KG70FPzqlfPA8GzzhIZ9tXxKGiZf92hyYBIFZDGjY131TU19/EN4680Wy5XG0MR7q6YWRVa+T2xbun1Esvkuaq7glniQXRquBLhRw==', 'WHERE u.id = ra.userid AND ra.contextid = ct.id AND ra.roleid = r.id AND ct.instanceid = c.id AND c.category = cc.id AND gi.courseid = c.id AND gi.id = gg.itemid AND gg.userid = u.id AND ct.contextlevel = 50 AND ra.roleid = 5 AND cc.id IN (', '41', ') AND c.id IN (', '173', 'UXFOzGfHKtZ0AiHOEHGKYgieVUnlyshLSPxaFyR/VMejnSRN186QAWOYaWyrEKgIABnLcSr9wluLX6M2paqOLXA3t5tAyJ/lF/GCcjaJW+mZe2WYdHoSSDXQ7sZoUnuUHvd/ViiPd2hWu7rqhZz9fwB8IpcifYs64wjYglKnfaTsS2vWqbiY4r48YYqur79yCNBL1VZX84wJWkU67X41Lw==', 'DDSv1vxs0yqVg6+v1IjN7B+fFoIlt/SkjbPOjm5RYz7N30MXzJzwunG1jb31OvdHsHS0APdc8472qE3tXvi6QQ==', '20251120_0950', 0, 0, 0, 0, 0, 0);

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_solicitudes_matricula;

CREATE TABLE tbl_solicitudes_matricula (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_est int(11) DEFAULT NULL,
  msg varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  sentencia varchar(1200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_asistencias;

CREATE TABLE tbl_asistencias (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  n_documento varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  nombre varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  grado int(2) NOT NULL,
  nombre_a varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  celular_a varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  fecha date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_cargos;

CREATE TABLE tbl_cargos (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  cargo varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

INSERT INTO tbl_cargos (cargo) VALUES
('RECTOR'),
('RECTORA'),
('COORDINADOR ACADEMICO'),
('COORDINADORA ACADEMICA'),
('SECRETARIO ACADEMICO'),
('SECRETARIA ACADEMICA'),
('PSICOLOGO'),
('PSICOLOGA'),
('PSICOLOGO ADMINISTRATIVO'),
('PSICOLOGA ADMINISTRATIVA'),
('CONTADOR'),
('CONTADORA'),
('AUXILIAR CONTABLE'),
('AUXILIAR DE ARCHIVO'),
('TUTOR MEDIADOR'),
('TUTORA MEDIADORA'),
('PRUEBA1.'),
('ASISTENTE DE ADMISIONES'),
('AUXILIAR ADMINISTRATIVA'),
('SOPORTE TECNICO'),
('ASISTENTE ADMINISTRATIVO'),
('TUTOR'),
('DESARROLLADOR WEB'),
('DESARROLLADOR PHP MYSQL');

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_carnets;

CREATE TABLE tbl_carnets (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_emp_est int(11) NOT NULL,
  id_grado int(11) NOT NULL,
  tipo varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  ruta varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  ruta_codqr varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  a varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  msg_correo varchar(200) NOT NULL DEFAULT 'NA'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_categorias_blog;

CREATE TABLE tbl_categorias_blog (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  categoria varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

INSERT INTO tbl_categorias_blog (categoria) VALUES
('CONDECORACIONES'),
('EXPERIENCIAS EXITOSAS'),
('INVESTIGACIÓN GIU'),
('RESULTADOS ESTUDIANTES'),
('MAESTRO INVESTIGADOR');

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_cod_pre_matricula;

CREATE TABLE tbl_cod_pre_matricula (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  identificacion varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  periodo_lectivo int(11) NOT NULL,
  codigo varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  email_pre_mat varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_contratos;

CREATE TABLE tbl_contratos (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  n_documento varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  n_contrato varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  ruta varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  ruta_acudiente varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  año int(4) NOT NULL,
  fecha_modificacion date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_control_upd;

CREATE TABLE tbl_control_upd (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  archivo varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  paso varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  resultado varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_ct_preguntas;

CREATE TABLE tbl_ct_preguntas (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_materia int(11) NOT NULL,
  ct_temas int(11) NOT NULL,
  ct_preguntas int(11) NOT NULL,
  incluir varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

INSERT INTO tbl_ct_preguntas (id_materia, ct_temas, ct_preguntas, incluir) VALUES
(1, 2, 2, 'SI'),
(4, 2, 2, 'SI'),
(5, 10, 2, 'SI'),
(6, 3, 2, 'SI'),
(7, 5, 2, 'SI'),
(9, 5, 2, 'SI'),
(11, 10, 2, 'SI');

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_ct_preguntas_f;

CREATE TABLE tbl_ct_preguntas_f (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_grado int(11) NOT NULL,
  id_materia int(11) NOT NULL,
  ct_temas int(11) NOT NULL,
  ct_preguntas int(11) NOT NULL,
  incluir varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

INSERT INTO tbl_ct_preguntas_f (id_grado, id_materia, ct_temas, ct_preguntas, incluir) VALUES
(2, 1, 5, 2, 'SI'),
(2, 4, 5, 2, 'SI'),
(2, 5, 7, 2, 'SI'),
(2, 6, 5, 2, 'SI'),
(2, 7, 0, 0, 'SI'),
(2, 9, 0, 0, 'SI'),
(3, 1, 5, 2, 'SI'),
(3, 4, 5, 2, 'SI'),
(3, 5, 8, 2, 'SI'),
(3, 6, 5, 2, 'SI'),
(3, 7, 0, 0, 'SI'),
(3, 9, 0, 0, 'SI'),
(4, 1, 5, 2, 'SI'),
(4, 4, 5, 2, 'SI'),
(4, 5, 5, 2, 'SI'),
(4, 6, 5, 2, 'SI'),
(4, 7, 0, 0, 'SI'),
(4, 9, 5, 2, 'SI'),
(5, 1, 5, 2, 'SI'),
(5, 4, 5, 2, 'SI'),
(5, 5, 5, 2, 'SI'),
(5, 6, 5, 2, 'SI'),
(5, 7, 0, 0, 'SI'),
(5, 9, 5, 2, 'SI'),
(6, 1, 5, 2, 'SI'),
(6, 4, 5, 2, 'SI'),
(6, 5, 5, 2, 'SI'),
(6, 6, 5, 2, 'SI'),
(6, 7, 0, 0, 'SI'),
(6, 9, 5, 2, 'SI'),
(7, 1, 5, 2, 'SI'),
(7, 4, 5, 2, 'SI'),
(7, 5, 5, 2, 'SI'),
(7, 6, 5, 2, 'SI'),
(7, 7, 6, 2, 'SI'),
(7, 9, 5, 2, 'SI'),
(8, 1, 5, 2, 'SI'),
(8, 4, 5, 2, 'SI'),
(8, 5, 10, 2, 'SI'),
(8, 6, 5, 2, 'SI'),
(8, 7, 5, 2, 'SI'),
(8, 9, 5, 2, 'SI'),
(9, 1, 5, 2, 'SI'),
(9, 4, 5, 2, 'SI'),
(9, 5, 11, 2, 'SI'),
(9, 6, 5, 2, 'SI'),
(9, 7, 7, 2, 'SI'),
(9, 9, 5, 2, 'SI'),
(10, 1, 5, 2, 'SI'),
(10, 4, 5, 2, 'SI'),
(10, 5, 12, 2, 'SI'),
(10, 6, 5, 2, 'SI'),
(10, 7, 5, 2, 'SI'),
(10, 9, 5, 2, 'SI'),
(11, 1, 5, 2, 'SI'),
(11, 4, 5, 2, 'SI'),
(11, 5, 5, 2, 'SI'),
(11, 6, 5, 2, 'SI'),
(11, 7, 5, 2, 'SI'),
(11, 9, 5, 2, 'SI'),
(11, 11, 5, 2, 'SI'),
(12, 1, 5, 2, 'SI'),
(12, 4, 5, 2, 'SI'),
(12, 5, 5, 2, 'SI'),
(12, 6, 5, 2, 'SI'),
(12, 7, 5, 2, 'SI'),
(12, 9, 5, 2, 'SI'),
(12, 11, 5, 2, 'SI'),
(13, 1, 5, 2, 'SI'),
(13, 4, 5, 2, 'SI'),
(13, 5, 5, 2, 'SI'),
(13, 6, 5, 2, 'SI'),
(13, 7, 5, 2, 'SI'),
(13, 9, 5, 2, 'SI'),
(14, 1, 5, 2, 'SI'),
(14, 4, 5, 2, 'SI'),
(14, 5, 5, 2, 'SI'),
(14, 6, 5, 2, 'SI'),
(14, 7, 5, 2, 'SI'),
(14, 9, 5, 2, 'SI'),
(15, 1, 5, 2, 'SI'),
(15, 4, 5, 2, 'SI'),
(15, 5, 5, 2, 'SI'),
(15, 6, 5, 2, 'SI'),
(15, 7, 5, 2, 'SI'),
(15, 9, 5, 2, 'SI'),
(16, 1, 5, 2, 'SI'),
(16, 4, 5, 2, 'SI'),
(16, 5, 5, 2, 'SI'),
(16, 6, 5, 2, 'SI'),
(16, 7, 5, 2, 'SI'),
(16, 9, 5, 2, 'SI'),
(17, 1, 5, 2, 'SI'),
(17, 4, 5, 2, 'SI'),
(17, 5, 5, 2, 'SI'),
(17, 6, 5, 2, 'SI'),
(17, 7, 5, 2, 'SI'),
(17, 9, 5, 2, 'SI'),
(17, 11, 5, 2, 'SI'),
(18, 1, 5, 2, 'SI'),
(18, 4, 5, 2, 'SI'),
(18, 5, 5, 2, 'SI'),
(18, 6, 5, 2, 'SI'),
(18, 7, 5, 2, 'SI'),
(18, 9, 5, 2, 'SI'),
(18, 11, 5, 2, 'SI');

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_dependencias;

CREATE TABLE tbl_dependencias (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  dependencia varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

INSERT INTO tbl_dependencias (dependencia) VALUES
('ADMINISTRATIVA'),
('ADMISIONES'),
('PENSAMIENTO BIOETICO'),
('PENSAMIENTO HUMANISTICO ESPAÑOL'),
('PENSAMIENTO HUMANISTICO INGLES'),
('PENSAMIENTO NUMERICO'),
('PENSAMIENTO SOCIAL'),
('PENSAMIENTO TECNOLOGICO'),
('RECTORIA'),
('COORDINACION ACADEMICA'),
('FINANCIERA'),
('SOPORTE TECNICO'),
('SISTEMAS');

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_deptos;

CREATE TABLE tbl_deptos (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nombre varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

INSERT INTO tbl_deptos (nombre) VALUES
(' SELECCIONE');

UPDATE tbl_deptos SET id = -1 WHERE nombre = ' SELECCIONE';

ALTER TABLE tbl_deptos
MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

INSERT INTO tbl_deptos (nombre) VALUES
('AMAZONAS'),
('ANTIOQUIA'),
('ARAUCA'),
('ATLANTICO'),
('BOGOTA'),
('BOLIVAR'),
('BOYACA'),
('CALDAS'),
('CAQUETA'),
('CASANARE'),
('CAUCA'),
('CESAR'),
('CHOCO'),
('CORDOBA'),
('CUNDINAMARCA'),
('GUAINIA'),
('GUAVIARE'),
('HUILA'),
('LA GUAJIRA'),
('MAGDALENA'),
('META'),
('NARINO'),
('NORTE DE SANTANDER'),
('PUTUMAYO'),
('QUINDIO'),
('RISARALDA'),
('SAN ANDRES Y PROVIDENCIA'),
('SANTANDER'),
('SUCRE'),
('TOLIMA'),
('VALLE DEL CAUCA'),
('VAUPES'),
('VICHADA');

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_desemp_pres;

CREATE TABLE tbl_desemp_pres (
  identificacion varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  DSA varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  DA varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  DM varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  DB varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  año int(11) NOT NULL,
  id_grado int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_deudas_anteriores;

CREATE TABLE tbl_deudas_anteriores (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  documento varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  a int(11) UNSIGNED NOT NULL,
  deuda int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_diplomas_virtuales;

CREATE TABLE tbl_diplomas_virtuales (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  documento varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  id_grado int(2) NOT NULL,
  ruta varchar(500)CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_direcciones_grado;

CREATE TABLE tbl_direcciones_grado (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_empleado int(11) NOT NULL,
  direcciones_grado varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_direccion_grado;

CREATE TABLE tbl_direccion_grado (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_grado int(11) NOT NULL,
  id_empleado int(11) NOT NULL,
  grupo varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_dir_b;

CREATE TABLE tbl_dir_b (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_grado int(11) NOT NULL,
  id_empleado int(11) NOT NULL,
  grupo varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_dir_c;

CREATE TABLE tbl_dir_c (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_grado int(11) NOT NULL,
  id_empleado int(11) NOT NULL,
  grupo varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_dir_d;

CREATE TABLE tbl_dir_d (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_grado int(11) NOT NULL,
  id_empleado int(11) NOT NULL,
  grupo varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_emails_bloqueados_blog;

CREATE TABLE tbl_emails_bloqueados_blog (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  email varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  fecha date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_encuestas;

CREATE TABLE tbl_encuestas (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nombre varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_encuestas_preguntas;

CREATE TABLE tbl_encuestas_preguntas (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_encuesta int(11) NOT NULL,
  tipo varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  pregunta varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  a varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  b varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  c varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  d varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  e varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  respuesta_texto varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_encuestas_resultados;

CREATE TABLE tbl_encuestas_resultados (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_encuesta int(11) NOT NULL,
  id_pregunta int(11) NOT NULL,
  id_grado int(11) NOT NULL,
  n_documento varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  resultado varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  año int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_estudiantes_mood;

CREATE TABLE tbl_estudiantes_mood (
  id int(11) NOT NULL PRIMARY KEY,
  grado varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  apellidos varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  nombres varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  ciudad varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  email_inst varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  usuario varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  a_modif int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_estudiantes_mood_temp;

CREATE TABLE tbl_estudiantes_mood_temp (
  id int(11) NOT NULL PRIMARY KEY,
  grado varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  apellidos varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  nombres varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  ciudad varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  email_inst varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  usuario varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  a_modif int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_estudiantes_observ_tut;

CREATE TABLE tbl_estudiantes_observ_tut (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  n_documento varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  observacion varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  tutor varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  fecha date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_estudiantes_param;

CREATE TABLE tbl_estudiantes_param (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_estudiante int(11) NOT NULL,
  observacion varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_estudiantes_sin_ee;

CREATE TABLE tbl_estudiantes_sin_ee (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  n_documento varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  sin_entrevista varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  sin_evaluacion varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_eval_cargos;

CREATE TABLE tbl_eval_cargos (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_grado int(11) NOT NULL,
  cargo varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  documento varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  fecha_programacion date NOT NULL,
  email varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  nombre_completo varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  resultado varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  año int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_formas_pago;

CREATE TABLE tbl_formas_pago (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  forma_pago varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  activar varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

INSERT INTO tbl_formas_pago (forma_pago, activar) VALUES
('TC', '0'),
('PSE', '1'),
('BAL', '1'),
('EFE', '1'),
('PUNR', '1'),
('REDS', '1'),
('GANA', '1');

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_grupos;

CREATE TABLE tbl_grupos (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  grupo varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

INSERT INTO tbl_grupos (grupo) VALUES
('Administrativo'),
('Creativo'),
('Investigación'),
('Mediadores'),
('Psicología'),
('Soporte técnico');

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_grupos_emp;

CREATE TABLE tbl_grupos_emp (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_grupo int(11) NOT NULL,
  id_empleado int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_lista_documentos;

CREATE TABLE tbl_lista_documentos (
  n_documento varchar(15) NOT NULL PRIMARY KEY
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_metodo_domain;

CREATE TABLE tbl_metodo_domain (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  palabra varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  imagen varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  fecha date NOT NULL,
  estado int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_metodo_domain_i;

CREATE TABLE tbl_metodo_domain_i (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  palabra varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  imagen varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  fecha date NOT NULL,
  estado int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_notas_historia;

CREATE TABLE tbl_notas_historia (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_est int(11) NOT NULL,
  a int(4) NOT NULL,
  n_matricula varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  json varchar(1200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_notas_mood_temp;

CREATE TABLE tbl_notas_mood_temp (
  id_est int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  lastname varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  firstname varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  shortname varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  id int(11) NOT NULL,
  name varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  id_grado int(11) NOT NULL,
  periodo varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  periodo_ra int(11) NOT NULL,
  calificacion float NOT NULL DEFAULT 0,
  id_tutor int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_notas_prueba;

CREATE TABLE tbl_notas_prueba (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nota float NOT NULL DEFAULT 0,
  id_periodo int(11) NOT NULL,
  id_materia int(11) NOT NULL,
  id_grado int(11) NOT NULL,
  id_estudiante int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_notas_temp;

CREATE TABLE tbl_notas_temp (
  nota float NOT NULL DEFAULT 0,
  id_periodo int(11) NOT NULL,
  id_materia int(11) NOT NULL,
  id_grado int(11) NOT NULL,
  id_estudiante int(11) NOT NULL,
  id_tutor int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_notas_temp_ins;

CREATE TABLE tbl_notas_temp_ins (
  id_estudiante int(11) NOT NULL,
  apellidos varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  nombres varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  grado varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  materia varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  id_periodo int(11) NOT NULL,
  id_materia int(11) NOT NULL,
  id_grado int(11) NOT NULL,
  nota_actual float NOT NULL,
  nota_nueva float NOT NULL,
  id_tutor int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_notas_temp_no_ra;

CREATE TABLE tbl_notas_temp_no_ra (
  id_estudiante int(11) NOT NULL,
  apellidos varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  nombres varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  grado varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  materia varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  id_periodo int(11) NOT NULL,
  id_materia int(11) NOT NULL,
  id_grado int(11) NOT NULL,
  nota_actual float NOT NULL,
  nota_nueva float NOT NULL,
  id_tutor int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_notas_temp_upd;

CREATE TABLE tbl_notas_temp_upd (
  id_estudiante int(11) NOT NULL,
  apellidos varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  nombres varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  grado varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  materia varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  id_periodo int(11) NOT NULL,
  id_materia int(11) NOT NULL,
  id_grado int(11) NOT NULL,
  nota_actual float NOT NULL,
  nota_nueva float NOT NULL,
  id_tutor int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_pazysalvos;

CREATE TABLE tbl_pazysalvos (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  fecha_expedicion date NOT NULL,
  id_estudiante int(11) NOT NULL,
  id_grado int(11) NOT NULL,
  ruta varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  identificacion varchar(20) NOT NULL,
  a varchar(4) NOT NULL,
  firma varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_plataformas;

CREATE TABLE tbl_plataformas (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  plataforma varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

INSERT INTO tbl_plataformas (plataforma) VALUES
('CORREO CORPORATIVO'),
('MATRICULACION WEB'),
('MOODLE'),
('PAGINA WEB'),
('REGISTRO ACADEMICO');

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_polizas;

CREATE TABLE tbl_polizas (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  n_documento varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  id_grado int(11) NOT NULL,
  a varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  ruta varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_preguntas;

CREATE TABLE tbl_preguntas (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_grado int(11) NOT NULL,
  id_materia int(11) NOT NULL,
  id_tipo_pregunta int(11) NOT NULL,
  id_tema int(11) NOT NULL,
  pregunta varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  r1ok varchar(600) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  r2ok varchar(600) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  r3ok varchar(600) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  r1no varchar(600) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  r2no varchar(600) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  r3no varchar(600) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  r4no varchar(600) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  retroalimentacion varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  imagen varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

INSERT INTO `tbl_preguntas` (`id`, `id_grado`, `id_materia`, `id_tipo_pregunta`, `id_tema`, `pregunta`, `r1ok`, `r2ok`, `r3ok`, `r1no`, `r2no`, `r3no`, `r4no`, `retroalimentacion`, `imagen`) VALUES
(15, 10, 5, 3, 39, 'LA EXPRESIÓN ALGEBRAICA EN UNA SUCESIÓN ES S = 7N + 2 ¿CUÁL ES EL VIGÉSIMO TERMINO DE LA SUCESIÓN?. (NOTA: LA SUCESIÓN INICIA PARA N = 1) \n', '142', 'NA', 'NA', '22', '140', '20', 'NA', 'REFORZAR EL RAZONAMIENTO ALGEBRAICO', 'NA'),
(16, 9, 5, 4, 8, 'UN RELOJ NO FUNCIONA ADECUADAMENTE PUES SE ADELANTA 1/3 DE MINUTO CADA HORA. ¿CUÁNTO SE ADELANTARÁ EN 2 1/2 HORAS?', '5/6 DE MINUTO', '50 SEGUNDOS', 'NA', '2/3 DE MINUTO', '1 1/3 DE MINUTO', 'NA', 'NA', 'REFORZAR REGLA DE TRES SIMPLE (NUMÉRICO-VARIACIONAL)', 'NA'),
(17, 10, 5, 5, 38, 'DE ACUERDO A LA SUCESIÓN DE LA IMAGEN, ¿CUÁLES VALORES SON TERMINOS VÁLIDOS DE LA SUCESIÓN?', '3', '18.5', '-1/4', '15', 'NA', 'NA', 'NA', 'REFORZAR SERIES Y SUCESIONES (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/sucesion1.png'),
(19, 8, 5, 3, 6, '¿QUÉ NÚMERO ES MENOR QUE 8/3?', '15/6', 'NA', 'NA', '16/6', '17/6', '18/6', 'NA', 'REFORZAR OPERACIONES CON FRACCIONES (NUMÉRICO-VARIACIONAL)', 'NA'),
(20, 10, 5, 3, 10, '¿CUÁL ES LA DESCOMPOSICIÓN EN FACTORES PRIMOS DE 60?', '2X2X3X5', 'NA', 'NA', '2X5X6', '4X15', '3X4X5', 'NA', 'REFORZAR DESCOMPOSICIÓN EN FACTORES PRIMOS (NUMÉRICO-VARIACIONAL)', 'NA'),
(21, 10, 5, 3, 11, '¿CUÁL ES EL MCM DE 15, 25 Y 20?', '300', 'NA', 'NA', '60', '150', '120', 'NA', 'REFORZAR MCM Y MCD (NUMÉRICO-VARIACIONAL)', 'NA'),
(22, 8, 5, 3, 6, '¿CUÁL ES EL RESULTADO DE LA OPERACIÓN DE LA FIGURA?', '7/12', 'NA', 'NA', '4/21', '12/7', '21/4', 'NA', 'REFORZAR OPERACIONES CON FRACCIONES (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/div_fracc_1.jpg'),
(24, 9, 5, 4, 8, 'EN UNA FÁBRICA DE LACTEOS POR CADA 5 LITROS DE LECHE, SE OBTIENEN DOS LITROS DE CREMA. ¿CUÁNTOS LITROS DE LECHE SE NECESITAN PARA PRODUCIR 3/4 DE LITRO DE CREMA?', '15/8 DE LITRO', '1 LITRO Y 7/8', 'NA', '15/4 DE LITRO', '2 LITROS MENOS 7/8', 'NA', 'NA', 'REFORZAR REGLA DE TRES SIMPLE (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/leche_1.jpg'),
(25, 8, 5, 2, 6, '¿CUÁL ES EL RESULTADO DE LA OPERACIÓN QUE SE MUESTRA EN LA FIGURA? (LAS X SON MULTIPLICACIONES)', '8', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR OPERACIONES CON FRACCIONES (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/mult_fracc.jpg'),
(29, 9, 5, 3, 14, 'EN EL BUS VAN EL CHOFER Y 5 NIÑOS. CADA NIÑO LLEVA 5 CAJAS. EN CADA CAJA VAN 5 GATAS Y CADA GATA TIENE 5 GATITOS. ¿CUÁNTAS PIERNAS Y PATAS HAY DENTRO DEL BUS?', '3012', 'NA', 'NA', '3120', '3210', '3102', 'NA', 'REFORZAR POTENCIACIÓN RADICACIÓN Y LOGARITMACIÓN (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/bus_1.png'),
(31, 9, 5, 3, 31, 'PAULA, JACOBO, NICOLLE, SARA Y ANDRES HICIERON UN TEST DE CONDUCCIÓN. NICOLLE PUNTUO MAS BAJO QUE JACOBO PERO MÁS ALTO QUE SARA, JACOBO LOGRO MENOS PUNTOS QUE PAULA Y ANDRÉS OBTUVO MAYOR PUNTUACIÓN QUE PAULA. ¿QUIEN OBTUVO LA PUNTUACIÓN MÁS ALTA?', 'ANDRES', 'NA', 'NA', 'PAULA', 'JADOBO', 'NICOLLE', 'NA', 'REFORZAR RAZONAMIENTO LÓGICO (ALEATORIO-PROBABILÍSTICO)', '../../images/preguntas/test_driver_1.png'),
(36, 9, 5, 3, 31, '¿QUÉ VALOR DEBE SUSTITUIR AL SIGNO DE INTERROGACIÓN EN LA GRÁFICA? ', '41', 'NA', 'NA', '51', '57', '47', 'NA', 'REFORZAR RAZONAMIENTO LÓGICO (ALEATORIO-PROBABILÍSTICO)', '../../images/preguntas/ecuaciones1.png'),
(37, 10, 5, 3, 18, 'AL AUMENTAR EN 5 M EL LADO DE UN CUADRADO, SU SUPERFICIE AUMENTA EN 50 METROS CUADRADOS. CALCULA EL LADO DEL CUADRADO (X.)', '2.5', 'NA', 'NA', '6.25', '5.2', '2.25', 'NA', 'REFORZAR PRODUCTOS Y COCIENTES NOTABLES (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/cuadros1.png'),
(38, 8, 5, 3, 16, 'EN UNA CAJA HAY 2 CAJAS Y 3 BOLAS. EN CADA UNA DE ESTAS CAJAS HAY DOS CAJAS Y 3 BOLAS. Y FINALMENTE EN CADA UNA DE ETAS CAJAS HAY DOS CAJAS Y 3 BOLAS. ¿CUÁNTOS OBJETOS HAY EN TOTAL EN LA PRIMER CAJA?', '31', 'NA', 'NA', '21', '35', '32', 'NA', 'REFORZAR RAZONAMIENTO LÓGICO (ALEATORIO-PROBABILÍSTICO)', 'NA'),
(40, 9, 5, 2, 30, '¿CUÁL ES EL ÁREA DE LA FIGURA?', '15', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR ÁREAS Y PERÍMETROS (GEOMÉTRICO-MÉTRICO)', '../../images/preguntas/fig.png'),
(41, 9, 5, 2, 14, 'JUAN Y SARA ESTAN TRATANDO DE ARMAR SU ÁRBOL GENEALÓGICO, 10 GENERACIONES ATRAS. ¿CUÁNTAS PERSONAS CONFORMARÍAN SU ÁRBOL GENEALÓGICO, INCLUYÉNDOLOS? .', '2048', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR POTENCIACIÓN RADICACIÓN Y LOGARITMACIÓN (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/genealogia_1.png'),
(43, 10, 5, 3, 21, '¿CUÁL ES LA EXPRESIÓN PARA HALLAR EL ÁREA DE LA FIGURA EN FONDO VERDE? ', 'A =  X²  +  7X  +  17', 'NA', 'NA', 'A =  3X²  -  7X  +  17', 'A =  X²  -  7X  -  17', 'A =  6X²  -  7X  +  7', 'NA', 'REFORZAR ÁREAS Y VOLÚMENES (GEOMÉTRICO-MÉTRICO)', '../../images/preguntas/a2.png'),
(44, 10, 5, 5, 18, '¿QUÉ PRODUCTOS NOTABLES NO CORRESPONDEN CON LA FIGURA?', 'BINOMIOS CON TERMINO COMUN', 'FACTOR COMUN', 'DIFERENCIA DE CUADRADOS PERFECTOS', 'CUADRADO DE UN POLINOMIO', 'NA', 'NA', 'NA', 'REFORZAR PRODUCTOS Y COCIENTES NOTABLES (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/img3.png'),
(48, 8, 5, 2, 22, 'SE ESTÁ CONSTRUYENDO UNA PISCINA DE 50 M DE LARGO, 25 M DE ANCHO Y 400 CM DE PROFUNDIDAD. SI SE QUIERE CUBRIR LAS PAREDES Y EL FONDO CON AZULEJOS DE FORMA CUADRADA DE 20 CM DE LADO ¿CUÁNTOS AZULEJOS SE NECESITAN COMPRAR SI APROXIMADAMENTE SE DESPERDICIA UN 10%?', '34375', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR CONVERSIÓN DE UNIDADES (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/piscinaolimpica1.jpg'),
(50, 8, 5, 3, 22, 'UN AUTOMOVIL TIENE UN RENDIMIENTO DE 30 MILLAS TERRESTRES POR GALÓN DE GASOLINA. EXPRESE EL RENDIMIENTO EN KILÓMETROS Y LITROS.', '12.75 KM / LT', 'NA', 'NA', '17.25 KM / LT', '15.72 KM / LT', '21.75 KM / LT', 'NA', 'REFORZAR CONVERSIÓN DE UNIDADES (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/img_sedan_1.png'),
(51, 9, 5, 3, 23, 'EN CUÁL DE LAS GRÁFICAS SE TIENE LA REPRESENTACIÓN EXACTA DE -13/7 EN LA RECTA REAL, SEÑALADA CON UN MARCA VERDE.', 'D', 'NA', 'NA', 'A', 'B', 'C', 'NA', 'REFORZAR REPRESENTACIÓN DE PUNTOS EN LA RECTA (GEOMÉTRICO-MÉTRICO)', '../../images/preguntas/rectas_1.png'),
(52, 10, 5, 4, 24, 'DETERMINE EL ÁREA DE LA FIGURA. TENGA EN CUENTA LA SIGUIENTE NOMENCLATURA: 2^2 SIGNIFICA 2 ELEVADO AL CUADRADO. R5(2^N) SIGNIFICA RAÍZ QUINTA DE 2 ELEVADO A LA N. ', '6', '2^2 + RN(1^N) + 9^0', 'NA', '8', '2^3 + (13/7)^0 - 2^5/(64/2)', 'NA', 'NA', 'REFORZAR TEOREMA DE PITÁGORAS (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/exagono1_1.png'),
(54, 10, 5, 3, 25, 'LA ESPINA DORSAL HUMANA CONSISTE EN UN GRUPO DE HUESOS (VÉRTEBRAS) COMO SE MUESTRA EN LA FIGURA. INDIQUE CUÁL DE LAS GRÁFICAS CIRCULARES, REPRESENTA LA FRECUENCIA RELATIVA DE LA COMPOSICIÓN DE VERTEBRAS.', 'D', 'NA', 'NA', 'A', 'B', 'C', 'NA', 'REFORZAR MEDIDAS ESTADÍSTICAS (ALEATORIO-PROBABILÍSTICO)', '../../images/preguntas/vertebras_1.png'),
(58, 8, 5, 2, 16, '¿QUÉ NÚMERO CONTINUA EN EL ESPACIO VACÍO? INICIA EN EL 8 EN EL SENTIDO HORARIO.', '411', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR RAZONAMIENTO LÓGICO (ALEATORIO-PROBABILÍSTICO)', '../../images/preguntas/raz_log1_1.jpg'),
(62, 8, 5, 4, 26, 'EL DOMINGO PASADO, LA TEMPERATURA PROMEDIO FUE 8%, MÁS ALTA QUE LA TEMPERATURA PROMEDIO HACE DOS DOMINGOS. LA TEMPERATURA PROMEDIO HACE DOS DOMINGOS FUE T GRADOS CELSIUS.', '(1 + 8/100)T', '1.08T', 'NA', '1.8T', 'T + 0.08', 'NA', 'NA', 'REFORZAR PORCENTAJES (NUMÉRICO-VARIACIONAL)', 'NA'),
(63, 8, 5, 4, 26, 'LANDEN PASO L HORAS EN LA PLAYA EL FIN DE SEMANA PASADO. MATEO PASO 15% HORAS MENOS EN LA PLAYA QUE LANDEN. ¿CUÁLES DE LAS SIGUIENTES EXPRESIONES REPRESENTAN CUÁNTAS HORAS PASO MATEO EN LA PLAYA?', 'L(1 - 0.15)', 'L - 3/20L', 'NA', 'L - 1/15L', 'L -15/100', 'NA', 'NA', 'REFORZAR PORCENTAJES (NUMÉRICO-VARIACIONAL)', 'NA'),
(64, 8, 5, 4, 26, 'ANTES DE IR AL SALÓN DE BELLEZA, LAURA TENIA H CENTÍMETROS DE CABELLO DE LARGO. DESPUÉS DEL CORTE, LAURA PERDIÓ UN 25% DE LARGO. ¿CUÁLES DE LAS SIGUIENTES EXPRESIONES REPRESENTAN CUÁNTOS CENTÍMETROS DE LARGO TIENE EL CABELLO DE LAURA DESPUÉS DEL CORTE?', '3/4H', '0.75H', 'NA', 'H(1 - 0.75)', '(1 - 75/100)H', 'NA', 'NA', 'REFORZAR PORCENTAJES (NUMÉRICO-VARIACIONAL)', 'NA'),
(65, 8, 5, 4, 26, 'JACOBO VA A COMPRAR UN JUEGO DE MESA QUE USUALMENTE CUESTA B PESOS. EL JUEGO ESTÁ EN OFERTA Y EL PRECIO SE HA REDUCIDO 18%. ¿CUÁLES DE LAS SIGUIENTES EXPRESIONES PUEDEN REPRESENTAR CUÁNTO PAGA JACOBO POR EL JUEGO?', '0.82B', 'B - 0.18B', 'NA', '1.18B', 'B - 18', 'NA', 'NA', 'REFORZAR PORCENTAJES (NUMÉRICO-VARIACIONAL)', 'NA'),
(80, 9, 5, 3, 7, 'EN LA FIGURA SE MUESTRA UNA SERIE GRÁFICA EN LA PARTE SUPERIOR. ¿CUÁL OPCIÓN DE LA PARTE INFERIOR IRÍA EN EL SIGNO DE INTERROGACIÓN?', 'B', 'NA', 'NA', 'A', 'C', 'D', 'NA', 'REFORZAR SERIES Y SUCESIONES (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/serie_1.png'),
(82, 8, 5, 3, 28, 'LAS CALIFICACIONES DE ESTUDIANTES EN MATEMÁTICAS SE MUESTRAN EN LA IMAGEN. ¿QUE OPCIÓN MUESTRA LOS VALORES DE LA MODA, LA MEDIANA Y LA MEDIA ARITMÉTICA.', 'MO = 5, ME = 5.5, X = 5.69', 'NA', 'NA', 'MO = 5, ME = 6.5, X = 5.5', 'MO = 6, ME = 6.5, X = 5.96', 'MO = 6, ME = 5.5, X = 6.5', 'NA', 'REFORZAR ANÁLISIS ESTADÍSTICO (ALEATORIO-PROBABILÍSTICO)', '../../images/preguntas/calificaciones.png'),
(86, 8, 5, 4, 27, 'UNA CRAYOLA ROSA SE HACE CON 12 ML DE CERA ROJA POR CADA 5 ML DE CERA BLANCA. ¿CUÁLES DE LAS SIGUIENTES MEZCLAS CREAN EL MISMO TONO DE ROSA?', '36 ML DE CERA ROJA CON 15 ML DE CERA BLANCA', '60 ML DE CERA ROJA CON 25 ML DE CERA BLANCA', 'NA', '48 ML DE CERA ROJA CON 12 ML DE CERA BLANCA', '10 ML DE CERA ROJA CON 24 ML DE CERA BLANCA', 'NA', 'NA', 'REFORZAR RAZONES Y PROPORCIONES (NUMÉRICO-VARIACIONAL)', 'NA'),
(87, 8, 5, 5, 27, 'LA RECTA NUMÉRICA DOBLE MUESTRA CUÁNTOS PLÁTANOS SE REQUIEREN PARA HACER 1 HOGAZA DE PAN DE PLÁTANO. SELECCIONA LOS VALORES QUE COMPLETAN LA TABLA.', '14/11', '20/11', '33/2', '14/4', 'NA', 'NA', 'NA', 'REFORZAR RAZONES Y PROPORCIONES (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/hogazas.png'),
(88, 8, 5, 4, 28, 'SE HA REGISTRADO EL PESO EN KILOGRAMOS DE 400 ESTUDIANTES DE UN COLEGIO. AL RESUMIR LOS DATOS SE OBTUVO QUE LA MEDIANA ES 78.3 KG, LA MODA ES 76 KG Y LA MEDIA ARITMÉTICA ES 87 KG. DETERMINE CUÁLES DE LAS AFIRMACIONES DE LA IMAGEN SON VERDADERAS.', 'B', 'C', 'NA', 'A', 'D', 'NA', 'NA', 'REFORZAR ANÁLISIS ESTADÍSTICO (ALEATORIO-PROBABILÍSTICO)', '../../images/preguntas/pesos_est.png'),
(92, 9, 5, 3, 7, '¿QUÉ FIGURA CONTINUA EN LA SERIE?', 'C', 'NA', 'NA', 'A', 'B', 'D', 'NA', 'REFORZAR SERIES Y SUCESIONES (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/serie1_1.png'),
(93, 9, 5, 3, 7, '¿CUÁL ES LA FIGURA QUE COMPLETA LA TABLA?', 'C', 'NA', 'NA', 'A', 'B', 'D', 'NA', 'REFORZAR SERIES Y SUCESIONES (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/serie2_1.png'),
(95, 10, 5, 3, 39, 'DE UN CÓDIGO NUMÉRICO, SE TRADUJERON LAS PALABRAS QUE ESTÁN EN LA FIGURA. ¿QUE COMBINACIÓN DE NÚMEROS REPRESENTA LA PALABRA LUCUBRE? ', '4371451', 'NA', 'NA', '43711341', '4111451', '4341134', 'NA', 'REFORZAR RAZONAMIENTO LÓGICO (ALEATORIO-PROBABILÍSTICO)', '../../images/preguntas/codigo.png'),
(98, 7, 7, 3, 68, '¿CUÁL EXPRESIÓN SE RELACIONA CORRECTAMENTE CON LA IMAGEN? WHAT DO YOU USUALLY DO IN THE MORNING?', 'I BRUSH MY TEETH', 'NA', 'NA', 'I DRIVE A CAR', 'I WALK THE DOG', 'HE GOES TO THE HAIRDRESSER', 'NA', 'REFORZAR ACTIVIDADES COTIDIANAS Y PASATIEMPOS', '../../images/preguntas/.9898.jpg'),
(99, 10, 5, 3, 25, 'UNA UNIVERSIDAD HA DEFINIDO COMO PROMEDIO DE CALIFICACIONES PC, UN PROMEDIO PONDERADO COMO SE DESCRIBE EN LA IMAGEN. OBSERVE LA TABLA DE LOS VALORES DE LAS CALIFICACIONES MOSTRADAS PARA CALCULAR EL PC DE UN ESTUDIANTE.', '2.93', 'NA', 'NA', '9.23', '3.29', '2.39', 'NA', 'REFORZAR MEDIDAS ESTADÍSTICAS (ALEATORIO-PROBABILÍSTICO)', '../../images/preguntas/calificaciones1_1.png'),
(101, 6, 5, 3, 64, '¿CUÁL ES EL TIEMPO MÁXIMO QUE TIENEN LOS TRABAJADORES PARA SALIR ALMORZAR? ', '60 MINUTOS. ', 'NA', 'NA', '90 MINUTOS.', '30 MINUTOS.', '75 MINUTOS.', 'NA', 'REFORZAR TIEMPO (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/pregunta 0.jpg'),
(102, 6, 5, 3, 67, 'OBSERVA LA IMAGEN. ¿ CUÁNTOS REGALOS RECIBIÓ IMELDA EL DÍA DEL MAESTRO?', '29 REGALOS ', 'NA', 'NA', '28 REGALOS', '24 REGALOS', '18 REGALOS', 'NA', 'REFORZAR SOLUCIÓN DE PROBLEMAS (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/IMELDA IMAGEN 2.jpg'),
(103, 6, 5, 3, 64, 'OBSERVA LA IMAGEN: JULIÁN HACE UN RECORRIDO CUANDO VA DEL COLEGIO A LA CASA DE SARA. ÉL DEMORA 5 MINUTOS EN IR DE UNA ESQUINA A LA SIGUIENTE. ¿ CUÁNTOS MINUTOS DEMORA JULIÁN EN IR A LA CASA DE SARA?', '15 MINUTOS ', 'NA', 'NA', '10 MINUTOS ', '25 MINUTOS ', '12 MINUTOS ', 'NA', 'REFORZAR TIEMPO (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/PREGUNTA 3 .png'),
(104, 6, 5, 5, 65, 'LOS NÚMEROS NATURALES SE USAN EN VARIAS SITUACIONES DE LA VIDA COTIDIANA. ¿EN CUALES?', 'EN CASA DE CARLOS ESTAN PREPARANDO UN ALMUERZO ', 'EN LA COMPRA DE MERCADO EN EL SUPERMERCADO ', 'CAMILA ES INGENIERA Y ESTÁ TRABAJANDO EN UNA OBRA', 'LOS NUMEROS NATURALES NO SON NECESARIOS ', 'NA', 'NA', 'NA', 'REFORZAR NÚMEROS NATURALES (NUMÉRICO-VARIACIONAL)', 'NA'),
(105, 6, 5, 3, 67, '¿CUÁL ES LA LONGITUD DEL LÁPIZ? OBSERVA LA IMAGEN  ', '8 CM', 'NA', 'NA', '12 CM', '10 CM ', '4 CM ', 'NA', 'REFORZAR SOLUCIÓN DE PROBLEMAS (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/PREGUNTA 4.jpg'),
(106, 6, 5, 3, 67, '¿CUÁL DE LOS SIGUIENTES SÓLIDOS SE PUEDE ARMAR CON EL MOLDE? ', 'A', 'NA', 'NA', 'B', 'C', 'D', 'NA', 'REFORZAR SOLUCIÓN DE PROBLEMAS (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/IMAGEN 5.jpg'),
(107, 6, 5, 3, 67, 'OBSERVA LA IMAGEN Y SELECCIONA LA RESPUESTA CORRECTA ', '2 Y 3 SOLAMENTE.', 'NA', 'NA', '1.SOLAMENTE.', '1 Y 2 SOLAMENTE.', 'TODAS LAS RESPUESTAS SON CORRECTAS ', 'NA', 'REFORZAR SOLUCIÓN DE PROBLEMAS (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/IMAGEN 6.jpg'),
(108, 6, 5, 2, 66, 'SUMA, ESCRIBE LA RESPUESTA, TEN EN CUENTA EL PUNTO.  ', '378.150', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR OPERACIONES CON NÚMEROS NATURALES (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/Diapositiva2.JPG'),
(109, 6, 5, 2, 66, 'RESTA, ESCRIBE LA RESPUESTA Y TEN EN CUENTA EL PUNTO DE MIL', '128.350', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR OPERACIONES CON NÚMEROS NATURALES (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/id109.JPG'),
(110, 6, 5, 2, 66, 'LAS OPERACIONES SON IMPORTANTES PARA LA VIDA, TE INVITO A TOMAR UNA HOJA Y UN LÁPIZ, REALIZA LA MULTIPLICACIÓN, ESCRIBE LA RESPUESTA, DEBES TENER EN CUENTA AGREGAR LOS PUNTOS DEL NÚMERO. EJEMPLO: 165.658.898', '265.648.898', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR SOLUCIÓN DE PROBLEMAS (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/Diapositiva1.JPG'),
(111, 6, 5, 2, 66, 'ES FUNDAMENTAL QUE SEPAS DIVIDIR, YA QUE HACE PARTE DE TU FORMACIÓN EN LOS GRADOS 1° 2° 3° Y 4° TE INVITO A DESARROLLAR LA SIGUIENTE OPERACIÓN, ESCRIBE LA RESPUESTA, RECUERDA TENER EN CUENTA EL PUNTO. EJEMPLO: 2.682  ', '2.582', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR OPERACIONES CON NÚMEROS NATURALES (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/Diapositiva4.JPG'),
(112, 6, 5, 5, 65, 'OBSERVA LA IMAGEN Y SELECCIONA LOS NÚMEROS QUE CORRESPONDEN A CADA PREGUNTA ', '37', '11', '358', '12', 'NA', 'NA', 'NA', 'REFORZAR NÚMEROS NATURALES (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/IMAGEN 7.jpg'),
(113, 6, 5, 2, 74, 'SERGIO NECESITA ORGANIZAR LOS SIGUIENTES DATOS EN UNA GRÁFICA DE BARRAS, SON PERSONAS QUE PRACTICAN DEPORTE:  12 FUTBOL, 8 BASQUETBOL, 13 GIMNASIA, 7 NATACIÓN Y 8 VOLEIBOL. ¿QUÉ GRÁFICA LE SIRVE A SERGIO PARA REPRESENTAR LOS DATOS DE LA TABLA? ESCRIBE LA LETRA DE LA TABLA QUE DEBE USAR SERGIO. EJEMPLO: B', 'A', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR PROBABILIDAD (ALEATORIO-PROBABILÍSTICO)', '../../images/preguntas/113 (1).jpg'),
(114, 3, 5, 4, 49, 'OBSERVA LA IMAGEN. LEE Y SELECCIONA LOS NÚMEROS QUE TIENE ALEJANDRA.', 'CUARENTA-DIEZ', 'SESENTA-SETENTA', 'NA', 'CUARENTA-CINCUENTA', 'SETENTA-OCHENTA', 'NA', 'NA', 'REFORZAR CONTEO (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/P 1 .jpg'),
(115, 7, 7, 3, 71, 'OBSERVA LA IMAGEN, LEE LA DESCRIPCIÓN, Y RECONOCE LA CUALIDAD - ADJETIVO. LUEGO, SELECCIONA EL SINÓNIMO. SYNONYM:', 'CLEVER', 'NA', 'NA', 'STRONG', 'SILLY', 'WEAK', 'NA', 'REFORZAR ADJETIVOS: SINÓNIMOS Y ANTÓNIMOS', '../../images/preguntas/115..jpg'),
(117, 10, 5, 3, 20, 'EN LA FIGURA, AL CUADRADO DE LADO X, SE LE HA QUITADO UN CUADRADO DE LADO A. CON LO QUE QUEDA DEL CUADRADO DE LADO X, SE FORMA UN RECTÁNGULO. ¿CUÁL ES EL ÁREA DEL RECTÁNGULO EXPRESADA EN FACTORIZACIÓN?', '(X + A)(X – A)', 'NA', 'NA', '(X + A)(2X/3 – A)', '(X – A)(2X/3 + A)', '(X – 2X/3)(X + A)', 'NA', 'REFORZAR FACTORIZACIÓN (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/facorizacion2_1.png'),
(120, 4, 9, 3, 113, 'SON HERRAMIENTAS TECNOLÓGICAS DE LA ANTIGÜEDAD…', 'LA LANZA Y EL CUCHILLO DE PIEDRA', 'NA', 'NA', 'EL COMPUTADOR, TECLADO, LÁPIZ', 'EL CELULAR, LA SILLA Y CONTROL REMOTO', 'LA BOMBILLA, LA ESTUFA Y EL CARRO.', 'NA', 'REFORZAR HISTORIA Y EVOLUCIÓN DE LA TECNOLOGÍA', 'NA'),
(121, 4, 9, 3, 113, 'OBSERVA LA IMAGEN. ¿QUÉ INVENTO ERA NECESARIO PARA LA EVOLUCIÓN Y DESARROLLO DE LA HUMANIDAD?', 'LA RUEDA ', 'NA', 'NA', 'LA PIEDRA ', 'EL CARRO ', 'LAS CARRETERAS ', 'NA', 'REFORZAR HISTORIA Y EVOLUCIÓN DE LA TECNOLOGÍA', '../../images/preguntas/imagen1.jpg'),
(122, 8, 9, 3, 106, 'LA CORRIENTE ELÉCTRICA ES UN FENÓMENO NATURAL CAUSADO POR:', 'EL FLUJO DE ELECTRONES', 'NA', 'NA', 'EL FLUJO DEL AGUA', 'EL FLUJO DEL VIENTO', 'EL FLUJO DE ÁTOMOS EN LA MADERA', 'NA', 'REFORZAR CORRIENTE ELÉCTRICA', 'NA'),
(124, 8, 9, 3, 106, 'LA CORRIENTE ELÉCTRICA SE CONDUCE MEJOR A TRAVÉS DE:', 'MATERIALES CONDUCTORES COMO LOS METALES', 'NA', 'NA', 'MATERIALES NO CONDUCTORES COMO LA MADERA', 'MATERIALES SEMICONDUCTORES', 'GASES COMO LE HIDRÓGENO ', 'NA', 'REFORZAR CORRIENTE ELÉCTRICA', 'NA'),
(125, 8, 9, 3, 106, 'LA CORRIENTE ALTERNA LA PODEMOS ENCONTRAR EN:', 'LA TOMA CORRIENTE DE NUESTRAS CASAS', 'NA', 'NA', 'LAS BATERÍAS DE LOS DISPOSITIVOS MÓVILES', 'LOS ACUEDUCTOS', 'LOS RAYOS DEL SOL', 'NA', 'REFORZAR CORRIENTE ELÉCTRICA', 'NA'),
(126, 8, 9, 3, 106, 'LA CORRIENTE CONTINUA O DIRECTA LA PODEMOS ENCONTRAR EN:', 'LAS BATERÍAS DE LOS DISPOSITIVOS MÓVILES', 'NA', 'NA', 'LOS ACUEDUCTOS', 'LOS RAYOS DEL SOL', 'LA TOMA CORRIENTE DE NUESTRAS CASAS ', 'NA', 'REFORZAR CORRIENTE ELÉCTRICA', 'NA'),
(127, 8, 9, 3, 107, 'SELECCIONE LA OPCIÓN QUE INDIQUE MAGNITUDES ELÉCTRICAS', 'INTENSIDAD, TENSIÓN, POTENCIA Y RESISTENCIA', 'NA', 'NA', 'FUERZAS G Y GRAVITATORIAS', 'DISTANCIA, TIEMPO Y ESPACIO ', 'NEWTON, VELOCIDAD Y ACELERACIÓN ', 'NA', 'REFORZAR MAGNITUDES ELÉCTRICAS', 'NA'),
(128, 3, 5, 5, 47, 'OBSERVA EL PLATO SALUDABLE. SELECCIONA LOS COLORES QUE PUEDES IDENTIFICAR.', 'ROJO', 'BLANCO', 'ANARANJADO', 'AZUL ', 'NA', 'NA', 'NA', 'REFORZAR COLORES (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/colores 3.JPG'),
(129, 8, 9, 3, 107, '¿CUÁL DE LOS SIGUIENTES GRUPOS DE PALABRAS INCLUYE LAS UNIDADES QUE REPRESENTAN LAS MAGNITUDES ELÉCTRICAS? (SELECCIONE SOLO UNA RESPUESTA):', 'AMPERIOS, WATTS Y OHMIOS', 'NA', 'NA', 'GRAMOS, KILOS, TONELADAS Y LIBRAS', 'BITES, BYTES, TERABYTE Y GIGAS', 'PIXELES, NEWTON Y DECIBELES   ', 'NA', 'REFORZAR MAGNITUDES ELÉCTRICAS', 'NA'),
(132, 4, 9, 3, 114, 'LA BOMBILLA ELÉCTRICA, LA IMPRENTA, EL PAPEL, EL VIDRIO, LAS PALANCAS, INTERNET, LOS VIDEOJUEGOS PODEMOS DECIR QUE SON:', 'INVENTOS TECNOLÓGICOS ', 'NA', 'NA', 'DESCUBRIMIENTOS', 'SERVICIOS TECNOLÓGICOS ', 'RECURSOS NATURALES ', 'NA', 'REFORZAR INVENTOS E INNOVACIONES TECNOLÓGICAS', '../../images/preguntas/pregunta.jpg'),
(133, 8, 9, 3, 107, 'LA LEY DE OHM NOS DICE QUE SI NECESITAMOS HALLAR LA RESISTENCIA EN UN PUNTO DADO DE UN CIRCUITO ELECTRÓNICO DEBEMOS DIVIDIR EL VOLTAJE - VOLTIOS POR LA INTENSIDAD - AMPERIOS. SI EN UN PUNTO DADO DE UN CIRCUITO ELECTRÓNICO TENEMOS UNA CORRIENTE DE 4 AMPERIOS Y DEBEMOS REDUCIR 10 VOLTIOS, LA RESISTENCIA QUE RECITAMOS DEBE SER DE:', '2,5', 'NA', 'NA', '0.4', '2', '5', 'NA', 'REFORZAR MAGNITUDES ELÉCTRICAS', 'NA'),
(136, 8, 9, 3, 108, 'LAS RESISTENCIAS SON COMPONENTES ELECTRÓNICOS QUE SIRVEN PARA:', 'OPONERSE AL PASO DE LA CORRIENTE', 'NA', 'NA', 'FLUJO DE LA CORRIENTE EN UN SENTIDO', 'ALMACENAR ELECTRICIDAD', 'AUMENTAR EL VOLTAJE', 'NA', 'REFORZAR COMPONENTES ELECTRÓNICOS', 'NA'),
(137, 4, 9, 3, 114, 'ARTEFACTO TECNOLÓGICO ES UN OBJETO MATERIAL, CREADO  POR EL HOMBRE HECHO PARA CUMPLIR UNA FUNCIÓN DETERMINADA, SATISFACIENDO LAS NECESIDADES DEL SER HUMANO, ¿CUAL DE ESTAS OPCIONES SON ARTEFACTOS TECNOLÓGICOS?', 'CUCHILLO, MESA, LICUADORA,POLEA.', 'NA', 'NA', 'MESA,AGUA, FLORES, MEDICAMENTO.', 'TELEVISOR, GAS NATURAL, SOL, LLUVIA.', 'SOL,LLUVIA, COMPUTADOR, TELEFONO.', 'NA', 'REFORZAR INVENTOS E INNOVACIONES TECNOLÓGICAS', 'NA'),
(138, 8, 9, 3, 108, 'UN DIODO LED ES UN COMPONENTE ELECTRÓNICO QUE:', 'EMITE LUZ', 'NA', 'NA', 'ALMACENA LUZ', 'ES SENSIBLE A LA LUZ', 'ALMACENA CALOR', 'NA', 'REFORZAR COMPONENTES ELECTRÓNICOS', 'NA'),
(139, 8, 9, 3, 108, 'LOS CONDUCTORES DE ELECTRICIDAD DEBEN SER DE MATERIALES COMO:', 'LOS METALES', 'NA', 'NA', 'LA MADERA', 'LOS LÍQUIDOS', 'LOS GASES', 'NA', 'REFORZAR COMPONENTES ELECTRÓNICOS', 'NA'),
(140, 8, 9, 3, 108, 'UNA FOTOCELDA ES UN COMPONENTE ELECTRÓNICO QUE SE REACCIONA A:', 'LOS CAMBIOS DE LUZ', 'NA', 'NA', 'LOS CAMBIOS DE TEMPERATURA', 'LOS CAMBIOS DE HUMEDAD', 'LOS CAMBIOS DE AMBIENTE', 'NA', 'REFORZAR COMPONENTES ELECTRÓNICOS', 'NA'),
(141, 4, 9, 3, 114, 'SON CARACTERÍSTICAS O CUALIDADES DE UN INVENTOR:', 'CURIOSO, CREATIVO, OBSERVADOR Y PERSEVERANTE ', 'NA', 'NA', 'RESPONSABLE, MALGENIADO Y CON MUCHAS CANAS.', 'DESHONESTO, PEREZOSO Y POCO CREATIVO', 'ACTIVO EN RESOLVER PROBLEMAS', 'NA', 'REFORZAR INVENTOS E INNOVACIONES TECNOLÓGICAS', 'NA'),
(144, 4, 9, 3, 238, 'ESTOS SON RECURSOS MULTIMEDIA:', 'TEXTO, AUDIO, IMAGEN, VIDEO, ANIMACIÓN', 'NA', 'NA', 'CELULAR, RADIO, COMPUTADORA', 'AUDIO, ESCRITURA, LECTURA, IMAGEN ', 'TEXTO, AUDIO, IMAGEN, VIDEO, TIK TOK ', 'NA', 'REFORZAR ¿QUÉ ES MULTIMEDIA?', 'NA'),
(145, 3, 5, 4, 49, 'OBSEVA LA IMAGEN,  ¿CUÁNTAS ESTUFAS Y LAVADORAS HAY EN CADA CONJUNTO?', '11 ESTUFAS ', '17 LAVADORAS', 'NA', '12 ESTUFAS ', '18 LAVADORAS ', 'NA', 'NA', 'REFORZAR CONTEO (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/Diapositiva7.JPG'),
(146, 8, 9, 3, 108, 'LAS RESISTENCIAS SON COMPONENTES QUE USAN UN CÓDIGO DE COLORES PARA IDENTIFICAR SU VALOR, LOS PRIMEROS 2 COLORES, DE IZQUIERDA A DERECHA, EQUIVALEN AL NÚMERO ASIGNADO Y EL ULTIMO COLOR INDICA LA CANTIDAD DE CEROS A LA DERECHA, SI EL CÓDIGO DICE QUE: NEGRO = 0, CAFÉ = 1, ROJO = 2, NARANJA = 3 ¿CUÁL SERÍA EL VALOR DE UNA RESISTENCIA CUYO CODIGO ES ROJO, NARANJA, ROJO?', '2300 OHMIOS', 'NA', 'NA', '3300 OHMIOS', '3200 OHMIOS', '232 OHMIOS', 'NA', 'REFORZAR COMPONENTES ELECTRÓNICOS', 'NA'),
(147, 4, 9, 3, 116, 'SON HERRAMIENTAS PARA ENVIAR O COMPARTIR ARCHIVOS:', 'GOOGLE DRIVE, GMAIL Y WETRANSFER.', 'NA', 'NA', 'POWERPOINT.,WORD, BLOG DE NOTAS ', 'GENIALLY, CANVA, USB.', 'EXCEL, PDF,PC.', 'NA', 'REFORZAR HERRAMIENTAS OFIMÁTICAS Y MULTIMEDIA', 'NA'),
(148, 4, 9, 3, 116, 'SIRVE PARA ELABORAR DIAPOSITIVAS O PRESENTACIONES DINÁMICAS:', 'POWERPOINT', 'NA', 'NA', 'WORD', ' EXCEL', 'BLOG DE NOTAS', 'NA', 'REFORZAR HERRAMIENTAS OFIMÁTICAS Y MULTIMEDIA', 'NA'),
(149, 10, 9, 3, 109, 'QUÉ ES UN SISTEMA DE NUMERACIÓN POSICIONAL:', 'LA POSICIÓN DE LOS CARACTERES INFLUYE EN EL VALOR ', 'NA', 'NA', 'EL SISTEMA INCLUYE NÚMERO Y LETRAS', 'EL SISTEMA SE BASA SOLO EN 0 Y 1', 'LA POSICIÓN DE LOS CARACTERES NO INFLUYE ', 'NA', 'REFORZAR SISTEMAS DE NUMERACIÓN', 'NA'),
(150, 3, 5, 5, 52, 'SELECCIONA LOS NÚMEROS QUE FALTAN EN LA IMAGEN ', '199-200-201', '5.323-5.324-5.325', '2.387-2.388-2.389', '2.387-200-5.389', 'NA', 'NA', 'NA', 'REFORZAR NÚMEROS DE 100 EN 100 HASTA 1000 (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/1Diapositiva15.JPG'),
(151, 10, 9, 3, 109, 'EL SISTEMA DE NUMERACIÓN BINARIO USA ÚNICAMENTE:', 'EL 0 Y 1 COMO UNIDADES', 'NA', 'NA', 'TRES CARATERES 0, 1 Y 2', 'EL DOS COMO ÚNICO VALOR', 'LETRAS Y NÚMEROS COMO CARACTERES', 'NA', 'REFORZAR SISTEMAS DE NUMERACIÓN', 'NA'),
(152, 3, 5, 3, 49, 'OBSERVA LAIMAGEN. CUANTOS LUGARES HAY EN LA CASA ', '30 LUGARES ', 'NA', 'NA', '35 LUGARES ', '29 LUGARES ', '31 LUGARES ', 'NA', 'REFORZAR CONTEO (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/CASA CONTEO.JPG'),
(153, 10, 9, 3, 109, 'EL SISTEMA DE NUMERACIÓN OCTAL INCLUYE 8 CARACTERES DEL SISTEMA DECIMAL TRADICIONAL, Y NO SE DEBEN REPETIR CARACTERES, ADEMÁS CONSERVAN EL ORDEN TRADICIONAL DESDE EL VALOR MÍNIMO. EN ESE SENTIDO, LO CARACTERES DEL SISTEMA OCTAL SERIAN:', '0123 4567', 'NA', 'NA', '1234 56789', '0123 45678', '1234 5678', 'NA', 'REFORZAR SISTEMAS DE NUMERACIÓN', 'NA'),
(154, 10, 9, 3, 109, 'EL SISTEMA DE NUMERACIÓN HEXADECIMAL INCLUYE LETRAS PARA REPRESENTAR NUEVOS CARACTERES, YA QUE CONTEMPLA 16 VALORES, LAS LETRAS EN ESTE SISTEMA SE USAN EN EL MISMO ORDEN DEL ABECEDARIO. DE AHÍ QUE EL SISTEMA HEXADECIMAL EMPIEZA CON EL VALOR DE 0 HASTA 9, LUEGO EMPIEZAN LAS LETRAS, EL 10 SERÍA IGUAL A LA LETRA “A” Y ASÍ HASTA EL VALOR F. ¿CUÁL SERÍA EL VALOR DEL NÚMERO DOCE EN SISTEMA HEXADECIMAL?', 'C', 'NA', 'NA', 'B', 'F', 'A', 'NA', 'REFORZAR SISTEMAS DE NUMERACIÓN', 'NA'),
(155, 4, 9, 3, 116, 'PARA ELABORAR EL GRÁFICO QUE MUESTRA LA IMAGEN SE UTILIZÓ LA HERRAMIENTA DE:', 'SMARTART ', 'NA', 'NA', 'TABLAS', 'MAPA MENTAL', 'DIAGRAMA  ', 'NA', 'REFORZAR HERRAMIENTAS OFIMÁTICAS Y MULTIMEDIA', '../../images/preguntas/s.jpg'),
(156, 10, 9, 3, 111, 'UNA HOJA DE CÁLCULO ES UNA HERRAMIENTA DISEÑADA, EN PRIMER LUGAR, PARA:', 'GESTIONAR Y MANIPULAR DATOS', 'NA', 'NA', 'DISEÑO WEB', 'DIBUJO TÉCNICO', 'EDICIÓN DE TEXTO', 'NA', 'REFORZAR HOJAS DE CÁLCULO', 'NA'),
(157, 10, 9, 3, 111, ' SI TENEMOS UNA FUNCIÓN SI CON LA CONDICIÓN “SI EL NUMERO INGRESADO ES UN NÚMERO PRIMO”, SI SE CUMPLE ESA CONDICIÓN LA RESPUESTA SERÁ “HOLA MUNDO” Y SI NO SE CUMPLE, LA RESPUESTA SERÍA “INTENTA DE NUEVO”. CON BASE EN EJEMPLO ANTERIOR, CUÁL SERÍA LA RESPUESTA CORRECTA A ESE CONDICIONAL SI EL NÚMERO INGRESADO ES 7:', '“HOLA MUNDO” PORQUE EL NÚMERO INGRESADO ES PRIMO', 'NA', 'NA', '“HOLA MUNDO PORQUE EL NÚMERO INGRESADO NO ES PRIMO', '“HOLA MUNDO” PORQUE EL NÚMERO INGRESADO ES PAR', '“INTENTA DE NUEVO” EL NÚMERO INGRESADO NO ES PRIMO', 'NA', 'REFORZAR HOJAS DE CÁLCULO', 'NA'),
(158, 4, 9, 3, 115, 'UN SISTEMA, ES UN CONJUNTO DE PARTES O ELEMENTOS ORGANIZADOS Y RELACIONADOS QUE INTERACTÚAN ENTRE SÍ PARA LOGRAR UN OBJETIVO.  SEGÚN LO ANTERIOR, PUEDEN SER EJEMPLOS DE SISTEMAS:', 'UNA INSTITUCIÓN, LA COMPUTADORA, UN SERVICIO', 'NA', 'NA', 'LAS PLANTAS, EL CABELLO, LEER.', 'CEPILLARSE LOS DIENTES, BEBER, DORMIR', 'LAVAR LOS PLATOS, SALTAR.', 'NA', 'REFORZAR SISTEMAS TECNOLÓGICOS', 'NA'),
(159, 10, 9, 3, 111, '¿CUÁL ES EL 45 % DE 80?', '36', 'NA', 'NA', '37', '45', '40', 'NA', 'REFORZAR HOJAS DE CÁLCULO', 'NA'),
(160, 4, 9, 3, 115, '¿QUÉ SISTEMAS UTILIZA LA BOMBILLA, LA LICUADORA Y EL TELEVISOR PARA QUE FUNCIONEN CORRECTAMENTE?', 'SISTEMAS ELÉCTRICOS', 'NA', 'NA', 'SISTEMAS NEUMÁTICOS', 'SISTEMAS MECÁNICOS   ', 'SISTEMAS HIDRÁULICOS', 'NA', 'REFORZAR SISTEMAS TECNOLÓGICOS', 'NA'),
(161, 10, 9, 3, 111, 'SI EN UNA ESCUELA TENEMOS UN TOTAL 15 ESTUDIANTES APROBADOS Y 30 REPROBADOS, CUÁL SERÍA SU REPRESENTACIÓN EN PORCENTAJE:', 'T45 = 100%, APRO 15 = 33,3 %, REPROB 30 = 66,6%', 'NA', 'NA', '10 = 100% APROBADOS 15 = 15 % REPROBADOS 30 = 30%', '100 = 100%, APROBADOS 15 = 15 %, REPROBAD 30 = 30%', ' 45 = 100%, APROBA15 = 30 % REPROBADOS = 60%', 'NA', 'REFORZAR HOJAS DE CÁLCULO', 'NA'),
(162, 11, 9, 3, 112, 'QUÉ ES UNA VARIABLE:', 'UN VALOR QUE PUEDE CAMBIAR CONSTANTEMENTE', 'NA', 'NA', 'LETRA QUE ESCOJO AL AZAR Y TOMA UN VALOR CONSTANTE', 'UN NÚMERO DEL SISTEMA DECIMAL DE MÁS DE DOS CIFRAS', 'UN NÚMERO QUE NO CAMBIA NUNCA', 'NA', 'REFORZAR PROGRAMACIÓN', 'NA'),
(163, 11, 9, 3, 112, 'QUÉ ES UNA CONSTANTE:', 'CANTIDAD INVARIABLE QUE CONSERVA EL MISMO VALOR', 'NA', 'NA', 'UNA CANTIDAD VARIABLE QUE CAMBIA CON EL TIEMPO', 'CAMBIA CADA QUE LE INGRESAN UN VALOR NUEVO', 'UN NÚMERO QUE ALGUIEN SE INVENTÓ O PROPUSO', 'NA', 'REFORZAR PROGRAMACIÓN', 'NA'),
(164, 11, 9, 3, 112, 'QUE ES UNA ESTRUCTURA DE CONTROL O CONDICIONAL SI O IF():', 'CONDICIÓN PARA TOMAR UNA DE DOS POSIBLES OPCIONES', 'NA', 'NA', 'CONDICIÓN PARA TOMAR UNA DE DE TRES OPCIONES ', ' CONDICIÓN PARA TOMAR NINGUNA OPCIÓN', 'CONDICIÓN PARA TOMAR UNA DE DE CUATRO OPCIONES', 'NA', 'REFORZAR PROGRAMACIÓN', 'NA'),
(165, 11, 9, 3, 112, 'UN ALGORITMO ES: ', 'PASOS ORDENADOS PARA AUTOMATIZAR UN PROCESO', 'NA', 'NA', 'INSTRUCCIONES QUE ORDENAN BITS DENTRO DE CIRCUITOS', 'RECURSOS DIGITALES BASADOS EN LAS TIC', 'FIGURAS GEOMÉTRICAS QUE REPRESENTAN PROCESOS ', 'NA', 'REFORZAR PROGRAMACIÓN', 'NA'),
(166, 11, 9, 3, 112, 'EN PROGRAMACIÓN SE SUELE UTILIZAR UN OPERADOR MATEMÁTICO MUY ÚTIL PERO POCO CONOCIDO, SE TRATA DEL MÓDULO, QUE ES REPRESENTADO POR EL SIGNO DE PORCENTAJE (%), Y ESTÁ BASADO EN LA DIVISIÓN SOLO QUE EL RESULTADO ES LO QUE SOBRA DE ESA DIVISIÓN, ES DECIR, EL RESIDUO DE LA DIVISIÓN ES EL RESULTADO DEL OPERADOR MÓDULO (%). SEGÚN ESTO ¿CUÁL ES EL RESULTADO DE 5 MÓDULO DE 2?  ( 5 % 2 == ¿?):', '1', 'NA', 'NA', '2,5', '4', '2', 'NA', 'REFORZAR PROGRAMACIÓN', 'NA'),
(167, 11, 9, 3, 112, 'SELECCIONE LA OPCIÓN (EN TEXTO) QUE PRESENTE LOS COMPARADORES LÓGICOS O SÍMBOLOS DE DESIGUALDAD EN EL MISMO ORDEN QUE SE PRESENTAN A CONTINUACIÓN: <, >=, <, >', 'MENOR QUE, MAYOR O IGUAL QUE, MENOR QUE, MAYOR QUE', 'NA', 'NA', 'MENOR QUE, MENOR O IGUAL QUE, MENOR QUE, MAYOR QUE', 'MAYOR QUE, MENOR O IGUAL QUE, MAYOR QUE, MENOR QUE', 'MAYOR O IGUAL QUE, MAYOR QUE, MENOR QUE, MAYOR QUE', 'NA', 'REFORZAR PROGRAMACIÓN', 'NA'),
(168, 11, 9, 3, 112, 'EL OPERADOR LÓGICO “O” (OR) SIGNIFICA QUE DE DOS POSIBILIDADES SE DEBEN TENER EN CUENTA:', 'UNA DE LAS DOS', 'NA', 'NA', 'FORZOSAMENTE LAS DOS', 'NINGUNA DE LAS DOS', 'TRES OPCIONES ', 'NA', 'REFORZAR PROGRAMACIÓN', 'NA'),
(169, 11, 9, 3, 112, 'EL OPERADOR LÓGICO “Y” (AND) SIGNIFICA QUE DE DOS POSIBILIDADES SE DEBEN TENER EN CUENTA:', 'FORZOSAMENTE LAS DOS', 'NA', 'NA', 'UNA DE LAS DOS', 'NINGUNA DE LAS DOS', 'TRES OPCIONES ', 'NA', 'REFORZAR PROGRAMACIÓN', 'NA'),
(170, 5, 9, 3, 118, 'EL PLÁSTICO ES:', 'UN MATERIAL ELABORADO CON RECURSOS NATURALES.', 'NA', 'NA', 'ES UNA FUENTE DE ENERGÍA. ', 'ES MATERIA PRIMA, QUE SE EXTRAE DEL PETRÓLEO. ', 'UN RECURSO NATURAL.', 'NA', 'REFORZAR MATERIAS PRIMAS', 'NA'),
(171, 3, 5, 4, 51, 'OBSERVA LA IMAGEN. COQUER TIENE ALGUNAS FIGURAS GEOMÉTRICAS, ¿CUÁLES SON?', 'CIRCULOS-RECTANGULOS. ', 'TRIÁNGULOS. ', 'NA', 'ROMBOS-TRAPECIO. ', 'TRES CUADRADOS.', 'NA', 'NA', 'REFORZAR FIGURAS GEOMÉTRICAS (GEOMÉTRICO-MÉTRICO)', '../../images/preguntas/Diapositiva17.JPG'),
(172, 5, 9, 3, 118, 'LA IMAGEN MUESTRA:', 'MATERIAS PRIMAS ', 'NA', 'NA', 'ARTEFACTOS TECNOLÓGICOS.', 'RECURSOS PARA CONSTRUIR UNA CASA', 'PRODUCTOS DEL PETRÓLEO ', 'NA', 'REFORZAR MATERIAS PRIMAS', '../../images/preguntas/materiales.jpg'),
(173, 3, 5, 4, 51, 'OBSERVA LA IMAGEN. IDENTIFICA QUE FIGURAS GEOMÉTRICAS TIENE LA CASA ', 'CUADRADO-RECTÁNGULO ', 'CIRCULO-TRÁNGULO ', 'NA', 'TRAPECIO-ROMBO', 'ROMBOIDE-CONO', 'NA', 'NA', 'REFORZAR FIGURAS GEOMÉTRICAS (GEOMÉTRICO-MÉTRICO)', '../../images/preguntas/Diapositiva18.JPG'),
(174, 5, 9, 3, 117, 'LA ENERGÍA SOLAR ES UN RECURSO:', 'RENOVABLE', 'NA', 'NA', 'NO RENOVABLE', ' PARCIALMENTE RENOVABLE', 'ELABORADO POR EL HOMBRE', 'NA', 'REFORZAR FUENTES DE ENREGÍA', 'NA'),
(175, 3, 5, 3, 48, 'OBSERVA LA IMAGEN. SELECCIONA LA RESPUESTA CORRECTA', 'PEDRO ', 'NA', 'NA', 'OSCAR', 'JUAN', 'PEPITO', 'NA', 'REFORZAR NOCIÓN ESPACIAL (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/Oscar y Pepito.JPG'),
(176, 5, 9, 3, 117, '¿QUÉ FUENTE DE ENERGÍA MUESTRA LA IMAGEN?', 'ENERGÍA HIDRÁULICA', 'NA', 'NA', 'ENERGÍA QUÍMICA', 'ENERGÍA RADIANTE', 'ENERGÍA EÓLICA', 'NA', 'REFORZAR FUENTES DE ENREGÍA', '../../images/preguntas/3.jpg'),
(177, 5, 9, 3, 121, '¿EN QUÉ PROGRAMA SE PUEDE INSERTAR ANIMACIONES Y TRANSICIONES?', 'POWERPOINT', 'NA', 'NA', 'WORD', 'EXCEL', 'BLOG DE NOTAS   ', 'NA', 'REFORZAR POWERPOINT Y EXCEL', 'NA'),
(179, 5, 9, 3, 121, '¿CÓMO SE LLAMA LA PARTE RESALTADA QUE MUESTRA LA IMAGEN ? ', 'CELDA', 'NA', 'NA', 'FILA', 'COLUMNA', 'HOJA DE CÁLCULO', 'NA', 'REFORZAR POWERPOINT Y EXCEL', '../../images/preguntas/como se.jpg'),
(180, 3, 5, 5, 48, 'OBSERVA LA IMAGEN. SELECCIONA LAS AFIRMACIONES QUE PUEDES VER.', 'ARRIBA ALEJANDRA ESTÁ LEJOS DEL CARRO.', 'ABAJO EL CARRO ESTA CERCA DE ALEJANDRA.', 'HAY 3 ÁRBOLES SEPARADOS.', 'HAY 40 PERSONAS Y 2 CARROS.', 'NA', 'NA', 'NA', 'REFORZAR NOCIÓN ESPACIAL (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/CERCA LEJOS .JPG'),
(182, 3, 5, 2, 52, 'OBSERVA LA IMAGEN. ESCRIBE QUE NÚMERO ES MAYOR ', '389', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR NÚMEROS DE 100 EN 100 HASTA 1000 (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/Diapositiva14.JPG'),
(183, 5, 9, 3, 121, 'LA PARTE RESALTADA EN LA IMAGEN ES:', 'B3, C5 Y D3', 'NA', 'NA', '3B, 5C Y 3D', '4B, 5C Y 4D', 'LA FILA 3B HASTA D3', 'NA', 'REFORZAR POWERPOINT Y EXCEL', '../../images/preguntas/eeeee.jpg'),
(184, 3, 5, 2, 52, 'QUÉ NÚMERO FALTA EN LA SIGUIENTE SECUENCIA? 100,200,300,400,500,600,800,900,1.000.', '700', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR NÚMEROS DE 100 EN 100 HASTA 1000 (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/numeros de 100 en 100.jpg'),
(185, 5, 9, 3, 120, ' ¿QUÉ TIPO DE SEÑALIZACIÓN MUESTRA LA IMAGEN?', 'SEÑALIZACIÓN INFORMATIVA ', 'NA', 'NA', 'SEÑALIZACIÓN DE ADVERTENCIA', 'UN PLANO ', 'ZONA DE CONSTRUCCIÓN', 'NA', 'REFORZAR SEÑALES PREVENTIVAS REGLAMENTARIAS E INFORMATIVAS', '../../images/preguntas/SENALIZACION.jpg'),
(186, 5, 9, 3, 120, 'SEGÚN LA IMAGEN, ¿QUÉ TIPO DE SEÑAL ES?', 'SEÑALIZACIÓN DE ADVERTENCIA', 'NA', 'NA', 'SEÑALIZACIÓN INFORMATIVA ', 'STOP ', 'PUNTO DE INFORMACIÓN ', 'NA', 'REFORZAR SEÑALES PREVENTIVAS REGLAMENTARIAS E INFORMATIVAS', '../../images/preguntas/SENNN.jpg'),
(187, 5, 9, 3, 121, 'OBSERVA LA IMAGEN ¿QUÉ TIPO DE GRÁFICA REPRESENTA LOS DATOS?', ' GRAFICA DE BARRAS ', 'NA', 'NA', 'GRÁFICO DE LÍNEAS', 'GRAFICA CIRCULAR', 'NO USA GRAFICAS ', 'NA', 'REFORZAR POWERPOINT Y EXCEL', '../../images/preguntas/GRAFICOAS.jpg'),
(188, 5, 9, 3, 119, 'SON HERRAMIENTAS PARA ENVIAR O COMPARTIR ARCHIVOS:', 'GOOGLE DRIVE, GMAIL Y WETRANSFER.', 'NA', 'NA', 'GENIALLY, CANVA, USB.', 'EXCEL, PDF, PC.', 'POWERPOINT. WORD, BLOG DE NOTAS ', 'NA', 'REFORZAR HERRAMIENTAS INFORMÁTICAS', 'NA'),
(189, 3, 5, 5, 54, 'OBSERVA LA IMAGEN. SELECIONA LAS DIFERENCIAS CORRECTAS.', 'LA FIGURA DE LA CAMISA DE PATY, EL LIBRO DE TOMÁS.', 'EL MOÑO DE PAOLA, LA CAMISA DE PEDRO.', 'LA MOÑA DE IRIS, LOS ANTEOJOS DE TOMÁS ', 'LOS ANTEOJOS DE DIEGO ', 'NA', 'NA', 'NA', 'REFORZAR PENSAMIENTO LÓGICO (ALEATORIO-PROBABILÍSTICO)', '../../images/preguntas/diferencias.jpg'),
(190, 3, 5, 3, 54, 'SELECCIONA LA RESPUESTA CORRECTA. ', 'CERDO ', 'NA', 'NA', 'PATO', 'VACA', 'POLLO', 'NA', 'REFORZAR PENSAMIENTO LÓGICO (ALEATORIO-PROBABILÍSTICO)', '../../images/preguntas/secuencia1.jpg'),
(191, 5, 9, 3, 119, '¿QUÉ HERRAMIENTA MUESTRA LA IMAGEN?', ' HERRAMIENTA DE RECORTES ', 'NA', 'NA', 'BUSCADOR DE GOOGLE', 'HERRAMIENTA DE PEGAR', 'WHATSAPP', 'NA', 'REFORZAR HERRAMIENTAS INFORMÁTICAS', '../../images/preguntas/ERRR.jpg'),
(192, 7, 7, 3, 71, 'OBSERVA LA IMAGEN, LEE LA DESCRIPCIÓN, Y RECONOCE EL ADJETIVO. LUEGO, SELECCIONA EL SINÓNIMO. SYNONYM:', 'CHUBBY', 'NA', 'NA', 'CHEAP', 'YOUNG', 'THIN', 'NA', 'REFORZAR ADJETIVOS: SINÓNIMOS Y ANTÓNIMOS', '../../images/preguntas/1922...jpg'),
(193, 7, 7, 3, 71, 'OBSERVA LA IMAGEN, LEE LA DESCRIPCIÓN, Y RECONOCE EL ADJETIVO. LUEGO, SELECCIONA EL ANTÓNIMO. ANTONYM:', 'UGLY', 'NA', 'NA', 'TALL', 'HARDWORKING', 'BEAUTIFUL', 'NA', 'REFORZAR ADJETIVOS: SINÓNIMOS Y ANTÓNIMOS', '../../images/preguntas/193.jpg'),
(194, 7, 7, 3, 71, 'OBSERVA LA IMAGEN, LEE LA DESCRIPCIÓN, Y RECONOCE EL ADJETIVO. LUEGO, SELECCIONA EL ANTÓNIMO. ANTONYM:', 'YOUNG', 'NA', 'NA', 'CURLY', 'ANCIENT', 'EASYGOING', 'NA', 'REFORZAR ADJETIVOS: SINÓNIMOS Y ANTÓNIMOS', '../../images/preguntas/194.jpg'),
(195, 6, 9, 3, 123, '¿CUÁL ES UN EDITOR DE TEXTO?', 'WORD', 'NA', 'NA', 'CANVA', 'EXCEL', 'POWERPOINT', 'NA', 'REFORZAR MICROSOFT (EXCEL, POWERPOINT, WORD)', 'NA'),
(196, 7, 7, 3, 72, 'OBSERVA LA IMAGEN, LEE LA PREGUNTA, Y SELECCIONA LA RESPUESTA MÁS ADECUADA O LA QUE CONSIDERES CORRECTA. WHY DIDNT YOU COME TO SOCCER PRACTICE YESTERDAY?', 'I FELT ILL, SO I STAYED AT HOME', 'NA', 'NA', 'WE WATCHED THE GAME ON TV', 'WE WON THE GAME', 'MY PARENTS ARE HAPPY', 'NA', 'REFORZAR EXPRESIONES PARA HABLAR DE ACCIONES PASADAS', '../../images/preguntas/196..jpg'),
(197, 6, 9, 3, 123, 'EN LA IMAGEN SE MUESTRA', 'UNA HOJA DE CÁLCULO ', 'NA', 'NA', 'UNA HOJA DE WORD', 'UNA DIAPOSITIVA ', 'UNA GRÁFICA DE BARRAS', 'NA', 'REFORZAR MICROSOFT (EXCEL, POWERPOINT, WORD)', '../../images/preguntas/hoja.jpg'),
(198, 7, 7, 3, 72, 'OBSERVA LA IMAGEN, LEE LA PREGUNTA, Y SELECCIONA LA RESPUESTA MÁS ADECUADA O LA QUE CONSIDERES CORRECTA. WHERE DID YOU BUY THAT BIKE?', 'I DID NOT BUY IT. MY MOTHER GAVE IT TO ME', 'NA', 'NA', 'IT COSTS 300.000', 'THE BIKE IS IN THE GARAGE', 'YES, THEY ARE FINE', 'NA', 'REFORZAR EXPRESIONES PARA HABLAR DE ACCIONES PASADAS', '../../images/preguntas/198.jpg'),
(199, 7, 7, 3, 72, 'OBSERVA LA IMAGEN, LEE LA PREGUNTA, Y SELECCIONA LA RESPUESTA MÁS ADECUADA O LA QUE CONSIDERES CORRECTA. DID SHE DO HER ENGLISH HOMEWORK YESTERDAY?', 'YES, SHE DID HER HOMEWORK', 'NA', 'NA', 'NO, SHE ATE PIZZA', 'YES, SHE IS DOING HER HOMEWORK', 'YES, SHE PLAYED THE PIANO', 'NA', 'REFORZAR EXPRESIONES PARA HABLAR DE ACCIONES PASADAS', '../../images/preguntas/199,.jpg'),
(200, 6, 9, 3, 123, '¿CÓMO SE LLAMA LA CELDA QUE REPRESENTA LA GRÁFICA?', 'C3', 'NA', 'NA', '3C', 'D5', 'J3', 'NA', 'REFORZAR MICROSOFT (EXCEL, POWERPOINT, WORD)', '../../images/preguntas/exc.jpg'),
(201, 7, 7, 3, 72, 'OBSERVA LA IMAGEN, LEE LA PREGUNTA, Y SELECCIONA LA RESPUESTA MÁS ADECUADA O LA QUE CONSIDERES CORRECTA. WHERE YOU AT WORK WHEN I PHONED THIS MORNING?', 'YES, WE WERE', 'NA', 'NA', 'YES, WE DID', 'NO, I WAS NOT EATING', 'NO, WE DID NOT', 'NA', 'REFORZAR EXPRESIONES PARA HABLAR DE ACCIONES PASADAS', '../../images/preguntas/201.jpg'),
(202, 7, 7, 3, 70, 'OBSERVA EL RELOJ DE LA IMAGEN Y SELECCIONA LA HORA CORRECTA. WHAT TIME IS IT?', 'IT IS FORTY ONE PAST FIVE', 'NA', 'NA', 'IT IS FORTY PAST FOUR', 'IT IS A TWENTY TO FIVE', 'IT IS A QUARTER TO SIX', 'NA', 'REFORZAR LA HORA Y NUMEROS', '../../images/preguntas/202.jpg'),
(203, 7, 7, 3, 70, 'OBSERVA EL RELOJ DE LA IMAGEN Y SELECCIONA LA HORA CORRECTA. WHAT TIME IS IT?', 'IT IS A QUARTER PAST SEVEN', 'NA', 'NA', 'IT IS A QUARTER TO SEVEN', 'IT IS SEVEN O CLOCK', 'IT IS HALF PAST SEVEN', 'NA', 'REFORZAR LA HORA Y NUMEROS', '../../images/preguntas/203.jpg'),
(204, 6, 9, 3, 123, '¿QUÉ CELDAS ESTÁN RELLENAS DE COLOR?', ' COLUMNA C2 - C12 FILA D1 - G1', 'NA', 'NA', 'FILA C2 - C12 COLUMNA D1 - G1', 'FILA C2 - C11 COLUMNA D1 – G5', 'COLUMNA C3 - C18 FILA D2 - G1', 'NA', 'REFORZAR MICROSOFT (EXCEL, POWERPOINT, WORD)', '../../images/preguntas/EXD.jpg'),
(205, 7, 7, 3, 69, 'LEE EL TEXTO DE LA IMAGEN Y RESPONDE LA SIGUIENTE PREGUNTA: WHAT IS DAVID TO LUCIANA? ', 'BROTHER', 'NA', 'NA', 'SISTER', 'COUSIN', 'FRIEND', 'NA', 'REFORZAR PREGUNTAS DE INFORMACIÓN BÁSICA', '../../images/preguntas/reading2.png'),
(206, 6, 9, 3, 125, 'QUÉ SISTEMAS UTILIZA LA BOMBILLA, LA LICUADORA Y EL TELEVISOR PARA QUE FUNCIONEN CORRECTAMENTE.', 'SISTEMAS ELÉCTRICOS', 'NA', 'NA', 'SISTEMAS NEUMÁTICOS', 'SISTEMAS MECÁNICOS   ', 'SISTEMAS HIDRÁULICOS', 'NA', 'REFORZAR SISTEMAS TECNOLÓGICOS', 'NA'),
(207, 6, 9, 3, 125, '¿QUÉ SISTEMA UTILIZA LA  BICICLETA?', 'SISTEMAS MECÁNICOS  ', 'NA', 'NA', 'SISTEMAS NEUMÁTICOS', ' SISTEMAS ELÉCTRICOS', 'SISTEMAS HIDRÁULICOS', 'NA', 'REFORZAR SISTEMAS TECNOLÓGICOS', 'NA'),
(208, 7, 7, 3, 69, 'LEE EL TEXTO DE LA IMAGEN Y RESPONDE LA SIGUIENTE PREGUNTA: WHAT DOES ANDREA DO?', 'SHE IS A TEACHER', 'NA', 'NA', 'SHE IS A MUSICIAN', 'SHE IS A NURSE', 'SHE IS A DOCTOR', 'NA', 'REFORZAR PREGUNTAS DE INFORMACIÓN BÁSICA', '../../images/preguntas/205.jpg'),
(209, 7, 7, 3, 69, 'LEA EL TEXTO Y RESPONDA LA PREGUNTA: \rWHAT IS EMANUEL TO JUAN?', 'SON', 'NA', 'NA', 'SISTER', 'COUSIN', 'FRIEND', 'NA', 'REFORZAR PREGUNTAS DE INFORMACIÓN BÁSICA', '../../images/preguntas/QUESTION205.jpg'),
(210, 6, 9, 3, 125, 'UN SISTEMA, ES UN CONJUNTO DE PARTES O ELEMENTOS ORGANIZADOS Y RELACIONADOS QUE INTERACTÚAN ENTRE SÍ PARA LOGRAR UN OBJETIVO. SON EJEMPLOS DE SISTEMA:', 'UNA INSTITUCIÓN, LA COMPUTADORA, EL TRANSPORTE.', 'NA', 'NA', 'LAS PLANTAS, EL CABELLO, LEER.', 'CEPILLARSE LOS DIENTES, LAVAR LOS PLATOS, SALTAR.', 'VIAJAR, CONDUCIR, LEER.', 'NA', 'REFORZAR SISTEMAS TECNOLÓGICOS', 'NA'),
(211, 6, 9, 3, 126, 'EL CARPINTERO DESEMPEÑA UN OFICIO, PORQUE SUS CONOCIMIENTOS Y DESTREZAS FUERON ADQUIRIDOS POR EXPERIENCIA O POR LA FORMACIÓN TÉCNICA. ENTONCES ¿QUÉ HERRAMIENTAS TECNOLÓGICAS NECESITA UN CARPINTERO? ', 'SERRUCHO, FLEXÓMETRO, MARTILLO… ', 'NA', 'NA', 'UN SISTEMA ELÉCTRICO', 'INTERNET, DATOS Y DESTORNILLADOR', 'IMPRESORA, UN CARRO Y EL TELÉFONO', 'NA', 'REFORZAR HERRAMIENTAS TECNOLÓGICAS', 'NA'),
(212, 6, 9, 3, 126, '¿QUÉ HERRAMIENTAS TECNOLÓGICAS NECESITA UN MÉDICO? ', 'ESTETOSCOPIO, TENSIÓMETRO, TERMÓMETRO.', 'NA', 'NA', 'SERRUCHO, FLEXÓMETRO, MARTILLO… ', 'COMPUTADOR, TABLERO, AGENDA', 'LINTERNA, SOLDADORA, ALICATES', 'NA', 'REFORZAR HERRAMIENTAS TECNOLÓGICAS', 'NA'),
(213, 6, 9, 3, 127, ' ¿QUÉ TIPO DE ENERGÍA MUESTRA LA IMAGEN?', 'ENERGÍA MECÁNICA', 'NA', 'NA', 'ENERGÍA SONORA O ACÚSTICA', 'ENERGÍA HIDRÁULICA', 'ENERGÍA QUÍMICA ', 'NA', 'REFORZAR TIPOS DE ENERGÍA', '../../images/preguntas/me.jpg'),
(214, 7, 7, 3, 69, 'LEE EL TEXTO DE LA IMAGEN Y RESPONDE LA SIGUIENTE PREGUNTA: WHO IS THE YOUNGEST IN THE FAMILY?', 'EMANUEL', 'NA', 'NA', 'JUAN', 'DAVID', 'ANDREA', 'NA', 'REFORZAR PREGUNTAS DE INFORMACIÓN BÁSICA', '../../images/preguntas/205b.jpg'),
(215, 7, 7, 3, 69, 'LEE EL TEXTO DE LA IMAGEN Y RESPONDE LA SIGUIENTE PREGUNTA: HOW OLD IS LUCIANA?', 'SHE IS ELEVEN YEARS OLD.', 'NA', 'NA', 'SHE IS TEN YEARS OLD.', 'SHE IS THIRTEEN YEARS OLD', 'SHE IS FIVE YEARS OLD', 'NA', 'REFORZAR PREGUNTAS DE INFORMACIÓN BÁSICA', '../../images/preguntas/205c.jpg'),
(216, 7, 7, 3, 69, 'LEE EL TEXTO DE LA IMAGEN Y RESPONDE LA SIGUIENTE PREGUNTA: WHAT IS JUAN TO ANDREA?', 'HUSBAND', 'NA', 'NA', 'SISTER', 'WIFE', 'FRIEND', 'NA', 'REFORZAR PREGUNTAS DE INFORMACIÓN BÁSICA', '../../images/preguntas/205d.jpg'),
(217, 6, 9, 3, 127, '¿QUÉ TIPO DE ENERGÍA MUESTRA LA IMAGEN? ', 'ENERGÍA SONORA O ACÚSTICA', 'NA', 'NA', 'ENERGÍA MECÁNICA', 'ENERGÍA HIDRÁULICA', 'ENERGÍA QUÍMICA', 'NA', 'REFORZAR TIPOS DE ENERGÍA', '../../images/preguntas/energiaaaaaa.jpg'),
(218, 6, 9, 3, 128, 'SON FUENTES DE ENERGÍAS NO RENOVABLES', 'LOS COMBUSTIBLES FÓSILES (CARBÓN, GAS NATURAL)', 'NA', 'NA', ' MAREOMOTRIZ (MAREAS)', ' HIDRÁULICA (EMBALSES)', '  EÓLICA (VIENTO)', 'NA', 'REFORZAR FUENTES DE ENERGÍA RENOVABLES Y NO RENOVABLES', 'NA'),
(220, 6, 9, 3, 128, 'SON FUENTES DE ENERGÍAS RENOVABLES', ' ENERGÍA EÓLICA (VIENTO)', 'NA', 'NA', 'LA ENERGÍA NUCLEAR', ' GAS NATURAL', 'PETRÓLEO.', 'NA', 'REFORZAR FUENTES DE ENERGÍA RENOVABLES Y NO RENOVABLES', 'NA'),
(221, 6, 9, 3, 129, ' UN SOFTWARE ES EL CONJUNTO DE PROGRAMAS O APLICACIONES, INSTRUCCIONES Y REGLAS INFORMÁTICAS QUE HACEN POSIBLE EL FUNCIONAMIENTO DEL EQUIPO. UN EJEMPLO DE SOFTWARE ES:', 'MICROSOFT OFFICE (WORD, EXCEL, POWERPOINT)', 'NA', 'NA', 'LA TEMPERATURA', 'LA LECTURA', 'LA ESCRITURA', 'NA', 'REFORZAR HARDWARE Y SOFTWARE', 'NA'),
(222, 6, 9, 3, 129, 'ES EL CONJUNTO DE COMPONENTES FÍSICOS DE LOS QUE ESTÁ HECHO UN EQUIPO COMO EL COMPUTADOR. EL TEXTO SE REFIERE A:', 'HARDWARE (TECLADO, MONITOR, RATÓN)', 'NA', 'NA', 'MICROSOFT OFFICE (WORD, EXCEL, POWERPOINT)', 'LA IMPRESORA ', 'EL SOFTWARE DE UNA COMPUTADORA ', 'NA', 'REFORZAR HARDWARE Y SOFTWARE', 'NA'),
(224, 6, 9, 3, 124, '¿QUÉ HERRAMIENTA MUESTRA LA IMAGEN?', ' HERRAMIENTA DE RECORTES  ', 'NA', 'NA', 'BUSCADOR DE GOOGLE', 'HERRAMIENTA DE PEGAR', 'WHATSAPP', 'NA', 'REFORZAR OFIMÁTICA', '../../images/preguntas/Joha.jpg'),
(225, 6, 9, 3, 124, 'SON HERRAMIENTAS PARA ENVIAR O COMPARTIR ARCHIVOS. ', 'POWERPOINT. WORD, BLOG DE NOTAS ', 'NA', 'NA', 'GENIAL.LY, CANVA, USB.', 'GOOGLE DRIVE, GMAIL Y WETRANSFER.', 'EXCEL, PDF  Y PC', 'NA', 'REFORZAR OFIMÁTICA', 'NA'),
(227, 7, 7, 3, 68, '¿CUÁL EXPRESIÓN SE RELACIONA CORRECTAMENTE CON LA IMAGEN? WHAT DOES HE DO?', 'HE RIDES A BICYCLE', 'NA', 'NA', 'HE DRIVES A CAR', 'SHE WALKS THE CAT', 'WE GO TO EAT HAMBURGER', 'NA', 'REFORZAR ACTIVIDADES COTIDIANAS Y PASATIEMPOS', '../../images/preguntas/227.jpg'),
(228, 7, 7, 3, 68, '¿CUÁL EXPRESIÓN SE RELACIONA CORRECTAMENTE CON LA IMAGEN? WHAT DOES HE DO?', 'HE GOES TO THE HAIRDRESSER', 'NA', 'NA', 'HE DRIVES A CAR', 'HE GOES TO THE SUPERMARKET', 'HE BRUSHES HIS TEETH', 'NA', 'REFORZAR ACTIVIDADES COTIDIANAS Y PASATIEMPOS', '../../images/preguntas/228.jpg'),
(229, 7, 7, 3, 68, '¿CUÁL EXPRESIÓN SE RELACIONA CORRECTAMENTE CON LA IMAGEN? WHAT DO THEY DO?', 'THEY DRIVE A CAR', 'NA', 'NA', 'THEY WALK THE DOGS', 'THEY GO TO A RESTAURANT', 'THEY WAKE UP', 'NA', 'REFORZAR ACTIVIDADES COTIDIANAS Y PASATIEMPOS', '../../images/preguntas/229.jpg'),
(230, 7, 7, 3, 68, '¿CUÁL EXPRESIÓN SE RELACIONA CORRECTAMENTE CON LA IMAGEN? WHAT DOES SHE DO?', 'SHE WALKS THE DOG', 'NA', 'NA', 'SHE GOES TO THE HAIRDRESSER', 'SHE BRUSHES HER TEETH', 'THEY RIDE A BICYCLE', 'NA', 'REFORZAR ACTIVIDADES COTIDIANAS Y PASATIEMPOS', '../../images/preguntas/230.jpg'),
(231, 8, 7, 3, 78, 'OBSERVA LA IMAGEN Y ESCOGE EL NOMBRE DE LA MUJER DE LA QUE SE HABLA EN LA SIGUIENTE DESCRIPCIÓN: SHE HAS LONG CURLY RED HAIR. SHE IS A YOUNG WOMAN, SHE SEEMS TO BE NICE AND GENTLE, AND HER EYES ARE BROWN. WHAT IS HER NAME?', 'CAMILA', 'NA', 'NA', 'ANA', 'LUCY', 'WENDY', 'NA', 'REFORZAR CARACTERÍSTICAS BÁSICAS DE PERSONAS, COSAS Y LUGARES', '../../images/preguntas/231.jpg'),
(232, 8, 7, 3, 78, 'LEE EL TEXTO QUE ESTÁ DENTRO DE LA IMAGEN Y ESCOGE EL NOMBRE DE LA MUJER QUE CUMPLE CON ESAS CARACTERÍSTICAS. WHO IS HER? WHAT IS HER NAME?', 'WENDY', 'NA', 'NA', 'ANA', 'LUCY', 'CAMILA', 'NA', 'REFORZAR CARACTERÍSTICAS BÁSICAS DE PERSONAS, COSAS Y LUGARES', '../../images/preguntas/232.jpg'),
(233, 8, 7, 3, 78, 'LEE EL TEXTO QUE ESTÁ DENTRO DE LA IMAGEN Y ESCOGE EL LUGAR QUE CUMPLE CON ESAS CARACTERÍSTICAS. WHAT IS THE NAME OF THAT PLACE?', 'BEDROOM', 'NA', 'NA', 'LIVING ROOM', 'KITCHEN', 'BATHROOM', 'NA', 'REFORZAR CARACTERÍSTICAS BÁSICAS DE PERSONAS, COSAS Y LUGARES', '../../images/preguntas/233.jpg'),
(234, 8, 7, 3, 78, 'ESCOGE EL OBJETO - MEDIO DE TRANSPORTE DEL QUE SE HABLA EN LA SIGUIENTE DESCRIPCIÓN: THIS OBJECT IS A WAY OF TRANSPORT.  MANY PEOPLE USE IT. IT IS ENTERTAINING TO RIDE IT, IT IS NOT EXPENSIVE. IT HAS TWO WHEELS, ONLY ONE SEAT, AND TO USE IT, YOU NEED A HELMET. WHAT IS IT?', 'BIKE', 'NA', 'NA', 'TRAIN', 'SKATEBOARD', 'CAR', 'NA', 'REFORZAR CARACTERÍSTICAS BÁSICAS DE PERSONAS, COSAS Y LUGARES', '../../images/preguntas/234..jpg'),
(235, 8, 7, 3, 80, 'ESCOGE LA EXPRESIÓN MÁS ADECUADA PARA RESPONDER A LA SIGUIENTE PREGUNTA, TEN EN CUENTA LA IMAGEN. QUESTION: WHERE ARE YOU GOING?', 'I AM GOING HOME', 'NA', 'NA', 'IT IS MY NEW SUITCASE', 'MY APOLOGIES', 'I AM RUNNING TO THE BEACH', 'NA', 'REFORZAR EXPRESIONES PARA PREGUNTAR', '../../images/preguntas/235.jpg'),
(236, 8, 7, 3, 80, 'ESCOGE LA EXPRESIÓN MÁS ADECUADA PARA RESPONDER A LA SIGUIENTE PREGUNTA, TEN EN CUENTA LA IMAGEN. QUESTION: WHO IS THE BEST PLAYER IN OUR FOOTBALL TEAM?', 'CHARLIE IS THE BEST FOOTBALL PLAYER', 'NA', 'NA', 'JHON IS THE BEST BASKETBALL PLAYER', 'WE ARE THE BEST SINGERS', 'LAURA IS THE BEST SKATER', 'NA', 'REFORZAR EXPRESIONES PARA PREGUNTAR', '../../images/preguntas/236.jpg'),
(237, 8, 7, 3, 80, 'ESCOGE LA EXPRESIÓN MÁS ADECUADA PARA RESPONDER A LA SIGUIENTE PREGUNTA, TEN EN CUENTA LA IMAGEN. QUESTION: WHAT WERE YOU DOING YESTERDAY?', 'I WAS READING A BOOK', 'NA', 'NA', 'I AM READING A BOOK TODAY', 'I WAS EATING PIZZA', 'I WAS PLAYING COMPUTER GAMES', 'NA', 'REFORZAR EXPRESIONES PARA PREGUNTAR', '../../images/preguntas/237.jpg'),
(238, 8, 7, 3, 80, 'ESCOGE LA EXPRESIÓN MÁS ADECUADA PARA RESPONDER A LA SIGUIENTE PREGUNTA, TEN EN CUENTA LA IMAGEN. QUESTION: WHAT TIME DOES YOUR MOTHER COME BACK HOME?', 'SHE COMES BACK HOME AT 6:00 PM', 'NA', 'NA', 'IT IS HALF PAST FIVE', 'WE LEAVE HOME AT 6:00 AM', 'IT STARTS AT 10:00 AM', 'NA', 'REFORZAR EXPRESIONES PARA PREGUNTAR', '../../images/preguntas/238.jpg'),
(239, 8, 7, 3, 80, 'ESCOGE LA EXPRESIÓN MÁS ADECUADA PARA RESPONDER A LA SIGUIENTE PREGUNTA, TEN EN CUENTA LA IMAGEN. QUESTION: WHY THE SAD FACE?', 'MY CAT PASSED AWAY', 'NA', 'NA', 'I MUST GO NOW', 'I BOUGHT ICE CREAM', 'I AM HAPPY', 'NA', 'REFORZAR EXPRESIONES PARA PREGUNTAR', '../../images/preguntas/239.jpg'),
(240, 8, 7, 3, 76, 'LEE EL TEXTO QUE ESTÁ DENTRO DE LA IMAGEN Y RESPONDE LA SIGUIENTE PREGUNTA: WHERE IS SARA DURING THE VIDEO?', 'SHE IS AT THE EXPLORA PARK IN MEDELLÍN', 'NA', 'NA', 'SHE IS IN A BOAT', 'SHE LIVES IN BOGOTÁ', 'SHE IS AT BOTERO PARK IN MEDELLÍN', 'NA', 'REFORZAR EXPRESIONES RELACIONADAS CON RUTINAS DIARIAS', '../../images/preguntas/240,.M.jpg'),
(241, 8, 7, 3, 76, 'LEE EL TEXTO QUE ESTÁ DENTRO DE LA IMAGEN Y RESPONDE LA SIGUIENTE PREGUNTA: WHAT IS SHE DOING?', 'SHE IS SITTING ON A BENCH, HAVING HER LUNCH.', 'NA', 'NA', 'SHE IS WORKING', 'SHE IS TAKING SCIENCE CLASSES.', 'SHE IS EXPLORING THE PARK', 'NA', 'REFORZAR EXPRESIONES RELACIONADAS CON RUTINAS DIARIAS', '../../images/preguntas/240a.jpg'),
(242, 8, 7, 3, 76, 'LEE EL TEXTO QUE ESTÁ DENTRO DE LA IMAGEN Y RESPONDE LA SIGUIENTE PREGUNTA: WHAT DOES SARA ALWAYS DO WHEN SHE HAS LUNCH IN THE PARK? ', 'SHE ALWAYS WATCHES SQUIRRELS', 'NA', 'NA', 'SHE ALWAYS FEEDS THE BIRDS', 'SHE ALWAYS DRINKS LEMONADE', 'SHE ALWAYS TAKES PICTURES', 'NA', 'REFORZAR EXPRESIONES RELACIONADAS CON RUTINAS DIARIAS', '../../images/preguntas/240b.jpg'),
(243, 8, 7, 3, 76, 'LEE EL TEXTO QUE ESTÁ DENTRO DE LA IMAGEN Y RESPONDE LA SIGUIENTE PREGUNTA: HOW OFTEN DOES THE POLICEMAN RIDE HIS HORSE?', 'HE RIDES HIS HORSE EVERY DAY', 'NA', 'NA', 'HE RIDES HIS HORSE EVERY WEEKEND', 'HE RIDES HIS HORSE ON TUESDAYS', 'HE NEVER RIDES HIS HORSE', 'NA', 'REFORZAR EXPRESIONES RELACIONADAS CON RUTINAS DIARIAS', '../../images/preguntas/240c.jpg');
INSERT INTO `tbl_preguntas` (`id`, `id_grado`, `id_materia`, `id_tipo_pregunta`, `id_tema`, `pregunta`, `r1ok`, `r2ok`, `r3ok`, `r1no`, `r2no`, `r3no`, `r4no`, `retroalimentacion`, `imagen`) VALUES
(244, 8, 7, 5, 77, 'OBSERVA LA IMAGEN, LEE CUIDADOSAMENTE EL TEXTO, Y ELIGE TRES (3) PALABRAS PARA COMPLETAR LA DESCRIPCIÓN. WHICH COUNTRY? WHICH NATIONALITY? WHICH LANGUAGE?', 'INDIA', 'INDIAN', 'HINDI', 'HINDUISM', 'NA', 'NA', 'NA', 'REFORZAR PAÍSES Y NACIONALIDADES', '../../images/preguntas/244..jpg'),
(245, 8, 7, 5, 77, 'OBSERVA LA IMAGEN, LEE CUIDADOSAMENTE EL TEXTO, Y ELIGE TRES (3) PALABRAS PARA COMPLETAR LA DESCRIPCIÓN. WHICH COUNTRY? WHICH NATIONALITY? WHICH LANGUAGE?', 'JAPAN ', 'JAPANESE', 'JAPANESE', 'KOREAN', 'NA', 'NA', 'NA', 'REFORZAR PAÍSES Y NACIONALIDADES', '../../images/preguntas/245.jpg'),
(247, 8, 7, 5, 77, 'OBSERVA LA IMAGEN, LEE CUIDADOSAMENTE EL TEXTO, Y ELIGE TRES (3) PALABRAS PARA COMPLETAR LA DESCRIPCIÓN. WHICH COUNTRY? WHICH NATIONALITY? WHICH LANGUAGE?', 'THE UNITED STATES', 'NORTH AMERICAN', 'ENGLISH', 'ENGLAND', 'NA', 'NA', 'NA', 'REFORZAR PAÍSES Y NACIONALIDADES', '../../images/preguntas/247..jpg'),
(248, 8, 7, 5, 77, 'OBSERVA LA IMAGEN, LEE CUIDADOSAMENTE EL TEXTO, Y ELIGE TRES (3) PALABRAS PARA COMPLETAR LA DESCRIPCIÓN. WHICH COUNTRY? WHICH NATIONALITY? WHICH LANGUAGE?', 'ITALY', 'ITALIAN', 'ITALIAN', 'PORTUGAL', 'NA', 'NA', 'NA', 'REFORZAR PAÍSES Y NACIONALIDADES', '../../images/preguntas/248.jpg'),
(249, 8, 7, 5, 79, 'OBSERVA LA IMAGEN Y SELECCIONA TRES (3) EXPRESIONES PARA SALUDAR QUE COMPLETEN EL DIAGRAMA. THREE EXPRESSIONS TO SAY HELLO:', 'HOW ARE YOU?', 'GOOD MORNING!', 'GOOD AFTERNOON!', 'BYE, SEE YOU NEXT TIME!', 'NA', 'NA', 'NA', 'REFORZAR EXPRESIONES PARA SALUDAR', '../../images/preguntas/249.jpg'),
(250, 8, 7, 3, 79, 'OBSERVA LA IMAGEN Y COMPLETA LA CONVERSACIÓN CON LA EXPRESIÓN MÁS ADECUADA. GOOD MORNING SARAH. HOW ARE YOU? ', 'I AM GOOD. HOW ARE YOU JUAN? ', 'NA', 'NA', 'GOOD NIGHT. HAVE A GOOD EVENING!', 'BYE, SEE YOU TOMORROW', 'THANK YOU, YOU TOO!', 'NA', 'REFORZAR EXPRESIONES PARA SALUDAR', '../../images/preguntas/250.jpg'),
(251, 8, 7, 3, 79, 'OBSERVA LA IMAGEN Y COMPLETA LA CONVERSACIÓN CON LA EXPRESIÓN MÁS ADECUADA. HELLO, I AM EMILY LENSKI.', 'HI EMILY, I AM JENNIE SMITH. NICE TO MEET YOU', 'NA', 'NA', 'BYE EMILY!', 'OK EMILY. THANKS!', 'I AM FINE!', 'NA', 'REFORZAR EXPRESIONES PARA SALUDAR', '../../images/preguntas/251.jpg'),
(252, 8, 7, 3, 79, 'OBSERVA LA IMAGEN Y COMPLETA LA CONVERSACIÓN CON LA EXPRESIÓN MÁS ADECUADA. YES, I AM HERE FOR AN ENGLISH CLASS. I AM KEVIN TORRES.', 'HELLO. ARE YOU HERE FOR AN ENGLISH CLASS? ', 'NA', 'NA', 'GOOD MORNING. ARE YOU HERE FOR A SPANISH CLASS?', 'BYE! SEE YOU IN THE FRENCH CLASS', 'I AM HAPPY, AND YOU?', 'NA', 'REFORZAR EXPRESIONES PARA SALUDAR', '../../images/preguntas/252.jpg'),
(253, 9, 5, 2, 36, 'SE TIENE EL MISMO NÚMERO DE CAJAS DE MANZANAS QUE DE LIMONES. SI EN UNA CAJA DE MANZANAS CABEN 13 UNIDADES Y EN UNA DE LIMONES CABEN 17, ¿CUÁNTAS CAJAS SE TIENE SI HAY UN TOTAL DE 180 FRUTAS? INGRESE ÚNICAMENTE EL VALOR NUMÉRICO.', '12', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR SOLUCIÓN DE ECUACIONES LINEALES (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/frutas.png'),
(254, 2, 5, 5, 1, 'OBSERVA LA IMAGEN. SELECCIONA LOS COLORES QUE HAY EN LOS CIRCULOS.', 'AMARILLO ', 'AZUL ', 'ROJO ', 'NEGRO ', 'NA', 'NA', 'NA', 'REFORZAR COLORES', '../../images/preguntas/COLORES 12.JPG'),
(255, 2, 5, 3, 1, 'OBSERVA LAIMAGE. SELECCIONA LA RESPUESTA CORRECTA  ', 'VERDE ', 'NA', 'NA', 'AZUL', 'MORADA', 'CAFÉ', 'NA', 'REFORZAR COLORES', '../../images/preguntas/COLOR verde.JPG'),
(256, 2, 5, 2, 41, 'OBSERVA LA IMAGEN. ESCRIBE CUANTOS PAJAROS HAY DEBAJO DE LA MESA.  ', '5', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR NOCIÓN ESPACIAL (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/ENCIMA DEBAJO.JPG'),
(257, 2, 5, 3, 1, 'OBSERVA LA IMAGEN. ¿QUIÉN ES MÁS ALTO, OSCAR O DIANA.? ', 'OSCAR ', 'NA', 'NA', 'DIANA ', 'JUAN ', 'PAOLA', 'NA', 'REFORZAR NOCIÓN ESPACIAL', '../../images/preguntas/ALTO BAJO.JPG'),
(258, 2, 5, 3, 1, 'OBSERVA LA IMAGEN. ¿CUÁL ES EL PERRO GRANDE?', 'OTTO', 'NA', 'NA', 'SASHA', 'ROKO', 'TOMY', 'NA', 'REFORZAR NOCIÓN ESPACIAL', '../../images/preguntas/GRANDE PEQUE MEDIANO.JPG'),
(259, 2, 5, 2, 1, 'OBSERVA LA IMAGEN. ¿DE MANOLO Y JUANCHO QUIÉN ES DELGADO? ESCRIBE EL NOMBRE.  ', 'JUANCHO', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR NOCIÓN ESPACIAL', '../../images/preguntas/GORDO FLACO.JPG'),
(260, 2, 5, 4, 41, 'OBSERVA LA IMAGEN. SELECCIONA LA RESPUESTA CORRECTA  ', 'PAOLA', 'FREDY', 'NA', 'DIANA', 'DIEGO', 'NA', 'NA', 'REFORZAR NOCIÓN ESPACIAL (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/DERECHA IZQUIERDA.JPG'),
(261, 2, 5, 2, 1, 'OBSERVA LA IMAGEN. ESCRIBE CUANTAS CANICAS CONTASTE. EJEMPLO: 10 ', '16', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR CONTEO', '../../images/preguntas/BOLINCHES.JPG'),
(262, 2, 5, 2, 1, 'OBSERVA LA IMAGEN. ¿CUÁNTAS CUCHARAS HAY EN LA IMAGEN? ESCRIBE EL NÚMERO. ', '13', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR CONTEO', '../../images/preguntas/CUCHARAS.JPG'),
(263, 2, 5, 2, 1, 'OBSERVA LA IMAGEN. SUMA LOS PRODUCTOS Y ESCRIBE LA RESPUESTA EJEMPLO: 4', '8', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR SUMA', '../../images/preguntas/PRODUCTOS 2.JPG'),
(264, 2, 5, 2, 1, 'OBSERVA LA IMAGEN. SUMA LOS ZAPATOS Y ESCRIBE LA RESPUESTA EJEMPLO: 3 ', '6', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR SUMA', '../../images/preguntas/ZAPATOS.JPG'),
(265, 2, 5, 3, 1, 'OBSERVA LA IMAGEN. SELECCIONA LA RESPUESTA CORRECTA.', 'SOL', 'NA', 'NA', 'MANZANA', 'PERA ', 'LUNA', 'NA', 'REFORZAR PENSAMIENTO LÓGICO', '../../images/preguntas/SECUENCIAS.JPG'),
(266, 2, 5, 5, 1, 'OBSERVA LA IMAGEN. SELECCIONA LAS DIFERENCIAS QUE TIENEN LOS ELEFANTES. ', 'EL OJO. ', 'EL COLOR DEL CUERPO.', 'LA TROMPA.', 'LAS PATAS.', 'NA', 'NA', 'NA', 'REFORZAR PENSAMIENTO LÓGICO', '../../images/preguntas/ELEFANTE.JPG'),
(267, 2, 5, 5, 1, 'OBSERVA LA IMAGEN. SELECCIONA LAS RESPUESTAS CORRECTAS.', 'CIRCULO.', 'TRIÁNGULO.', 'CUADRADO.', 'ROMBO.', 'NA', 'NA', 'NA', 'REFORZAR FIGURAS GEOMÉTRICAS', '../../images/preguntas/FLOR.JPG'),
(268, 2, 5, 2, 1, 'RESPONDE SI O NO A LA PREGUNTA DE LA IMAGEN. ', 'SI', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR FIGURAS GEOMÉTRICAS', '../../images/preguntas/FIGURAS.JPG'),
(269, 2, 5, 4, 45, 'SELECCIONA LOS NÚMEROS QUE APARECEN EN LA IMAGEN  ', 'DIEZ', 'NUEVE', 'NA', 'OCHO', 'DOS', 'NA', 'NA', 'REFORZAR NÚMEROS (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/NUEROS.JPG'),
(270, 2, 5, 5, 1, 'OBSERVA LA IMAGEN. ESCOGE LOS NÚMEROS QUE FALTAN DEL 1 AL 10 EN LAS FICHAS.', '5', '8', '9', '3', 'NA', 'NA', 'NA', 'REFORZAR NÚMEROS', '../../images/preguntas/DEL UNO AL DIEZ.JPG'),
(271, 2, 5, 2, 1, 'ESCRIBE LOS NÚMEROS DEL 1 AL 10 SEPARADO POR COMAS Y AL FINAL LE AGREGAS PUNTO, EJEMPLO:  0,1,2,3,5.', '1,2,3,4,5,6,7,8,9,10.', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR NÚMEROS', '../../images/preguntas/1 AL 10.JPG'),
(272, 2, 5, 5, 45, 'SELECCIONA LAS SECUENCIAS DE NÚMEROS QUE PERMITE LLENAR EL CUADRO DE LA IMAGEN. EJEMPLO: 3-4-5. 1-2-3.  9-10-11. ', '7-8-9.', '8-9-10.', '4-5-6.', '2-3-4.', 'NA', 'NA', 'NA', 'REFORZAR NÚMEROS (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/QUIEN FALTA.JPG'),
(273, 2, 5, 2, 1, 'OBSERVA LA IMAGEN Y ESCRIBE CUANTOS LUGARES HAY EN LA CASA. EJEMPLO:  5', '7', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR NÚMEROS', '../../images/preguntas/CASA.JPG'),
(274, 4, 5, 3, 58, 'SELECCIONA LA RESPUESTA CORRECTA. SEGÚN LA IMAGEN ¿CUÁL ES LA LONGITUD DEL LIBRO?', '10 CM', 'NA', 'NA', '12 CM ', '8 CM ', '11 CM', 'NA', 'REFORZAR UNIDADES DE MEDIDA (GEOMÉTRICO-MÉTRICO)', '../../images/preguntas/PROFE MILE METRO .jpg'),
(276, 12, 15, 3, 146, 'EN EL ENUNCIADO (QUÉ LEAN Y CÓMO –BIEN O MAL - NO DEPENDE TOTALMENTE DE ELLOS).  LA PALABRA (ELLOS) HACE REFERENCIA A:', 'JUICIOS', 'NA', 'NA', 'INTERESES', 'MOTIVOS', 'INDIVIDUOS', 'NA', 'REFORZAR EXPRESIÓN GRAMATICAL', '../../images/preguntas/pregunta1.png'),
(278, 12, 15, 3, 145, '¿CUÁL DE LAS SIGUIENTES OPCIONES DESCRIBE MEJOR LA RELACIÓN ENTRE EL CONTENIDO DEL TEXTO Y EL TÍTULO DE LA OBRA DE LA QUE SE EXTRAJO?', 'EL TEXTO CRITICA LOS MÉTODOS DEL CONOCIMIENTO.', 'NA', 'NA', 'EL TEXTO INTRODUCE UN NUEVO MÉTODO.', 'EL TEXTO CRITICA EL MÉTODO CIENTÍFICO.', 'EL TEXTO ARGUMENTA A FAVOR DE LOS MÉTODOS.', 'NA', 'REFORZAR LECTURA CRÍTICA', '../../images/preguntas/PREGUNTA3.png'),
(279, 12, 15, 3, 145, ' ALGUNOS AUTORES DESDE LA FILOSOFÍA DE LA CIENCIA,  APLICAN EL PRINCIPIO DEL LIBERALISMO, SEGÚN EL CUAL, “TODOS LOS CIUDADANOS SON IGUALES ANTE LA LEY Y ANTE EL ESTADO”.  DE ACUERDO CON ESTO, ¿CUÁL DE LAS SIGUIENTES AFIRMACIONES REFLEJA DE MANERA MÁS DIRECTA LA INFLUENCIA DE LAS IDEAS LIBERALES', 'TODA TEORÍA ES PARTE DEL CONOCIMIENTO.', 'NA', 'NA', 'EL CIENTÍFICO SE GLORIFICA EN DIOS.', 'HACER DE LA CAUSA MÁS DÉBIL LA MÁS FUERTE.', 'EL CONOCIMIENTO NO CONSISTE EN UN IDEAL.', 'NA', 'REFORZAR LECTURA CRÍTICA', 'NA'),
(281, 4, 5, 3, 55, '¿CUÁL DE LOS SIGUIENTES NÚMEROS ES NATURAL?', '220', 'NA', 'NA', '-22', '1/6', '2.5', 'NA', 'REFORZAR NÚMEROS NATURALES', '../../images/preguntas/8.JPG'),
(282, 4, 5, 3, 56, 'LOS NÚMEROS DE LAS FICHAS CORRESPONDEN A  LAS RESPUESTA DE 2 TABLAS DE MULTIPLICAR. ¿CUÁLES SON?', '6 Y 8  ', 'NA', 'NA', '7 Y 9', '8 Y 5', '6 Y 7 ', 'NA', 'REFORZAR OPERACIONES CON NÚMEROS NATURALES (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/MUL.JPG'),
(283, 4, 5, 3, 56, 'OBSERVA LA IMAGEN. LEE DETENIDAMENTE  Y SELECCIONA LA RESPUESTA CORRECTA.', '45', 'NA', 'NA', '40', '46', '43', 'NA', 'REFORZAR OPERACIONES CON NÚMEROS NATURALES (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/10.JPG'),
(284, 4, 5, 3, 56, 'OBSERVA LA IMAGEN, SUMA  Y SELECCIONA LA RESPUESTA CORRECTA.', '177.752', 'NA', 'NA', '117.652', '117.742', '118.752', 'NA', 'REFORZAR OPERACIONES CON NÚMEROS NATURALES (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/11SUMA.JPG'),
(285, 4, 5, 3, 56, 'MULTIPLICA LA OPERACIÓN DE LA IMAGEN  Y SELECCIONA LA RESPUESTA CORRECTA. ', '459.966', 'NA', 'NA', '449.966', '459.866', '459.956', 'NA', 'REFORZAR OPERACIONES CON NÚMEROS NATURALES (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/13MULTI.JPG'),
(286, 4, 5, 3, 56, 'OBSEVA LA IMAGEN. RESTA Y SELECCIONA LA RESPUESTA CORRECTA. ', '16.001', 'NA', 'NA', '17.001', '16.000', '16.101', 'NA', 'REFORZAR OPERACIONES CON NÚMEROS NATURALES (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/12RESTA.JPG'),
(287, 4, 5, 3, 57, 'OBSERVA LA IMAGEN. SELECCIONA LA RESPUESTA CORRECTA. ESCOGE LAS FIGURAS QUE SON CONGRUENTES. ', ' A=3 ,B=5, C=7', 'NA', 'NA', 'A= 2,  B= 4 , C= 8', 'A = 1 , B= 6, C= 9', 'A = 3, B= 2, C= 4 ', 'NA', 'REFORZAR FIGURAS PLANAS (GEOMÉTRICO-MÉTRICO)', '../../images/preguntas/14FIG.JPG'),
(288, 7, 5, 3, 186, 'VOLÚMENES DE CUERPOS GEOMÉTRICOS REGULARES. ¿ CUANTOS CUBOS DE 1 CM DE LADO, TIENE LA SIGUIENTE FIGURA VERDE?', '54 CUBOS DE 1 CM DE LADO', 'NA', 'NA', '70 CUBOS DE 1 CM DE LADO', '31 CUBOS DE 1 CM DE LADO', '25 CUBOS DE 1 CM DE LADO', 'NA', 'REFORZAR VOLÚMENES Y CUERPOS GEOMÉTRICOS (GEOMÉTRICO-MÉTRICO)', '../../images/preguntas/Imagen1.png'),
(289, 7, 5, 3, 186, 'VOLÚMENES DE CUERPOS GEOMÉTRICOS REGULARES.  CADA CUBO DE HIELO DE LA FIGURA TIENE 2CM DE LADO, OSEA QUE TIENE UN VOLUMEN DE 8 CM³. EN CONDICIONES NORMALES, ( QUE LOS HIELOS ESTÉN SIN DERRETIR), LA FIGURA TIENE UN VOLUMEN DE:', '(14 X 8) CM³', 'NA', 'NA', '(14 X 2)  CM³', '(14 X 8 X 2) CM³', '(8 + 14) CM³', 'NA', 'REFORZAR VOLÚMENES Y CUERPOS GEOMÉTRICOS (GEOMÉTRICO-MÉTRICO)', '../../images/preguntas/Imagen2.jpg'),
(290, 7, 5, 3, 190, 'LAS SIGUIENTES PILAS DE BLOQUES ESTÁN ENUMERAS DE 1 A 4, TOME EL VALOR TOTAL DE CADA FILA SUMANDO LOS VALORES. EL VALOR DE CADA UNA DE LAS FILAS ES:      AMARILLO  (A)              VERDE OSCURO (B)                 ROSADO     (C)              AZUL CLARO     (D)', 'A= 30    B= 240     C = 170     D= 198', 'NA', 'NA', 'A= 32     B= 240    C= 85       D= 97', 'A= 30     B= 170    C=240     D = 198', 'A= 32     B= 240     C=170     D = 198', 'NA', 'REFORZAR OPERACIONES UNIVERSALES (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/id290.jpg'),
(291, 7, 5, 3, 190, 'LAS OPERACIONES UNIVERSALES  TENIENDO EN CUENTA LA SIGUIENTE EXPRESIÓN ARITMÉTICA: ', '1', 'NA', 'NA', '2', '1/2', '1/3', 'NA', 'REFORZAR OPERACIONES UNIVERSALES (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/imagen a.png'),
(292, 7, 5, 3, 187, 'EN UN MES (30 DÍAS) UN GATO CONSUME UNA LIBRA DE CONCENTRADO QUE CUESTA (5250 PESOS), ENTONCES  EN EL AÑO EL MISMO GATO CONSUMIRÍA CUÁNTAS LIBRAS A CUANTO PRECIO Y  EN UN DÍA CUAL SERÁ EL VALOR DEL CONCENTRADO.  ', '12 LIBRAS = 63000 PESOS Y AL DIA (5250 / 30) ', 'NA', 'NA', '12 LIBRAS = 57750 PESOS Y AL DIA (5250 / 12 )   ', '30 LIBRAS = 157500 PESOS Y AL DIA (5250 / 30 )   ', '30 LIBRAS = 157500 PESOS Y AL DIA (5250 / 12 )   ', 'NA', 'REFORZAR ANÁLISIS DE SITUACIONES PROBLEMÁTICAS (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/Imagen6.png'),
(293, 7, 5, 3, 187, 'LAS CORBATAS CON DISEÑOS DE CÍRCULOS CUESTAN AL DOBLE DE LAS DE DISEÑOS DE ROMBOS. UN COMERCIANTE LLEVA PARA SU NEGOCIO:3 CORBATAS (A) ,2 CORBATAS (C) , 2 CORBATAS (D), 3 CORBATAS (E), 2 CORBATAS (F), 2 CORBATAS (G). SI EL COSTO DE UNA CORBATA  DE ROMBOS ES DE (12300 PESOS.) CUANTO PAGA EL COMERCIANTE POR LAS CORBATAS. ', '((3+2) X 12300)  +   ((3 + 2 +2) X (12300 X  2))', 'NA', 'NA', '(3+2+2+3+2+2)  +   (12300  X  2)', '(3+2+2+3+2+2) X  12300', '((3+2) X (12300 X  2))  +  ((3 + 2 +2) X 12300)', 'NA', 'REFORZAR ANÁLISIS DE SITUACIONES PROBLEMÁTICAS (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/Imagen7.png'),
(294, 9, 7, 3, 81, 'OBSERVA LA IMAGEN Y RESPONDE LA SIGUIENTE PREGUNTA. WHO IS THE SHORTEST PERSON IN THE FAMILY? ', 'SUSAN IS THE SHORTEST PERSON IN THE FAMILY.', 'NA', 'NA', 'BETH IS THE SHORTEST PERSON IN THE FAMILY.', 'MATHEW IS THE SHORTEST PERSON IN THE FAMILY.', 'JOSEPH IS THE SHORTEST PERSON IN THE FAMILY.', 'NA', 'REFORZAR COMPARACIONES Y CONTRASTES', '../../images/preguntas/294.jpg'),
(295, 9, 7, 3, 81, 'OBSERVA LA IMAGEN Y RESPONDE LA SIGUIENTE PREGUNTA. WHO IS THE TALLEST PERSON IN THE FAMILY?', 'MATHEW IS THE TALLEST PERSON IN THE FAMILY.', 'NA', 'NA', 'ELENA IS THE TALLEST PERSON IN THE FAMILY.', 'JACK IS THE TALLEST PERSON IN THE FAMILY.', 'JOSEPH IS THE TALLEST PERSON IN THE FAMILY.', 'NA', 'REFORZAR COMPARACIONES Y CONTRASTES', '../../images/preguntas/294..jpg'),
(296, 7, 5, 3, 188, 'EN UNA BOLSA TIENES 6 MANZANAS ROJAS Y 2 MANZANAS VERDES, CUYA PROBABILIDAD ES DE:  MANZANAS ROJAS (6/8) MANZANAS VERDES (2/8)  TE PIDEN SACAR UNA FRUTA.  Y SACAS UNA MANZANA ROJA.  LA NUEVA PROBABILIDAD DE MANZANAS ROJAS Y VERDES SERÁ:  ', 'MANZANAS ROJAS= 5/7     MANZANAS VERDES= 2/7', 'NA', 'NA', 'MANZANAS ROJAS= 6/7     MANZANAS VERDES= 2/7', 'MANZANAS ROJAS= 7/5    MANZANAS VERDES= 7/2', 'MANZANAS ROJAS = 7/6   MANZANAS VERDES= 7/2', 'NA', 'REFORZAR PROCESOS PROBABILÍSTICOS DE PRIMER ORDDEN SITUACIONAL (ALEATORIO-PROBABILÍSTICO)', '../../images/preguntas/Imagen5.jpg'),
(297, 9, 7, 3, 81, 'OBSERVA LA IMAGEN, LEE LA DESCRIPCIÓN Y RESPONDE LA SIGUIENTE PREGUNTA. WHO PLAYS BASKETBALL AS WELL AS JACK?', 'ELENA PLAYS BASKETBALL AS WELL AS JACK.', 'NA', 'NA', 'BETH PLAYS BASKETBALL AS WELL AS JACK.', 'SUSAN PLAYS BASKETBALL AS WELL AS JACK.', 'MATHEW PLAYS BASKETBALL AS WELL AS JACK.', 'NA', 'REFORZAR COMPARACIONES Y CONTRASTES', '../../images/preguntas/a9797.jpg'),
(298, 9, 7, 3, 81, 'OBSERVA LA IMAGEN, LEE LA DESCRIPCIÓN Y RESPONDE LA SIGUIENTE PREGUNTA. WHO IS THE OLDEST PERSON IN THE FAMILY?', 'JOSEPH IS THE OLDEST PERSON IN THE FAMILY.', 'NA', 'NA', 'BETH IS THE OLDEST PERSON IN THE FAMILY.', 'SUSAN IS THE OLDEST PERSON IN THE FAMILY.', 'ELENA IS THE OLDEST PERSON IN THE FAMILY.', 'NA', 'REFORZAR COMPARACIONES Y CONTRASTES', '../../images/preguntas/a9797a.jpg'),
(299, 9, 7, 3, 81, 'OBSERVA LA IMAGEN, LEE LA DESCRIPCIÓN Y RESPONDE LA SIGUIENTE PREGUNTA. WHO IS SHORTER THAN JACK? ', 'SUSAN IS SHORTER THAN JACK.', 'NA', 'NA', 'BETH IS SHORTER THAN JACK.', 'ELENA IS SHORTER THAN JACK.', 'JOSEPH IS SHORTER THAN JACK.', 'NA', 'REFORZAR COMPARACIONES Y CONTRASTES', '../../images/preguntas/a9797b.jpg'),
(300, 7, 5, 3, 188, 'VANESSA TIENE LOS SIGUIENTES CONTACTOS EN UN GRUPO Y DESEA SELECCIONAR UNO DE LOS INTEGRANTES, ES CORRECTO AFIRMAR LO SIGUIENTE: ', 'ES MÁS PROBABLE UNA MUJER, ¡HAY 6 EN EL GRUPO! ', 'NA', 'NA', 'ES MÁS PROBABLE  UN HOMBRE, ¡HAY 5 EN EL GRUPO!.', 'LOS DOS TIENEN LA MISMA PROBABILIDAD DE SELECCIÓN.', 'A NINGUNO PORQUE NO TIENEN LA MISMA PROBABILIDAD.', 'NA', 'REFORZAR PROCESOS PROBABILÍSTICOS DE PRIMER ORDDEN SITUACIONAL (ALEATORIO-PROBABILÍSTICO)', '../../images/preguntas/id300.jpg'),
(301, 9, 7, 3, 81, 'OBSERVA LA IMAGEN, LEE LA DESCRIPCIÓN Y RESPONDE LA SIGUIENTE PREGUNTA. WHOSE DIET IS AS UNHEALTHY AS JACKS?', 'SUSANS DIET IS AS UNHEALTHY AS JACKS.', 'NA', 'NA', 'MATHEWS DIET IS AS UNHEALTHY AS JACKS.', 'ELENAS DIET IS AS UNHEALTHY AS JACKS.', 'BETHS DIET IS AS UNHEALTHY AS JACKS.', 'NA', 'REFORZAR COMPARACIONES Y CONTRASTES', '../../images/preguntas/a9797c.jpg'),
(302, 9, 7, 3, 82, 'OBSERVA LA IMAGEN, LEE LA DEFINICIÓN RELACIONADA CON LA CONSERVACIÓN DEL MEDIO AMBIENTE Y ESCOGE LA PALABRA MÁS ADECUADA PARA DICHA DEFINICIÓN. WHICH OPTION IS THE BEST FOR THAT MEANING? ', 'RECYCLE', 'NA', 'NA', 'DEFORESTATION', 'POLLUTION', 'CLIMATE CHANGE', 'NA', 'REFORZAR EXPRESIONES RELACIONADAS CON LA CONSERVACIÓN DEL MEDIO AMBIENTE', '../../images/preguntas/302.jpg'),
(303, 9, 7, 3, 82, 'OBSERVA LA IMAGEN, LEE LA DEFINICIÓN RELACIONADA CON LA CONSERVACIÓN DEL MEDIO AMBIENTE Y ESCOGE LA PALABRA MÁS ADECUADA PARA DICHA DEFINICIÓN. WHICH OPTION IS THE BEST FOR THAT MEANING? ', 'POLLUTION', 'NA', 'NA', 'DEFORESTATION', 'RECYCLE', 'CLIMATE CHANGE', 'NA', 'REFORZAR EXPRESIONES RELACIONADAS CON LA CONSERVACIÓN DEL MEDIO AMBIENTE', '../../images/preguntas/303.jpg'),
(304, 9, 7, 3, 82, 'OBSERVA LA IMAGEN, LEE LA DEFINICIÓN RELACIONADA CON LA CONSERVACIÓN DEL MEDIO AMBIENTE Y ESCOGE LA PALABRA MÁS ADECUADA PARA DICHA DEFINICIÓN. WHICH OPTION IS THE BEST FOR THAT MEANING?', 'CLIMATE CHANGE', 'NA', 'NA', 'DEFORESTATION', 'RECYCLE', 'POLLUTION', 'NA', 'REFORZAR EXPRESIONES RELACIONADAS CON LA CONSERVACIÓN DEL MEDIO AMBIENTE', '../../images/preguntas/304.jpg'),
(305, 9, 7, 3, 82, 'OBSERVA LA IMAGEN, LEE LA DEFINICIÓN RELACIONADA CON LA CONSERVACIÓN DEL MEDIO AMBIENTE Y ESCOGE LA PALABRA MÁS ADECUADA PARA DICHA DEFINICIÓN. WHICH OPTION IS THE BEST FOR THAT MEANING?', 'DEFORESTATION', 'NA', 'NA', 'RECYCLE', 'POLLUTION', 'CLIMATE CHANGE', 'NA', 'REFORZAR EXPRESIONES RELACIONADAS CON LA CONSERVACIÓN DEL MEDIO AMBIENTE', '../../images/preguntas/305.jpg'),
(306, 7, 5, 3, 189, 'EN UN JUEGO TE OBSEQUIAN UNA VALLA MÁGICA SI ESPERAS 520 MINUTOS. ES CORRECTO AFIRMAR QUE ESTE TIEMPO EN HORAS ES:  ', '8 HORAS Y 40 MINUTOS', 'NA', 'NA', '6 HORAS Y 66 MINUTOS', '8 HORAS Y 66 MINUTOS', '6 HORAS Y 40 MINUTOS', 'NA', 'REFORZAR MEDIDAS Y PARÁMETROS, APLICANDO LA SITUACIÓN PROBLEMÁTICA (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/Imagen9.png'),
(307, 9, 7, 3, 84, 'ELIGE LA OPCIÓN QUE MEJOR COMPLETA LA ORACIÓN QUE ESTÁ DENTRO DE LA IMAGEN. THIS EXPRESSION IS USED TO SUGGEST AND RECOMMEND SOMETHING: ', 'SHOULD NOT', 'NA', 'NA', 'MUST', 'SHOULD', 'HAVE', 'NA', 'REFORZAR SUGERENCIAS Y RECOMENDACIONES', '../../images/preguntas/307.jpg'),
(308, 9, 7, 3, 84, 'ELIGE LA OPCIÓN QUE MEJOR COMPLETA LA ORACIÓN QUE ESTÁ DENTRO DE LA IMAGEN. THIS EXPRESSION IS USED TO SUGGEST AND RECOMMEND SOMETHING: ', 'SHOULD', 'NA', 'NA', 'ARE', 'HAVE', 'SHOULD NOT', 'NA', 'REFORZAR SUGERENCIAS Y RECOMENDACIONES', '../../images/preguntas/308.jpg'),
(309, 9, 7, 3, 84, 'ELIGE LA OPCIÓN QUE MEJOR COMPLETA LA ORACIÓN QUE ESTÁ DENTRO DE LA IMAGEN. THIS EXPRESSION IS USED TO SUGGEST AND RECOMMEND SOMETHING: ', 'SHOULD', 'NA', 'NA', 'HAVE', 'SHOULD NOT', 'ARE', 'NA', 'REFORZAR SUGERENCIAS Y RECOMENDACIONES', '../../images/preguntas/309.jpg'),
(310, 9, 7, 3, 84, 'ELIGE LA OPCIÓN QUE MEJOR COMPLETA LA ORACIÓN QUE ESTÁ DENTRO DE LA IMAGEN. THIS EXPRESSION IS USED TO SUGGEST AND RECOMMEND SOMETHING: ', 'MUST', 'NA', 'NA', 'MUST TO', 'HAVE', 'CAN', 'NA', 'REFORZAR SUGERENCIAS Y RECOMENDACIONES', '../../images/preguntas/310.jpg'),
(311, 9, 7, 3, 84, 'ELIGE LA OPCIÓN QUE MEJOR COMPLETA LA ORACIÓN QUE ESTÁ DENTRO DE LA IMAGEN. THIS EXPRESSION IS USED TO SUGGEST AND RECOMMEND SOMETHING: ', 'SHOULD NOT', 'NA', 'NA', 'MUST', 'MUST TO', 'SHOULD', 'NA', 'REFORZAR SUGERENCIAS Y RECOMENDACIONES', '../../images/preguntas/311.jpg'),
(312, 12, 15, 3, 145, 'EL TEXTO DE LA IMAGEN EXPLICA:', 'LOS TIPOS DE MÚSICA  EN LAS PELÍCULAS.', 'NA', 'NA', 'EL SENTIDO DE LA HISTORIA EN LAS PELÍCULAS.', 'RESUME LA HISTORIA DE LA MÚSICA EN EL CINE.', 'LA FUNCIÓN DE LA MÚSICA EN LAS PELÍCULAS.', 'NA', 'REFORZAR LECTURA CRÍTICA', '../../images/preguntas/lectura 4.png'),
(313, 4, 5, 5, 57, 'OBSERVA LA IMAGEN. SELECCIONA LA RESPUESTA CORRECTA.  ', 'TRIÁNGULO=10CM,RECTÁNGULO32CM2,CUADRADO=25CM.', 'TRIÁNGULO=11CM,RECTÁNGULO32CM2,CUADRADO=25CM.', 'TRIÁNGULO=10CM,RECTÁNGULO30CM2,CUADRADO=25CM.', 'TRIÁNGULO=10CM,RECTÁNGULO32CM2,CUADRADO=20CM.', 'NA', 'NA', 'NA', 'REFORZAR FIGURAS PLANAS (GEOMÉTRICO-MÉTRICO)', '../../images/preguntas/15FIG.JPG'),
(314, 6, 6, 3, 178, 'SELECCIONA LA ORACIÓN QUE HACE REFERENCIA A TODAS LAS DEMÁS. \r', 'LAS FOCAS TIENEN PODEROSOS SENTIDOS. ', 'NA', 'NA', 'TIENEN BUENA VISIÓN SUBMARINA.', 'TIENEN  UN OÍDO EXCELENTE. ', ' PUEDEN CAPTAR VIBRACIONES.', 'NA', 'REFORZAR INTERPRETACIÓN TEXTUAL', 'NA'),
(315, 9, 7, 3, 83, 'ELIGE LA PALABRA QUE MEJOR COMPLEMENTE EL DIÁLOGO QUE ESTÁ EN LA IMAGEN. HOW DOES HE FEEL?', 'TIRED', 'NA', 'NA', 'MOTIVATED', 'EXCITED', 'SCARED', 'NA', 'REFORZAR ESTADOS DE ÁNIMO', '../../images/preguntas/315.jpg'),
(316, 9, 7, 3, 83, 'ELIGE LA PALABRA QUE MEJOR COMPLEMENTE EL DIÁLOGO QUE ESTÁ EN LA IMAGEN. HOW DOES HE FEEL?', 'SCARED', 'NA', 'NA', 'MOTIVATED', 'EXCITED', 'TIRED', 'NA', 'REFORZAR ESTADOS DE ÁNIMO', '../../images/preguntas/316..jpg'),
(317, 9, 7, 3, 83, 'ELIGE LA PALABRA QUE MEJOR COMPLEMENTE EL DIÁLOGO QUE ESTÁ EN LA IMAGEN. HOW DOES SHE FEEL?', 'EXCITED', 'NA', 'NA', 'MOTIVATED', 'TIRED', 'SCARED', 'NA', 'REFORZAR ESTADOS DE ÁNIMO', '../../images/preguntas/317..jpg'),
(318, 6, 6, 3, 179, '¿CÓMO SE IDENTIFICA UN PÁRRAFO EN UN TEXTO? \r', 'INICIA EN MAYÚSCULA Y TERMINA EN PUNTO APARTE.', 'NA', 'NA', 'INICIA EN MAYÚSCULA Y TERMINA EN PUNTO SEGUIDO. ', 'INICIA EN MINÚSCULA Y TERMINA EN COMA. ', 'INICIA EN MINÚSCULA Y TERMINA EN DOS PUNTOS.', 'NA', 'REFORZAR EXPRESIÓN GRAMATICAL', 'NA'),
(319, 9, 7, 3, 83, 'ELIGE LA PALABRA QUE MEJOR COMPLEMENTE EL DIÁLOGO QUE ESTÁ EN LA IMAGEN. HOW DOES HE FEEL?', 'MOTIVATED', 'NA', 'NA', 'EXCITED', 'TIRED', 'SCARED', 'NA', 'REFORZAR ESTADOS DE ÁNIMO', '../../images/preguntas/319.jpg'),
(320, 6, 6, 3, 180, 'LEA LA SIGUIENTE ORACIÓN SIMPLE Y SELECCIONA LA OPCIÓN QUE CONSIDERE  UNA ORACIÓN COMPUESTA.  *PAULA SINTIÓ MUCHO MIEDO. * \r', 'PAULA SINTIÓ MUCHO MIEDO Y ANA SE RIÓ DE ELLA. ', 'NA', 'NA', 'PAULA NO QUISO PARTICIPAR. ', 'PAULA LE GUSTA BAILAR.', 'PAULA NO FUE AL COLEGIO. ', 'NA', 'REFORZAR PRODUCCIÓN TEXTUAL', 'NA'),
(321, 6, 6, 3, 179, 'LEA LA SIGUIENTE ORACIÓN Y SELECCIONE LA RESPUESTA CORRECTA SEGÚN SU ESTRUCTURA.  *LA CAMISA ESTABA SUCIA*.  \r', 'ARTÍCULO FEMENINO, SUSTANTIVO, VERBO Y ADJETIVO.', 'NA', 'NA', 'SUSTANTIVO PROPIO, VERBO EN PRESENTE Y ADJETIVO.', 'ARTÍCULO, SUSTANTIVO PROPIO, VERBO Y ADJETIVO. ', 'ARTÍCULO , SUSTANTIVO PROPIO  Y COMPLEMENTO. ', 'NA', 'REFORZAR EXPRESIÓN GRAMATICAL', 'NA'),
(322, 7, 5, 3, 189, 'EL PLANETA TIERRA ESTÁ SEPARADO DEL SOL POR 149 600 000 KM. Y LA DISTANCIA QUE SEPARA A LA TIERRA DE LA LUNA ES DE 384 400KM. UN TRANSBORDADOR QUE VIAJA DE LA TIERRA A LA LUNA, UTILIZA 120 000 TONELADAS DE COMBUSTIBLE. CUANTAS TONELADAS REQUIERE EL MISMO TRANSBORDADOR PARA REALIZAR EL VIAJE DE LA TIERRA AL SOL. ', '( 149 600 000 / 384 400) X 120 000', 'NA', 'NA', '( 149 600 000 X 120 000)', '( 149 600 000 / 384 400) / 120 000', '( 149 600 000 X 384 400) X 120 000', 'NA', 'REFORZAR MEDIDAS Y PARÁMETROS, APLICANDO LA SITUACIÓN PROBLEMÁTICA (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/Imagen10.jpg'),
(323, 4, 5, 3, 59, 'OBSERVA LA IMAGEN. SELECCIONA LA RESPUESTA CORRECTA.  ', 'FÚTBOL 6, BALONCESTO 2, TENIS 4, NATACIÓN 4. ', 'NA', 'NA', 'FÚTBOL 6, BALONCESTO 3, TENIS 4, NATACIÓN 4. ', 'FÚTBOL 6, BALONCESTO 2, TENIS 2, NATACIÓN 4. ', 'FÚTBOL 6, BALONCESTO 2, TENIS 4, NATACIÓN 6. ', 'NA', 'REFORZAR ESTADÍSTICA (ALEATORIO-PROBABILÍSTICO)', '../../images/preguntas/18 ESTadistica .JPG'),
(324, 6, 6, 3, 180, '¿QUÉ INTENCIÓN COMUNICATIVA  TIENE UN TEXTO PERIODÍSTICO? \r', 'INFORMAR SOBRE  NOTICIAS DE RELEVANCIA PÚBLICA.', 'NA', 'NA', 'EXPLICAR CONCEPTOS DE MANERA CLARA Y OBJETIVA.', 'CONVENCER AL RECEPTOR CON ARGUMENTOS.', 'NARRAR HECHOS QUE PASAN A LOS PERSONAJES. ', 'NA', 'REFORZAR PRODUCCIÓN TEXTUAL', 'NA'),
(326, 9, 7, 3, 86, 'OBSERVA LA IMAGEN, LEE EL BLOG Y ELIGE LA OPCIÓN QUE CONTENGA LAS DOS PALABRAS MÁS ADECUADAS PARA COMPLETAR (---------) LA PREGUNTA: WHERE -------- LARA ---------?  SHE WENT TO CARTAGENA.                                            ', 'DID ---- GO', 'NA', 'NA', 'DOES ----- GO', 'DID ----- WENT', 'DO ----- GOES', 'NA', 'REFORZAR DESCRIPCIÓN DE EXPERIENCIAS PASADAS', '../../images/preguntas/326.jpg'),
(327, 6, 6, 3, 179, '¿CUÁLES SON LOS GRANDES SUBGÉNEROS DEL PERIODISMO?   \r', 'NOTICIA, ARTÍCULO, REPORTAJE.', 'NA', 'NA', 'CUENTO, POESÍA, FÁBULA.', 'COPLA, ENSAYO, DIÁLOGO.', 'POEMA, CANCIÓN, RETAHÍLA. ', 'NA', 'REFORZAR EXPRESIÓN GRAMATICAL', 'NA'),
(328, 6, 6, 3, 179, '¿CUÁLES SON LAS SEÑALES DE TRÁNSITO  QUE EXISTEN?    \r', 'REGLAMENTARIAS, PREVENTIVAS E INFORMATIVAS.', 'NA', 'NA', 'OBLIGATORIAS, REGLAMENTARIAS Y VIALES.', 'PREVENTIVAS, URGENTES Y EMERGENTES.', 'INFORMATIVAS, NECESARIAS Y ALTERNAS. ', 'NA', 'REFORZAR EXPRESIÓN GRAMATICAL', 'NA'),
(329, 9, 7, 3, 86, 'OBSERVA LA IMAGEN, LEE EL BLOG Y RESPONDE LA SIGUIENTE PREGUNTA: WHAT PLACES DID LARA VISIT?', 'SHE VISITED TWO MUSEUMS.', 'NA', 'NA', 'SHE VISITED SOME BEAUTIFUL BEACHES.', 'SHE DID NOT VISIT ANY PLACE. ', 'SHE VISITED SOME HOTELS. ', 'NA', 'REFORZAR DESCRIPCIÓN DE EXPERIENCIAS PASADAS', '../../images/preguntas/326a.jpg'),
(330, 6, 6, 3, 178, '¿QUÉ INDICAN LAS SIGUIENTES SEÑALES? \r', 'GIRO A LA IZQUIERDA,  TRABAJANDO EN LA VÍA.', 'NA', 'NA', 'ESTACIÓN DE SERVICIO, ZONA DE DERRUMBE.', 'PROHIBIDO PARQUEAR, AEROPUERTO.', 'PROHIBIDO PARQUEAR, RESTAURANTE.', 'NA', 'REFORZAR INTERPRETACIÓN TEXTUAL', '../../images/preguntas/Imagen1 señatran.png'),
(331, 9, 7, 3, 86, 'OBSERVA LA IMAGEN, LEE EL BLOG Y RESPONDE LA SIGUIENTE PREGUNTA: WHAT DID SHE LEARN IN THOSE PLACES?', 'SHE LEARNED ABOUT CARIBBEAN CULTURE.', 'NA', 'NA', 'SHE LEARNED ABOUT NATURAL RESOURCES.', 'SHE LEARNED ABOUT COLOMBIAN CULTURE.', 'SHE LEARNED ABOUT GERMANY CULTURE.', 'NA', 'REFORZAR DESCRIPCIÓN DE EXPERIENCIAS PASADAS', '../../images/preguntas/326b.jpg'),
(332, 9, 7, 3, 86, 'OBSERVA LA IMAGEN, LEE EL BLOG Y COMPLETA EL SIGUIENTE ENUNCIADO: ACCORDING TO LARA, CARTAGENA IS...', 'A FANTASTIC CITY.', 'NA', 'NA', 'AN AGGRESSIVE AND DISORGANIZED CITY.', 'TOO NOISY ', 'A CALM CITY', 'NA', 'REFORZAR DESCRIPCIÓN DE EXPERIENCIAS PASADAS', '../../images/preguntas/326c.jpg'),
(335, 9, 7, 3, 86, 'OBSERVA LA IMAGEN, LEE EL BLOG Y RESPONDE LA SIGUIENTE PREGUNTA: DID LARA RECOMMEND VISITING CARTAGENA?', 'YES, SHE REALLY RECOMMENDS VISITING CARTAGENA.', 'NA', 'NA', 'NO, SHE DID NOT', 'NO, YOU WERE NOT', 'YES, SHE DOES HER WORKING', 'NA', 'REFORZAR DESCRIPCIÓN DE EXPERIENCIAS PASADAS', '../../images/preguntas/326d.jpg'),
(336, 4, 5, 3, 58, 'OBSERVA LA IMAGEN Y SELECCIONA LA RESPUESTA CORRECTA. ', 'METRO ', 'NA', 'NA', 'TERMÓMETRO ', 'ESCALÍMETRO  ', 'BASCULA  ', 'NA', 'REFORZAR UNIDADES DE MEDIDA (GEOMÉTRICO-MÉTRICO)', '../../images/preguntas/16 MED.JPG'),
(337, 9, 7, 3, 87, 'ESCOGE LA PREGUNTA CORRECTA DE ACUERDO A LA SIGUIENTE RESPUESTA. ANSWER: TWICE A WEEK.', 'HOW OFTEN DO YOU DO SPORTS?', 'NA', 'NA', 'ARE YOU AN ACTIVE PERSON?', 'CAN YOU DANCE?', 'DO YOU LIKE TO WORK?', 'NA', 'REFORZAR DESCRIPCIÓN DE SITUACIONES Y EVENTOS', '../../images/preguntas/question-3385451_1920.jpg'),
(338, 9, 7, 3, 87, 'ESCOGE LA PREGUNTA CORRECTA DE ACUERDO A LA SIGUIENTE RESPUESTA. ANSWER: I HAVE TOO MUCH SCHOOL WORK.', 'HEY, WHAT’S WRONG?', 'NA', 'NA', 'WHAT CAN YOU DO TO REDUCE STRESS?', 'HOW ARE YOU FEELING?', 'WHERE DO YOU STUDY?', 'NA', 'REFORZAR DESCRIPCIÓN DE SITUACIONES Y EVENTOS', '../../images/preguntas/question-3385451_1921.jpg'),
(339, 9, 7, 3, 87, 'ESCOGE LA PREGUNTA CORRECTA DE ACUERDO A LA SIGUIENTE RESPUESTA. ANSWER: YES, SHE CAN.', 'CAN SHE RIDE A BIKE?', 'NA', 'NA', 'IS BIKE RIDING A FUN ACTIVITY?', 'IS SHE GOING TO RIDE A BIKE?', 'CAN HE RIDE A HORSE?', 'NA', 'REFORZAR DESCRIPCIÓN DE SITUACIONES Y EVENTOS', '../../images/preguntas/question-3385451_1922.jpg'),
(340, 9, 7, 3, 87, 'ESCOGE LA PREGUNTA CORRECTA DE ACUERDO A LA SIGUIENTE RESPUESTA. ANSWER: YES, HE DOES. HE IS GOING TO JOIN A SPORTS CLUB.', 'DOES HE LIKE SPORTS?', 'NA', 'NA', 'WHAT DOES HE DO IN HIS FREE TIME?', 'WHAT IS HE GOING TO DO IN HIS FREE TIME?', 'DOES SHE LIKE SPORTS?', 'NA', 'REFORZAR DESCRIPCIÓN DE SITUACIONES Y EVENTOS', '../../images/preguntas/question-3385451_1923.jpg'),
(341, 9, 7, 3, 87, 'ESCOGE LA PREGUNTA CORRECTA DE ACUERDO A LA SIGUIENTE RESPUESTA. ANSWER: I PAINT.', 'WHAT DO YOU DO IN YOUR FREE TIME?', 'NA', 'NA', 'CAN YOU PAINT?', 'WHAT ARE YOU GOING TO DO AFTER SCHOOL?', 'CAN HE PAINT? ', 'NA', 'REFORZAR DESCRIPCIÓN DE SITUACIONES Y EVENTOS', '../../images/preguntas/question-3385451_1924.jpg'),
(343, 11, 5, 3, 192, 'LA SIGUIENTE IMAGEN A CUÁL FUNCIÓN PERTENECE: ', 'FUNCIÓN AFÍN', 'NA', 'NA', 'FUNCIÓN LINEAL', 'RECTA X = 0', 'RECTA Y = 0', 'NA', 'REFORZAR FUNCIÓN LINEAL Y AFIN (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/Imagen13.png'),
(344, 11, 5, 3, 192, 'LAS RECTAS O FUNCIONES LINEALES TIENEN LA SIGUIENTE FORMULA: Y = MX + B POR LO TANTO LA CARACTERÍSTICA PRINCIPAL ES: ', 'LAS COMPONENTES X,Y TIENEN EXPONENTE IGUAL A UNO', 'NA', 'NA', 'UNA DE LAS COMPONENTES DEBE ESTAR ELEVADA A LA DOS', 'AMBAS COMPONENTES DEBE ESTAR ELEVADA A LA DOS', 'PUEDEN TENER CUALQUIER EXPONENTE MENOS UNO O CERO', 'NA', 'REFORZAR FUNCIÓN LINEAL Y AFIN (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/Imagen14.png'),
(345, 6, 6, 3, 178, '¿QUÉ ESTRATEGIAS UTILIZAS PARA INTERPRETAR UN TEXTO?  ORDENA EL PASO A PASO PARA TENER MAYOR COHERENCIA  2.CONTEXTUALIZO EL ESCRITO.  4. BUSCO EL SIGNIFICADO DE LAS PALABRAS DESCONOCIDAS. 1.LEO EL TEXTO COMPLETO PARA TENER UNA IDEA. 3. SUBRAYO LAS IDEAS PRINCIPALES.  ', '1,4,3,2', 'NA', 'NA', ' 2,1,4,3', '4,2,3,1', ' 3,4,2,1', 'NA', 'REFORZAR INTERPRETACIÓN TEXTUAL', 'NA'),
(346, 12, 15, 3, 146, 'UN SINÓNIMO DE LA PALABRA OBJECIONES SEGÚN EL TEXTO ES:', 'OBSERVACIONES.', 'NA', 'NA', 'APORTACIONES.', 'RECLAMOS. ', 'REPAROS.', 'NA', 'REFORZAR EXPRESIÓN GRAMATICAL', '../../images/preguntas/Expresión GRAMATICAL 11 .1.png'),
(347, 11, 5, 3, 199, 'LAS PARÁBOLAS TIENEN LA FORMA: Y = AX²  +  BX  +  C EN ESTA PARÁBOLA EL TERMINO QUE TIENE UN VALOR DE CERO ES: ', 'B', 'NA', 'NA', 'Y', 'A', 'C', 'NA', 'REFORZAR ANÁLISIS DE GRÁFICAS Y COMPONENTES DE LA PARÁBOLA (GEOMÉTRICO-MÉTRICO)', '../../images/preguntas/Imagen15.png'),
(348, 6, 6, 3, 178, 'INTERPRETA EL SIGNIFICADO DEL SIGUIENTE REFRÁN, SELECCIONA LA OPCIÓN CORRECTA  “LO QUE FÁCIL VIENE, FÁCIL SE VA”  \r', 'AQUELLO LOGRADO SIN ESFUERZO ES PASAJERO. ', 'NA', 'NA', 'SIGNIFICA DECIR LAS COSAS CON CLARIDAD.', 'LOS RUMORES PUEDEN TENER ALGO DE CIERTO. ', 'HAY QUE CONFORMARSE CON LO QUE SE TIENE.', 'NA', 'REFORZAR INTERPRETACIÓN TEXTUAL', 'NA'),
(349, 6, 6, 3, 178, 'LEA EL SIGUIENTE TEXTO Y A CONTINUACIÓN RESPONDA LA PREGUNTA  QUE CORRESPONDE A LA RESPUESTA CORRECTA.  ¿A QUIÉNES VA DIRIGIDO EL ANUNCIO? \r', 'A LOS NIÑOS Y NIÑAS.', 'NA', 'NA', 'A LOS JÓVENES. ', 'A LOS DOCENTES.', ' A LOS PADRES. ', 'NA', 'REFORZAR INTERPRETACIÓN TEXTUAL', '../../images/preguntas/comprelect .png'),
(350, 11, 5, 3, 199, 'LA SIGUIENTE PARÁBOLA: Y = -4X² + 3X -1 MUESTRA ALGUNOS COMPONENTES DE LA PARÁBOLA. EL CORRECTO EJE DE SIMETRÍA ES: ', 'X = 0.375', 'NA', 'NA', 'A = (0.375  ,  -  0.4375)', 'Y = -1', 'Y = -4X² + 3X -1', 'NA', 'REFORZAR ANÁLISIS DE GRÁFICAS Y COMPONENTES DE LA PARÁBOLA (GEOMÉTRICO-MÉTRICO)', '../../images/preguntas/Imagen16.png'),
(351, 6, 6, 3, 178, 'LEA EL SIGUIENTE TEXTO Y A CONTINUACIÓN RESPONDA LA PREGUNTA SELECCIONANDO LA RESPUESTA CORRECTA. ¿QUÉ ES “CUIDEMOS NUESTRA ESCUELA”?  \r', 'EL TÍTULO DE UN CONCURSO. ', 'NA', 'NA', 'EL CENTRO DE CULTURA.', 'EL TEMA DE UN LIBRO. ', 'EL NOMBRE DEL COLEGIO.', 'NA', 'REFORZAR INTERPRETACIÓN TEXTUAL', '../../images/preguntas/Presentación1 grado 5.png'),
(352, 11, 5, 3, 194, 'EXISTEN VARIOS MÉTODOS PARA HALLAR EL PUNTO DE INTERSECCIÓN DE DOS RECTAS, PUEDE IMPLEMENTAR EL QUE MÁS SE ACOMODE.  EL SIGUIENTE SISTEMA LINEAL CONFORMADO POR LAS RECTAS   ( Y = 4X – 5) Y ( Y= -5X – 1)  TIENE SU PUNTO DE INTERSECCIÓN EN: ', 'NINGUNA DE LAS ANTERIORES', 'NA', 'NA', 'Y= -0.44444444      Y = -0.11111111', 'X = 0.1111111111  Y = 0.44444444', 'X = -0.1111111       Y = -0.44444444', 'NA', 'REFORZAR CÁLCULO ANALÍTICO DEL PUNTO DE CORTE DE SISTEMAS LINEALES (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/Imagen17.png'),
(353, 11, 5, 3, 194, 'EXISTEN VARIOS MÉTODOS PARA HALLAR EL PUNTO DE INTERSECCIÓN DE DOS RECTAS, PUEDE IMPLEMENTAR EL QUE MÁS SE ACOMODE.  EL SIGUIENTE SISTEMA LINEAL CONFORMADO POR LAS RECTAS   ( Y = 2X) Y ( Y= 2X + 1) ', 'NO EXISTE POR QUE TIENEN LA MISMA PENDIENTE', 'NA', 'NA', 'X = 0      Y  =  0', 'X  = 2     Y   =  2', 'X  =  1    Y  =  0', 'NA', 'REFORZAR CÁLCULO ANALÍTICO DEL PUNTO DE CORTE DE SISTEMAS LINEALES (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/Imagen18.png'),
(354, 6, 6, 3, 179, 'EN EL SIGUIENTE TEXTO SE HA OMITIDO TILDES, SELECCIONA LA OPCIÓN DE LAS PALABRAS ESCRITAS CORRECTAMENTE.   \r', 'SERAFÍN, COMÍA, INTENCIÓN, AÚN, MÁS, DÍA, PODÍA.', 'NA', 'NA', 'GRÁNDE, SUÉLO, CULTÍVOS, PEPÍTAS, RÓSA, CONÉJO.', 'PODÍA, CÓMER, GRÁNJERO, ZANAHORÍAS,AÚN.', 'ODIABA, ESCARBAR, PASÁBA, DIJO, FELICÉS.,COMÍA ', 'NA', 'REFORZAR EXPRESIÓN GRAMATICAL', '../../images/preguntas/texto puntuación 5.png'),
(355, 12, 15, 3, 146, 'SEGÚN EL TEXTO ANTERIOR EL CONECTOR  AÚN ASÍ  SE UTILIZA CON EL PROPÓSITO DE:', 'EXPRESAR UNA RELACIÓN DE CONTRASTE.', 'NA', 'NA', 'ENUNCIAR UNA CONSECUENCIA.', 'SEÑALAR UNA RELACIÓN DE SEMEJANZA.', 'FORMULAR UNA EJEMPLIFICACIÓN.', 'NA', 'REFORZAR EXPRESIÓN GRAMATICAL', '../../images/preguntas/Expresión gramatical 2 11.png'),
(356, 11, 5, 3, 197, 'LA ECUACIÓN CANÓNICA DE ESTA PARÁBOLA ES. (X – H)²  =  4P (Y – K) SI (H , K) ES (0,0)  Y P = 1  LA FORMA GENERAL DE ESTA PARÁBOLA ES: ', 'X² - 4Y = 0', 'NA', 'NA', 'X² + 4Y = 0', '- X² - 4Y = 0', '- X²  + 4Y = 0', 'NA', 'REFORZAR CONVERSIÓN DE PARÁBOLAS DE FORMA CANÓNICA A FORMA GENERAL (GEOMÉTRICO-MÉTRICO)', '../../images/preguntas/Imagen19.png'),
(357, 11, 5, 3, 197, 'LA ECUACIÓN CANÓNICA DE ESTA PARÁBOLA ES. (Y – K)²  =  4P (X – H) SI (H , K) ES (2,3)  Y P = -1  LA FORMA GENERAL DE ESTA PARÁBOLA ES: ', 'Y² - 6Y +4X +1 = 0', 'NA', 'NA', '- Y² + 6Y - 4X  - 1 = 0', 'Y² - 6Y - 4X - 1 = 0', 'Y² + 6Y +4X +1 = 0', 'NA', 'REFORZAR CONVERSIÓN DE PARÁBOLAS DE FORMA CANÓNICA A FORMA GENERAL (GEOMÉTRICO-MÉTRICO)', '../../images/preguntas/Imagen20.png'),
(358, 11, 5, 3, 193, 'ESTA ES UNA RECTA Y = MX + B  SEGÚN EL GRÁFICO, LA PENDIENTE DE ESTA RECTA ES: ', 'M = POSITIVA', 'NA', 'NA', 'M = NEGATIVA', 'M = INDETERMINADA', 'M = CERO', 'NA', 'REFORZAR PENDIENTE DE LA RECTA (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/Imagen21.png'),
(359, 12, 15, 3, 146, 'LAS PALABRAS SUBRAYADAS EN EL TEXTO INDICAN:', 'UNA OPOSICIÓN ENTRE DOS IDEAS.', 'NA', 'NA', 'UNA ACLARACIÓN DE UNA IDEA. ', 'UNA COMPARACIÓN ENTRE DOS IDEAS.', 'UNA AMPLIACIÓN DE UNA IDEA.', 'NA', 'REFORZAR EXPRESIÓN GRAMATICAL', '../../images/preguntas/Expresión 3.11.png'),
(360, 11, 5, 3, 193, 'LA ECUACIÓN DE LA RECTA ES Y = MX + B.               DE DONDE LA PENDIENTE (M) ES DE LA FORMA: M= (Y2 − Y1) / (X2 −X1)   ,                 SI P1   (X1 , Y1)    Y P2 (X2 , Y2).                                                                                                                                                           LA PENDIENTE M, ES:  ', 'CERO', 'NA', 'NA', 'INDETERMINADA ', 'POSITIVA', 'NEGATIVA', 'NA', 'REFORZAR PENDIENTE DE LA RECTA (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/Imagen22.png'),
(361, 6, 6, 3, 179, ' ¿PARA QUÉ SIRVEN LOS SIGNOS DE PUNTUACIÓN EN UN TEXTO? \r', 'SON USADOS PARA DARLE SENTIDO A LAS ORACIONES.', 'NA', 'NA', 'PARA EXPRESAR UNA EMOCIÓN.', 'HACE PARTE DE LA ORACIÓN. ', 'PARA NEGAR UN ENUNCIADO.', 'NA', 'REFORZAR EXPRESIÓN GRAMATICAL', 'NA'),
(362, 12, 15, 3, 146, 'EN EL TEXTO LA EXPRESIÓN DESAFORADOS Y SIMIENTES PUEDEN REMPLAZARSE POR:', 'DESMEDIDOS -ESPECIE.', 'NA', 'NA', 'RABIOSOS -ORIGEN.', 'FURIBUNDO-GÉNERO.', 'FRENÉTICOS – DESECHOS.', 'NA', 'REFORZAR EXPRESIÓN GRAMATICAL', '../../images/preguntas/EXPRESIÓN 4. 11.png'),
(363, 11, 15, 3, 144, 'UN ENSAYO ES UN  TEXTO:', 'ARGUMENTATIVO.', 'NA', 'NA', 'NARRATIVO. ', 'CIENTÍFICO.', 'INFORMATIVO.', 'NA', 'REFORZAR PRODUCCIÓN TEXTUAL', '../../images/preguntas/docs.png'),
(364, 11, 15, 3, 144, 'EL OBJETIVO DE LA CONCLUSIÓN EN UN ENSAYO ES:', 'RESUMIR LOS RESULTADOS DE LOS ARGUMENTOS.', 'NA', 'NA', 'APOYAR LOS ARGUMENTOS DE LA TESIS.  ', 'EXPLICAR EL DESARROLLO ARGUMENTATIVO.', 'PRESENTAR EL TEMA DEL ENSAYO.', 'NA', 'REFORZAR PRODUCCIÓN TEXTUAL', '../../images/preguntas/documento.png'),
(365, 11, 15, 3, 144, 'EL PROPÓSITO DE REDACTAR UN INFORME ES:', 'DEMOSTRAR EL RESULTADO DE LA TAREA INVESTIGATIVA.', 'NA', 'NA', 'INCLUIR FUENTES CONFIABLES.', 'DESCRIBIR UN MÉTODO.', 'PRESENTAR UN TEMA.', 'NA', 'REFORZAR PRODUCCIÓN TEXTUAL', '../../images/preguntas/equipo.png'),
(366, 11, 15, 3, 142, 'EL HECHO DE QUE UNA ENTIDAD COMO UKBA INTERVENGA EN UNA UNIVERSIDAD EVIDENCIA QUE EN LA UNIÓN EUROPEA HAY:', 'UNA POLÍTICA DE INTEGRACIÓN EUROPEA. ', 'NA', 'NA', 'UN PROYECTO DE ELIMINAR LAS FRONTERAS.', 'UNA DISCUSIÓN SOBRE LA INMIGRACIÓN.', 'PROBLEMAS DE SISTEMATIZACIÓN DE LA INFORMACIÓN.', 'NA', 'REFORZAR INTERPRETACIÓN TEXTUAL', '../../images/preguntas/INTERPTACIÓN 10 .1.png'),
(367, 11, 15, 3, 142, 'EL SEGUNDO PÁRRAFO DEL TEXTO CUMPLE  LA FUNCIÓN DE EXPLICAR:', 'EL IMPACTO DEL HECHO EN LA VIDA DE UNA PERSONA. ', 'NA', 'NA', 'COMO LAS PERSONAS IMPLICADAS ASUMEN LOS HECHOS.', 'LAS CAUSAS QUE ORIGINARON EL HECHO.', 'LOS HECHOS QUE HAN ORIGINADO LA NOTICIA.', 'NA', 'REFORZAR INTERPRETACIÓN TEXTUAL', '../../images/preguntas/Interpretación 10.2.png'),
(368, 11, 15, 3, 142, '¿EN CUÁL DE LOS SIGUIENTES CONTEXTOS SE INSCRIBE MEJOR LA CARICATURA?', 'HUMOR GRÁFICO.', 'NA', 'NA', 'ANUNCIO PUBLICITARIO.', 'REPORTAJE GRÁFICO.', 'SÁTIRA POLÍTICA.', 'NA', 'REFORZAR INTERPRETACIÓN TEXTUAL', '../../images/preguntas/TEXTUAL 3.png'),
(369, 5, 6, 3, 173, 'LEA LA SIGUIENTE FRASE Y SELECCIONA LA OPCIÓN QUE CONSIDERE  ESTÁ ESCRITA CORRECTAMENTE. ', 'CADA DÍA TE OFRECE UNA NUEVA OPORTUNIDAD. ', 'NA', 'NA', 'CADA DIA TE OFRESE UNA NUEVA OPORTUNIDAD.', 'CADA DÍA TE OFREZE UNA NUEBA OPORTUNIDAD.', 'CADA DÍA TE OFRECE UNA NUEVA OPORTUNIDA.', 'NA', 'REFORZAR EXPRESIÓN GRAMATICAL', 'NA'),
(370, 5, 6, 3, 173, '¿QUÉ SON LAS PALABRAS HOMÓFONAS?', 'SUENAN DE IGUAL MODO PERO DIFIERE SU SIGNIFICADO.', 'NA', 'NA', 'LLEVAN TILDE EN LA ÚLTIMA SÍLABA. ', 'PALABRAS QUE LLEVAN TILDE EN LA ÚLTIMA SÍLABA.', 'PALABRAS QUE TIENEN SIGNIFICADO DIFERENTE. ', 'NA', 'REFORZAR EXPRESIÓN GRAMATICAL', 'NA'),
(371, 5, 6, 3, 171, 'EL TEXTO INFORMATIVO TIENE LA INTENCIÓN DE: ', 'TRANSMITIR INFORMACIÓN SOBRE UN HECHO.', 'NA', 'NA', 'CONVENCER SOBRE UN TEMA MEDIANTE ARGUMENTOS.', 'ORIENTAR DE MANERA DETALLADA UNA CARACTERÍSTICA.', 'CONSISTE EN NARRAR HECHOS REALES O FICTICIOS. ', 'NA', 'REFORZAR INTERPRETACIÓN TEXTUAL', 'NA'),
(372, 5, 6, 3, 171, '¿DÓNDE SE ENCUENTRAN LOS TEXTOS INFORMATIVOS? ', ' PERIÓDICOS, REVISTAS. ', 'NA', 'NA', 'ARTÍCULOS DE OPINIÓN. DISCURSOS, ENSAYOS. ', 'NOTICIAS, NOVELAS, CUENTOS, TEXTOS DE HISTORIA.', 'CATÁLOGOS, REPORTES, GUÍAS, LIBROS DE VIAJE. ', 'NA', 'REFORZAR INTERPRETACIÓN TEXTUAL', 'NA'),
(373, 12, 15, 3, 145, '¿EN CUÁL DE LOS SIGUIENTES CONTEXTOS SE INSCRIBE MEJOR LA CARICATURA?', 'HUMOR GRÁFICO.', 'NA', 'NA', 'ANUNCIO PUBLICITARIO.', 'REPORTAJE GRÁFICO.', 'SÁTIRA POLÍTICA.', 'NA', 'REFORZAR LECTURA CRÍTICA', '../../images/preguntas/LECTURA 11.png'),
(374, 5, 6, 3, 171, 'TODA NARRACIÓN TIENE UN INICIO, NUDO Y DESENLACE, RELACIONA EL SIGUIENTE TEXTO CON SU ESTRUCTURA NARRATIVA. SELECCIONA LA OPCIÓN CORRECTA.      ', 'DESENLACE, NUDO E INICIO. ', 'NA', 'NA', 'INICIO, NUDO Y DESENLACE.', 'DESENLACE,INICIO Y NUDO.', 'INICIO, DESENLACE Y NUDO.', 'NA', 'REFORZAR INTERPRETACIÓN TEXTUAL', '../../images/preguntas/el león y ratón.jpg'),
(375, 5, 6, 3, 171, 'LA FÁBULA ES UN TEXTO:   ', 'LITERARIO  Y NARRATIVO', 'NA', 'NA', 'INFORMATIVO', 'NOTICIOSO', 'EXPOSITIVO', 'NA', 'REFORZAR INTERPRETACIÓN TEXTUAL', 'NA'),
(376, 5, 6, 3, 173, 'IDENTIFICA LOS ELEMENTOS DE LA COMUNICACIÓN EN LA SIGUIENTE ORACIÓN :  CARLOS REVISA EL CELULAR Y UN RECORDATORIO LE AVISA QUE TIENE UN EXAMEN. SELECCIONA LA OPCIÓN QUE CORRESPONDE A EMISOR, RECEPTOR, CANAL Y MENSAJE RESPECTIVAMENTE. ', 'RECORDATORIO, CARLOS, CELULAR, TIENE UN EXAMEN.', 'NA', 'NA', 'RECORDATORIO, CELULAR, TIENE UN EXAMEN, CARLOS. ', 'RECORDATORIO, TIENE UN EXAMEN, CARLOS, CELULAR.', 'CARLOS, RECORDATORIO, CELULAR, TIENE UN EXAMEN.', 'NA', 'REFORZAR EXPRESIÓN GRAMATICAL', 'NA'),
(377, 5, 6, 3, 173, '¿QUÉ ES EL CÓDIGO EN LA COMUNICACIÓN? ', 'CONJUNTO DE SIGNOS ESCOGIDOS POR EL EMISOR. ', 'NA', 'NA', 'MEDIOS DEL  EMISOR PARA ENVIAR EL MENSAJE. ', 'PERSONA QUE EMITE EL MENSAJE O COMUNICA ALGO.', 'ES EL OBJETIVO DE LA COMUNICACIÓN. ', 'NA', 'REFORZAR EXPRESIÓN GRAMATICAL', 'NA'),
(378, 5, 6, 3, 172, 'SELECCIONA LA ORACIÓN QUE TIENE SENTIDO COMPLETO  ', 'SU JARDÍN FLORECIÓ EN PRIMAVERA.', 'NA', 'NA', 'SU JARDÍN.', 'FLORECIÓ EN PRIMAVERA.', 'JARDÍN FLORECIÓ.', 'NA', 'REFORZAR PRODUCCIÓN TEXTUAL', 'NA'),
(379, 5, 6, 3, 172, 'ORDENA LAS SIGUIENTES PALABRAS FORMANDO UNA ORACIÓN 1=AMIGOS 2=EL 3=JUEGAN 4=MIS 5=PARQUE. 6=EN  ', '4,1,3,6,2,5', 'NA', 'NA', '2,3,4,5,6,1', '1,2,3,4,5,6', '3,4,2,1,6,5', 'NA', 'REFORZAR PRODUCCIÓN TEXTUAL', 'NA'),
(380, 5, 6, 3, 173, '¿CUÁLES SON LAS CLASES DE ORACIONES, SEGÚN LA INTENCIÓN DEL HABLANTE?', 'ENUNCIATIVAS, INTERROGATIVAS, EXCLAMATIVAS.', 'NA', 'NA', 'ESDRÚJULAS, AGUDAS Y GRAVES.', 'ARTÍCULO, NÚCLEO Y PREDICADO.', 'SUSTANTIVO, VERBO Y ADJETIVO.', 'NA', 'REFORZAR EXPRESIÓN GRAMATICAL', 'NA'),
(381, 5, 6, 3, 172, 'ORDENA LA SIGUIENTE COPLA, TIENE LOS VERSOS EN DESORDEN: 1. LA MANZANA PERDIDA ,2. ¿POR QUÉ LLORA EL NIÑO?  3.SEÑORA SANTA ANA ,4.QUE SE LE HA PERDIDO, 5.POR UNA MANZANA   ', '1, 3,2,5,4', 'NA', 'NA', '1,2,3,4,5', '5,4,3,2,1', '2,1,4,3,5', 'NA', 'REFORZAR PRODUCCIÓN TEXTUAL', 'NA'),
(382, 5, 6, 3, 172, 'SEGÚN LA COPLA  DE CUANTOS VERSOS Y ESTROFAS SE COMPONE: “LA MANZANA PERDIDA” ¿POR QUÉ LLORA EL NIÑO? SEÑORA SANTA ANA  QUE SE LE HA PERDIDO POR UNA MANZANA .', '4 VERSOS 1 ESTROFA ', 'NA', 'NA', '1 VERSO 4 ESTROFAS ', '2 VERSOS 1 ESTROFA', '5 VERSOS 2 ESTROFAS', 'NA', 'REFORZAR PRODUCCIÓN TEXTUAL', 'NA'),
(383, 12, 15, 3, 145, 'EL SEGUNDO PÁRRAFO DEL TEXTO CUMPLE  LA FUNCIÓN DE EXPLICAR:', 'EL IMPACTO DEL HECHO EN LA VIDA DE UNA PERSONA.', 'NA', 'NA', 'COMO LAS PERSONAS IMPLICADAS ASUMEN LOS HECHOS.', 'LAS CAUSAS QUE ORIGINARON EL HECHO.', 'LOS HECHOS QUE HAN ORIGINADO LA NOTICIA.', 'NA', 'REFORZAR LECTURA CRÍTICA', '../../images/preguntas/LECTURA6.png'),
(384, 12, 15, 3, 146, 'EN EL TEXTO, LAS PALABRAS (EL REY LEAR)  SE RESALTAN EN LETRA CURSIVA PARA:', 'CITAR TÍTULOS DE OTRAS OBRAS.', 'NA', 'NA', 'EXPRESAR UN NOMBRE LATINO.', 'INDICAR QUE UNA EXPRESIÓN ES VULGAR.', 'MOSTRAR UNA VOZ EN OTRA LENGUA.', 'NA', 'REFORZAR EXPRESIÓN GRAMATICAL', '../../images/preguntas/GRAMATICA 11.5.png'),
(385, 12, 15, 3, 147, 'UN ENSAYO ES UN  TEXTO:', 'ARGUMENTATIVO.', 'NA', 'NA', 'NARRATIVO.', 'CIENTÍFICO.', 'INFORMATIVO.', 'NA', 'REFORZAR PRODUCCIÓN TEXTUAL', '../../images/preguntas/examen.png'),
(386, 12, 15, 3, 147, 'EL PROPÓSITO DE REDACTAR UN INFORME ES:', 'DEMOSTRAR EL RESULTADO DE LA TAREA INVESTIGATIVA', 'NA', 'NA', 'INCLUIR FUENTES CONFIABLES', 'DESCRIBIR UN MÉTODO', 'PRESENTAR UN TEMA', 'NA', 'REFORZAR PRODUCCIÓN TEXTUAL', '../../images/preguntas/disposicion.png'),
(387, 12, 15, 3, 147, 'EL OBJETIVO DE LA CONCLUSIÓN EN UN INFORME ES:', 'HACER RECOMENDACIONES DEL PROCESO INVESTIGATIVO.', 'NA', 'NA', 'ANALIZAR RESULTADOS DE LA TAREA INVESTIGATIVA.', 'ELEGIR DATOS CONFIABLES.', 'CONOCER EL OBJETIVO DE LA INVESTIGACIÓN.', 'NA', 'REFORZAR PRODUCCIÓN TEXTUAL', '../../images/preguntas/conexion.png'),
(388, 11, 15, 3, 142, 'SEGÚN EL TEXTO, CUANDO EL AUTOR MENCIONA A LAS NACIONES QUE SE FORMAN FUERA DE LAS FRONTERAS FÍSICAS, SE REFIERE A:', 'LAS PERSONAS QUE VIVEN EN TERRITORIOS DIFERENTES.', 'NA', 'NA', 'LA  INFLUENCIA MIGRATORIA DE LOS TURISTAS.', 'LOS GRUPOS VIRTUALES CREADOS EN EL CIBERESPACIO.', 'LA COMUNIDAD VIRTUAL CON PENSAMIENTOS DIFERENTES', 'NA', 'REFORZAR INTERPRETACIÓN TEXTUAL', '../../images/preguntas/modificación final.png'),
(389, 11, 5, 3, 195, 'PARA RACIONALIZAR LA FRACCIÓN QUE SE ENCUENTRA EN LA IMAGEN, ES NECESARIO MULTIPLICAR POR LA SIGUIENTE FRACCIÓN (CONJUGADA)  ', 'A ', 'NA', 'NA', 'B', 'C', 'D', 'NA', 'REFORZAR RACIONALIZACIÓN (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/Imagenn23.png'),
(390, 11, 5, 3, 195, 'SEA LA FRACCIÓN DE LA IMAGEN, CUANDO LA RACIONALIZAMOS EL RESULTADO ES:', 'A', 'NA', 'NA', 'B', 'C', 'D', 'NA', 'REFORZAR RACIONALIZACIÓN (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/Imagen24.png'),
(391, 11, 15, 3, 142, 'EN EL ENUNCIADO (QUÉ LEAN Y CÓMO –BIEN O MAL - NO DEPENDE TOTALMENTE DE ELLOS).  LA PALABRA (ELLOS) HACE REFERENCIA A:', 'JUICIOS. ', 'NA', 'NA', 'INTERESES.', 'MOTIVOS.', 'INDIVIDUOS.', 'NA', 'REFORZAR INTERPRETACIÓN TEXTUAL', '../../images/preguntas/intrepretación 10.5.png'),
(392, 11, 15, 3, 143, 'UN SINÓNIMO DE LA PALABRA OBJECIONES  SEGÚN EL TEXTO ES:', 'OBSERVACIONES.', 'NA', 'NA', 'APORTACIONES.', 'RECLAMOS. ', 'REPAROS.', 'NA', 'REFORZAR EXPRESIÓN GRAMATICAL', '../../images/preguntas/Expresión GRAMATICAL 10.1.png'),
(393, 11, 15, 3, 143, 'SEGÚN EL TEXTO ANTERIOR EL CONECTOR  AÚN ASÍ, SE UTILIZA CON EL PROPÓSITO DE:', 'EXPRESAR UNA RELACIÓN DE CONTRASTE.', 'NA', 'NA', 'ENUNCIAR UNA CONSECUENCIA.', 'SEÑALAR UNA RELACIÓN DE SEMEJANZA.', 'FORMULAR UNA EJEMPLIFICACIÓN.', 'NA', 'REFORZAR EXPRESIÓN GRAMATICAL', '../../images/preguntas/Expresión gramatical 2 10.png'),
(394, 11, 15, 3, 143, 'LAS PALABRAS SUBRAYADAS EN EL TEXTO INDICAN:', 'UNA OPOSICIÓN ENTRE DOS IDEAS.', 'NA', 'NA', 'UNA COMPARACIÓN ENTRE DOS IDEAS.', 'UNA ACLARACIÓN DE UNA IDEA. ', 'UNA AMPLIACIÓN DE UNA IDEA.', 'NA', 'REFORZAR EXPRESIÓN GRAMATICAL', '../../images/preguntas/EXPRESIÓN 10.3.png'),
(395, 11, 5, 3, 198, 'EL DISCRIMINANTE DE UNA PARÁBOLA ES UN VALOR QUE ME PERMITE DETERMINAR SI ESTA TOCA AL EJE DE LAS X. SI ES POSITIVO, LA PARÁBOLA TOCA AL EJE DE LAS X SI ES NEGATIVO LA PARÁBOLA NO TOCA EL EJE DE LAS X. ENTONCES EL VALOR DEL DISCRIMINANTE DE LA PARÁBOLA DE LA IMAGEN ES: ', '- 28', 'NA', 'NA', '- 36', ' 28', '-34 ', 'NA', 'REFORZAR DISCRIMINANTE (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/imagen23a.png'),
(396, 11, 5, 3, 198, 'EL DISCRIMINANTE DE UNA PARÁBOLA ES UN VALOR QUE ME PERMITE DETERMINAR SI ESTA TOCA AL EJE DE LAS X. SI ES POSITIVO, LA PARÁBOLA TOCA AL EJE DE LAS X SI ES NEGATIVO LA PARÁBOLA NO TOCA EL EJE DE LAS X. ENTONCES EL VALOR DEL DISCRIMINANTE DE LA PARÁBOLA DE LA IMAGEN ES: ', '1', 'NA', 'NA', '0', '3', '-3', 'NA', 'REFORZAR DISCRIMINANTE (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/Imagen25.png'),
(397, 11, 5, 3, 201, 'VANESSA TIENE LOS SIGUIENTES CONTACTOS EN UN GRUPO Y DESEA SELECCIONAR UNO DE LOS INTEGRANTES, ES CORRECTO AFIRMAR LO SIGUIENTE: ', 'MÁS PROBABLE UNA MUJER, PORQUE HAY 6 EN EL GRUPO', 'NA', 'NA', 'MÁS PROBABLE UN HOMBRE, POR QUE HAY 5 EN EL GRUPO.', 'LOS DOS TIENEN LA MISMA PROBABILIDAD DE SELECCIÓN.', 'A NINGUNO PORQUE NO TIENEN LA MISMA PROBABILIDAD.', 'NA', 'REFORZAR PROCESOS PROBABILÍSTICOS Y ALEATORIOS (ALEATORIO-PROBABILÍSTICO)', '../../images/preguntas/Imagen8 decimo.jpg'),
(398, 11, 15, 3, 143, 'EN EL TEXTO LA EXPRESIÓN DESAFORADOS Y SIMIENTES PUEDEN REMPLAZARSE POR:', 'DESMEDIDOS -ESPECIE.', 'NA', 'NA', 'RABIOSOS -ORIGEN.', 'FURIBUNDO-GÉNERO.', 'FRENÉTICOS – DESECHOS.', 'NA', 'REFORZAR EXPRESIÓN GRAMATICAL', '../../images/preguntas/EXPRESIÓN 5 10.png'),
(399, 11, 15, 3, 143, 'EN EL TEXTO, LAS PALABRAS (EL REY LEAR)  SE RESALTAN EN LETRA CURSIVA PARA:', 'CITAR TÍTULOS DE OTRAS OBRAS.', 'NA', 'NA', 'EXPRESAR UN NOMBRE LATINO.', 'INDICAR QUE UNA EXPRESIÓN ES VULGAR.', 'MOSTRAR UNA VOZ EN OTRA LENGUA.', 'NA', 'REFORZAR EXPRESIÓN GRAMATICAL', '../../images/preguntas/EXPRESIÓN 10.6.png'),
(400, 11, 5, 3, 201, 'LA PROBABILIDAD ES UN VALOR QUE SOLO SE ENCUENTRA ENTRE CERO Y UNO. EL LANZAMIENTO DE UNA MONEDA, TIENE DOS RESULTADOS, LA CARA (0.5) Y EL SELLO (0.5). SI SUMAMOS ESTOS VALORES OBTENEMOS UNO. SI EN UN EXPERIMENTO DE LANZAR LA MONEDA UNA VEZ, SE DA UN RESULTADO DE 0.55 CUANDO CAE SELLO, ESTE VALOR SE PUEDE EXPRESAR COMO: ', 'FALSO, PORQUE LA PROBABILIDAD DE SELLO ES DE 0.5', 'NA', 'NA', 'FALSO, PORQUE SOLAMENTE HAY UN LANZAMIENTO', 'VERDADERO, PORQUE LA PROBABILIDAD SIEMPRE ES 0.55', 'VERDADERO, PORQUE SOLAMENTE HAY UN PENSAMIENTO', 'NA', 'REFORZAR PROCESOS PROBABILÍSTICOS Y ALEATORIOS (ALEATORIO-PROBABILÍSTICO)', '../../images/preguntas/Imagen26.png'),
(401, 5, 6, 3, 171, 'LEA EL SIGUIENTE TEXTO Y SELECCIONE LA RESPUESTA CORRECTA.  ¿EN QUÉ ÉPOCA DEL AÑO OCURRIÓ ESTA HISTORIA DEL ASNO?  \r', 'INVIERNO', 'NA', 'NA', 'OTOÑO', 'PRIMAVERA', 'VERANO', 'NA', 'REFORZAR INTERPRETACIÓN TEXTUAL', '../../images/preguntas/LECTURA 4.1.png'),
(402, 5, 6, 3, 171, 'LEA EL SIGUIENTE TEXTO Y SELECCIONE LA RESPUESTA CORRECTA. ¿DÓNDE SE QUEDÓ DORMIDO EL ASNO? \r', ' EN UN LAGO HELADO ', 'NA', 'NA', ' DEBAJO DE UN ÁRBOL ', 'EN EL CAMINO ', 'EN UNA CASCADA', 'NA', 'REFORZAR INTERPRETACIÓN TEXTUAL', '../../images/preguntas/lectura 3.png'),
(404, 11, 5, 3, 196, 'EN LA IMAGEN SE MUESTRA UNA PARÁBOLA FORMADA POR UNA ANTENA PARABÓLICA. LA ECUACIÓN QUE SATISFACE A ESTA PARÁBOLA ES: ', 'A', 'NA', 'NA', 'B', 'C', 'D', 'NA', 'REFORZAR IDENTIFICACIÓN DE LA PARÁBOLA BASADOS EN LA FORMA CANÓNICA (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/Imagen28.png');
INSERT INTO `tbl_preguntas` (`id`, `id_grado`, `id_materia`, `id_tipo_pregunta`, `id_tema`, `pregunta`, `r1ok`, `r2ok`, `r3ok`, `r1no`, `r2no`, `r3no`, `r4no`, `retroalimentacion`, `imagen`) VALUES
(405, 11, 5, 3, 196, 'EN LA IMAGEN SE MUESTRA UNA PARÁBOLA FORMADA POR UNA CAIDA DE AGUA PRODUCIDA POR UNA MANGUERA. LA ECUACIÓN QUE SATISFACE A ESTA PARÁBOLA ES: ', 'B', 'NA', 'NA', 'A', 'C', 'D', 'NA', 'REFORZAR IDENTIFICACIÓN DE LA PARÁBOLA BASADOS EN LA FORMA CANÓNICA (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/Imagen29a.png'),
(406, 11, 5, 3, 200, 'ESTE BOSQUE ES UN EJEMPLO DE RECTAS PARALELAS, TENIENDO LA RECTA L1 Y LA RECTA L2, SE PUEDE DECIR QUE LA INTERSECCIÓN DE ESTAS ES: ', 'VACIO', 'NA', 'NA', 'UN ANGULO DE 90 A 180 GRADOS', 'UN PUNTO (X,Y)', 'OTRA RECTA', 'NA', 'REFORZAR VOLÚMENES Y CUERPOS GEOMÉTRICOS (GEOMÉTRICO-MÉTRICO)', '../../images/preguntas/Imagen30a.png'),
(407, 11, 5, 3, 200, 'LA IMAGEN NOS MUESTRA UNA ESFERA. HALLAR EL RADIO DE ESTA ESFERA SI SU VOLUMEN ES 15 METROS CUBICOS:  ', 'A', 'NA', 'NA', 'B', 'C', 'D', 'NA', 'REFORZAR VOLÚMENES Y CUERPOS GEOMÉTRICOS (GEOMÉTRICO-MÉTRICO)', '../../images/preguntas/Imagen31a.png'),
(408, 6, 5, 3, 74, 'SELECCIONA LAS RESPUESTAS CORRECTAS. ¿EN CUÁL DE LAS ESCUELAS DE MÚSICA HAY MÁS PROBABILIDAD DE SER ADMITIDO?', 'BATUTA', 'NA', 'NA', 'CHAIRS', 'EMAC ', 'ESPIRAL', 'NA', 'REFORZAR PROBABILIDAD (ALEATORIO-PROBABILÍSTICO)', '../../images/preguntas/EI13.JPG'),
(409, 4, 5, 3, 59, 'SELECCIONA LAS RESPUESTAS CORRECTAS. ¿EN CUÁL DE LAS ESCUELAS DE MÚSICA HAY MAS PROBABILIDAD DE SER ADMITIDO?', 'BATUTA ', 'NA', 'NA', 'CHAIRS', 'EMAC', 'ESPIRAL', 'NA', 'REFORZAR ESTADÍSTICA (ALEATORIO-PROBABILÍSTICO)', '../../images/preguntas/grado 3.JPG'),
(410, 12, 5, 3, 208, 'LA IMAGEN NOS MUESTRA UNA ESFERA. HALLAR EL RADIO DE ESTA ESFERA SI SU VOLUMEN ES 15 METROS CÚBICOS:  ', 'A', 'NA', 'NA', 'B', 'C', 'D', 'NA', 'REFORZAR FIGURAS PLANAS Y VOLÚMENES (GEOMÉTRICO-MÉTRICO)', '../../images/preguntas/Imagen32.png'),
(411, 12, 5, 3, 207, 'LA PROBABILIDAD ES UN VALOR QUE SOLO SE ENCUENTRA ENTRE CERO Y UNO. EL LANZAMIENTO DE UNA MONEDA, TIENE DOS RESULTADOS, LA CARA (0.5) Y EL SELLO (0.5). SI SUMAMOS ESTOS VALORES OBTENEMOS UNO. SI EN UN EXPERIMENTO DE LANZAR LA MONEDA UNA VEZ, SE DA UN RESULTADO DE 0.55 CUANDO CAE SELLO, ESTE VALOR SE PUEDE EXPRESAR COMO: ', 'FALSO, PORQUE LA PROBABILIDAD DE SELLO ES DE 0.5', 'NA', 'NA', 'FALSO, PORQUE SOLAMENTE HAY UN LANZAMIENTO', 'VERDADERO, PORQUE LA PROBABILIDAD SIEMPRE ES 0.55', 'VERDADERO, PORQUE SOLAMENTE HAY UN PENSAMIENTO', 'NA', 'REFORZAR PROCESOS PROBABILÍSTICOS Y ALEATORIOS (ALEATORIO-PROBABILÍSTICO)', '../../images/preguntas/Imagen33.png'),
(413, 5, 5, 3, 60, 'OBSERVA LA IMAGEN. LOS RELOJES REPRESENTA CIERTA HORA.  LA RESPUESTA CORRECTA ES: \rA .   4:00PM - 12:45PM -  6:15AM - 8:30AM.                    \rB.    12:00AM - 9PM - 3:30AM - 6:40AM. \rC.    4:00PM - 12:45AM - 6:10AM - 8:30AM. \rD.    12:20AM - 9PM - 3:30AM - 6:40AM.', 'A', 'NA', 'NA', 'B', 'C', 'D', 'NA', 'REFORZAR TIEMPO', '../../images/preguntas/cuarto 1.png'),
(414, 12, 5, 3, 207, 'VANESSA TIENE LOS SIGUIENTES CONTACTOS EN UN GRUPO Y DESEA SELECCIONAR UNO DE LOS INTEGRANTES, ES CORRECTO AFIRMAR LO SIGUIENTE: ', 'MÁS PROBABLE UNA MUJER, POR QUE HAY 6 EN EL GRUPO.', 'NA', 'NA', 'MÁS PROBABLE UN HOMBRE, POR QUE HAY 5 EN EL GRUPO.', 'LOS DOS TIENEN LA MISMA PROBABILIDAD DE SELECCIÓN', 'A NINGUNO PORQUE NO TIENEN LA MISMA PROBABILIDAD', 'NA', 'REFORZAR PROCESOS PROBABILÍSTICOS Y ALEATORIOS (ALEATORIO-PROBABILÍSTICO)', '../../images/preguntas/Imagen34.jpg'),
(415, 5, 5, 5, 61, 'OBSERVA LA IMAGEN. SELECCIONA LA RESPUESTA CORRECTA.  ', '234.438', '976.944', '45.874', '976.945', 'NA', 'NA', 'NA', 'REFORZAR NÚMEROS NATURALES (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/1EI3.JPG'),
(416, 12, 119999, 3, 212, 'LA BALANZA ES UN INSTRUMENTO UTILIZADO PARA MEDIR LA MAGNITUD UNIDAD FÍSICA: ', 'MASA', 'NA', 'NA', 'DENSIDAD', 'PESO', 'PRESION', 'NA', 'REFORZAR PRESIÓN', '../../images/preguntas/Imagen35.jpg'),
(417, 5, 5, 5, 61, 'OBSERVA LA IMAGEN Y AYUDA A DENISSE A ESCOGER LOS  NÚMEROS DANDO RESPUESTA A LAS PREGUNTAS.  ', '30', '21', '358', '400', 'NA', 'NA', 'NA', 'REFORZAR NÚMEROS NATURALES (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/EI4.JPG'),
(422, 5, 5, 3, 61, '¿CUÁNTOS HUEVOS HAY EN LA CUBETA?  ', '30', 'NA', 'NA', '31', '25', '32', 'NA', 'REFORZAR NÚMEROS NATURALES (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/1EI10.JPG'),
(423, 12, 5, 3, 204, 'PARA DESARROLLAR UNA SITUACIÓN PROBLEMÁTICA CON AYUDA DEL TEOREMA DE SENO ES NECESARIO CONTAR CON LA SIGUIENTE CONDICIÓN ', 'CONOCER EL LADO A, EL ANGULO A Y EL LADO B.', 'NA', 'NA', 'CONOCER LOS TRES ANGULOS', 'CONOCER LOS TRES LADOS', 'CONOCER EL LADO C, EL ANGULO B Y EL LADO A', 'NA', 'REFORZAR APLICACIÓN GENERALIZADA DE LA LEY DEL SENO (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/lo que se2.png'),
(424, 5, 5, 3, 63, 'SELECCIONA LA RESPUESTA CORRECTA ', '9.000 PESOS', 'NA', 'NA', '6.000 PESOS ', '12.000 PESOS ', '9.900 PESOS ', 'NA', 'REFORZAR SOLUCIÓN DE PROBLEMAS (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/huevos 1.JPG'),
(425, 12, 5, 3, 205, 'PARA DESARROLLAR UNA SITUACIÓN PROBLEMÁTICA CON AYUDA DEL TEOREMA DE COSENO ES NECESARIO CONTAR CON LA SIGUIENTE CONDICIÓN ', 'CONOCER LOS TRES LADOS', 'NA', 'NA', 'CONOCER LOS TRES ANGULOS', 'CONOCER EL ANGULO A, EL ANGULO B Y EL LADO C', 'CONOCER EL LADO B, EL LADO C Y EL ANGULO C', 'NA', 'REFORZAR APLICACIÓN GENERALIZADA DE LA LEY DEL COSENO (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/interpreto2.png'),
(426, 5, 5, 4, 63, 'SELECCIONA LAS AFIRMACIONES CORRECTAS  ', 'EL  PAGO EN SERVICIOS Y MERCADO ES DE 339.990 ', 'LOS SERVICIOS TIENEN UN COSTO DE 146.390 ', 'NA', 'DE LOS 450.000 PESOS SOBRARON 110.100.', 'LA SUMA DE LAS COMPRAS DE MERCADO ES DE 193.000', 'NA', 'NA', 'REFORZAR SOLUCIÓN DE PROBLEMAS (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/mercado  1.jpg'),
(427, 12, 5, 3, 203, 'EL ÁRBOL DE LA IMAGEN PROYECTA SOBRE EL PISO UNA SOMBRA DE 10 METROS, CALCULAR SU ALTURA.  ', 'ALTURA = 10 X  TAN 53 ', 'NA', 'NA', 'ALTURA  = 53 X TAN  10', 'ALTURA  =  10 X  SEN  53', 'ALTURA  =  10  X  COS 53', 'NA', 'REFORZAR SITUACIONES PROBLEMÁTICAS EN DONDE INTERVIENE EL TRIÁNGULO RECTÁNGULO (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/trigono4.png'),
(429, 5, 5, 3, 75, 'SELECCIONA LA RESPUESTA CORRECTA. ¿EN CUÁL DE LAS ESCUELAS DE MÚSICA HAY MAS PROBABILIDAD DE SER ADMITIDO?', 'BATUTA ', 'NA', 'NA', 'ESPIRAL', 'CHAIRS', 'EMAC', 'NA', 'REFORZAR PROBABILIDAD (ALEATORIO-PROBABILÍSTICO)', '../../images/preguntas/grado 4.JPG'),
(430, 12, 5, 3, 203, 'LA IMAGEN QUE SE MUESTRA ES UNA SEÑAL DE ADVERTENCIA, QUE TIENE TODOS LOS LADOS IGUALES Y MIDEN 40 CM, POR LO TANTO SUS ÁNGULOS MIDEN 60 GRADOS CADA UNO.  PARA HALLAR LA ALTURA DE FORMA RÁPIDA SE TIENEN DOS OPCIONES EN LOS RECUADROS, ES CORRECTO APLICAR LA SIGUIENTE PORQUE: ', 'LA OPCIÓN B, POR QUE APLICO LA TANGENTE', 'NA', 'NA', 'LA OPCIÓN B, POR QUE PUEDO HALLAR EL ÁREA', 'LA OPCIÓN A, POR QUE APLICO EL TEOREMA DE SENO', 'LA OPCIÓN A, POR QUE APLICO EL TEOREMA DE COSENO ', 'NA', 'REFORZAR SITUACIONES PROBLEMÁTICAS EN DONDE INTERVIENE EL TRIÁNGULO RECTÁNGULO (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/Imagen36a.png'),
(431, 10, 6, 3, 139, 'EL ENUNCIADO, EL PALENQUERO CONSTITUYE UNA DE LAS DOS JOYAS LINGÜÍSTICAS DE ORIGEN AFRICANO. QUIERE EXPRESAR:', 'LA PÉRDIDA DEL PALENQUERO.', 'NA', 'NA', 'LA CATEGORÍA DEL PALENQUERO.', 'EL VALOR DEL PALENQUERO', 'EL RENACER DEL PALENQUERO.', 'NA', 'REFORZAR INTERPRETACIÓN TEXTUAL', '../../images/preguntas/INTERPREATACION94.png'),
(432, 10, 6, 3, 139, 'SEGÚN EL TEXTO, SE PUEDE CONCLUIR QUE EL PALENQUERO ES:', 'UNA LENGUA EN RIESGO.', 'NA', 'NA', 'UNA LENGUA AFRICANA.', 'UN PÉSIMO CASTELLANO', 'UNA LENGUA INCOMPRENSIBLE.', 'NA', 'REFORZAR INTERPRETACIÓN TEXTUAL', '../../images/preguntas/INTERPRETACION93.png'),
(433, 10, 6, 3, 139, 'DE ACUERDO A LA ENUMERACIÓN DE LOS ENUNCIADOS DE LA IMAGEN ANTERIOR, ELIGE LA OPCIÓN CORRECTA PARA REDACTAR UNA NOTICIA:', '1, 3, 2, 5 Y  4', 'NA', 'NA', '1, 2, 4, 5  Y  3.', '2, 3, 1, 5 Y 4.', '3, 2, 1 5 Y 4.', 'NA', 'REFORZAR INTERPRETACIÓN TEXTUAL', '../../images/preguntas/Captura de pantalla (1816).png'),
(434, 10, 6, 3, 139, 'EL SEGUNDO PÁRRAFO DEL TEXTO CUMPLE LA FUNCIÓN DE EXPLICAR:', 'EL IMPACTO DEL HECHO EN LA VIDA DE UNA PERSONA', 'NA', 'NA', 'COMO LAS PERSONAS IMPLICADAS ASUMEN LOS HECHOS', 'LAS CAUSAS QUE ORIGINARON EL HECHO', 'LOS HECHOS QUE HAN ORIGINADO LA NOTICIA', 'NA', 'REFORZAR INTERPRETACIÓN TEXTUAL', '../../images/preguntas/Captura de pantalla (1841).png'),
(435, 10, 6, 3, 139, 'EL HECHO DE QUE UNA ENTIDAD COMO UKBA INTERVENGA EN UNA UNIVERSIDAD EVIDENCIA QUE EN LA UNIÓN EUROPEA HAY:', 'UNA POLÍTICA DE INTEGRACIÓN EUROPEA.', 'NA', 'NA', 'UN PROYECTO DE ELIMINAR LAS FRONTERAS.', 'UNA DISCUSIÓN SOBRE LA INMIGRACIÓN.', 'PROBLEMAS DE SISTEMATIZACIÓN DE LA INFORMACIÓN.', 'NA', 'REFORZAR INTERPRETACIÓN TEXTUAL', '../../images/preguntas/interpretacion98.png'),
(436, 4, 6, 3, 165, 'TENIENDO EN CUENTA LA SIGUIENTE IMAGEN, ELIJA EL TÍTULO ADECUADO Y SELECCIONA LA OPCIÓN QUE CONSIDERE CORRECTA. ', 'EL LOBO Y SUS TRAVESURAS.', 'NA', 'NA', 'EL NIÑO QUE QUERÍA VIVIR EN EL BOSQUE. ', 'EL REY DE LA SELVA.', 'LOS SUEÑOS DEL CUERVO. ', 'NA', 'REFORZAR COMPRENSIÓN LECTORA', '../../images/preguntas/Imagen1 grado 3.jpg'),
(437, 10, 6, 3, 141, 'UN ENSAYO ES UN TEXTO:', 'ARGUMENTATIVO.', 'NA', 'NA', 'NARRATIVO.', 'CIENTÍFICO.', 'INFORMATIVO.', 'NA', 'REFORZAR PRODUCCIÓN TEXTUAL', '../../images/preguntas/en-linea.png'),
(438, 4, 6, 3, 165, 'LEA CON ATENCIÓN EL SIGUIENTE TEXTO Y CONTESTA LA PREGUNTA: ¿CUÁL ES LA MORALEJA DE LA FÁBULA ANTERIOR? ', 'DEBEMOS SER SIEMPRE AGRADECIDOS.  ', 'NA', 'NA', 'NINGÚN ACTO DE BONDAD QUEDA SIN RECOMPENSA.', 'VALORA LO QUE TIENES Y NO LO PIERDAS. ', 'CUANDO HACES ALGO MALO NO ESPERES RECOMPENSA.', 'NA', 'REFORZAR INTERPRETACIÓN TEXTUAL', '../../images/preguntas/Presentación 2 GRADO 3.png'),
(439, 10, 6, 3, 141, 'EL OBJETIVO DE LA INTRODUCCIÓN DE UN TRABAJO ESCRITO:', 'PRESENTAR EL TEMA.', 'NA', 'NA', 'RESUMIR LOS RESULTADOS DE LOS ARGUMENTOS.', 'APOYAR LOS ARGUMENTOS DE LA TESIS.', 'EXPLICAR EL DESARROLLO ARGUMENTATIVO.', 'NA', 'REFORZAR PRODUCCIÓN TEXTUAL', '../../images/preguntas/diapositivas.png'),
(440, 4, 6, 3, 165, '¿CUÁLES SON LOS ELEMENTOS DE LA NARRACIÓN?', 'NARRADOR, PERSONAJES, LUGAR, TIEMPO, ACCIONES.', 'NA', 'NA', 'INICIO, NUDO Y DESENLACE ', 'SIGNOS DE PUNTUACIÓN ', 'DESCRIPCIÓN Y DIÁLOGOS', 'NA', 'REFORZAR INTERPRETACIÓN TEXTUAL', 'NA'),
(441, 4, 6, 3, 165, 'LA INTENCIÓN COMUNICATIVA DEL GÉNERO NARRATIVO ES:', 'RELATAR HECHOS IMAGINARIOS.', 'NA', 'NA', 'ENSEÑAR A REALIZAR UNA TAREA.', 'INFORMAR SOBRE ACONTECIMIENTOS DE LA REALIDAD.', 'CONVENCER AL LECTOR DE UNA IDEA.', 'NA', 'REFORZAR INTERPRETACIÓN TEXTUAL', 'NA'),
(442, 10, 6, 3, 141, 'LA CONCLUSIÓN EN UN TRABAJO ESCRITO EXPLICA:', 'LOS RESULTADOS Y RECOMENDACIONES DEL TRABAJO.', 'NA', 'NA', 'LA CONTEXTUALIZACIÓN DEL TEMA DEL TRABAJO.', 'EL DESARROLLO DEL TEMA DEL TRABAJO.', 'LOS ARGUMENTOS PARA DESARROLLAR EL TRABAJO.', 'NA', 'REFORZAR PRODUCCIÓN TEXTUAL', '../../images/preguntas/estudiante.png'),
(443, 4, 6, 3, 167, 'LEA LAS SIGUIENTES ORACIONES E IDENTIFICA LAS PALABRAS QUE ESTÁN SUBRAYADAS. SELECCIONA LA RESPUESTA CORRECTA. ', '1. VERBO 2. SUSTANTIVO 3. ADJETIVO ', 'NA', 'NA', '1. SUSTANTIVO  2. VERBO 3. ADJETIVO', '1. ADJETIVO  2. SUSTANTIVO 3. VERBO ', '1. ADJETIVO  2. VERBO 3. SUSTANTIVO', 'NA', 'REFORZAR PRODUCCIÓN TEXTUAL', '../../images/preguntas/ORACIONES GRADO 3 .png'),
(444, 10, 6, 3, 140, 'LA FUNDACIÓN AMA, DIJO QUE ELLOS ESTÁN IMPLEMENTANDO EL PROGRAMA CES (CAPTURAR, ESTERILIZAR Y SOLTAR), QUE CONSISTE EN LLEVAR LOS ANIMALES A UN VETERINARIO PARA QUE REALICE EL PROCEDIMIENTO Y LOS ENTREGUE EN ADOPCIÓN. TENIENDO EN CUENTA EL ENUNCIADO ANTERIOR LOS PARÉNTESIS SE UTILIZA PARA:', 'EXPLICAR UNA SIGLA.', 'NA', 'NA', 'OMITIR UNA PARTE DEL TEXTO.', 'INTRODUCIR UNA ABREVIATURA.', 'ACLARAR UNA INFORMACIÓN.', 'NA', 'REFORZAR EXPRESIÓN GRAMATICAL', '../../images/preguntas/codificacion.png'),
(445, 4, 6, 3, 166, 'LEA LA SIGUIENTE ORACIÓN E IDENTIFICA EL SUJETO Y EL PREDICADO, SELECCIONA LA OPCIÓN CORRECTA. CAROLINA PARTICIPA EN UN CONCURSO DE ORTOGRAFÍA. ', 'S= CAROLINA Y P= EN UN CONCURSO DE ORTOGRAFÍA. ', 'NA', 'NA', 'S= PARTICIPA Y P= CAROLINA ', 'S= EN UN CONCURSO DE ORTOGRAFÍA Y P= PARTICIPA', 'S = CAROLINA Y P= CONCURSO DE ORTOGRAFÍA', 'NA', 'REFORZAR EXPRESIÓN GRAMATICAL', 'NA'),
(446, 4, 6, 3, 166, 'ORDENA LA SIGUIENTE ORACIÓN Y SELECCIONA LA OPCIÓN CORRECTA.  SE FUE LA A SU CASA. NIÑA', 'LA NIÑA SE FUE A SU CASA.', 'NA', 'NA', 'SE FUE LA NIÑA A SU CASA.', 'A LA CASA SE FUE LA NIÑA.', 'LA NIÑA A SU CASA SE FUE.', 'NA', 'REFORZAR EXPRESIÓN GRAMATICAL', 'NA'),
(447, 4, 6, 4, 166, 'LEA LAS SIGUIENTES PALABRAS Y ELIJA LAS OPCIONES QUE AGRUPEN LOS SUSTANTIVOS PROPIOS Y COMUNES SEGÚN CORRESPONDA. ( GUITARRA, UNICAB, MARTILLO, TOBY,  VENTANA, RODRÍGUEZ, COLEGIO, IMELDA,  BOYACÁ)', 'SP: UNICAB, TOBY, RODRÍGUEZ, IMELDA, BOYACÁ. ', 'SC: GUITARRA, MARTILLO, VENTANA, COLEGIO.  ', 'NA', 'SP: UNICAB, COLEGIO, IMELDA, MARTILLO.  ', 'SC: TOBY, VENTANA, RODRÍGUEZ,  BOYACÁ. ', 'NA', 'NA', 'REFORZAR EXPRESIÓN GRAMATICAL', 'NA'),
(448, 10, 6, 3, 140, ' VARIOS ESTUDIOS HAN DEMOSTRADO QUE EL CEREBRO NO MUESTRA EVIDENCIA CONFIABLE DE LO QUE EN REALIDAD OCURRIÓ EN EL PASADO. ES DECIR, LO QUE RECORDAMOS ES SOLAMENTE UNA INTERPRETACIÓN PERSONAL. SEGÚN EL ENUNCIADO ANTERIOR EL CONECTOR ES DECIR CUMPLE LA FUNCIÓN DE:', 'REFORMULAR UN ARGUMENTO.', 'NA', 'NA', 'COMPARAR UN ARGUMENTO.', 'EXPLICAR UNA CAUSA.', 'EXPLICAR UNA CONSECUENCIA.', 'NA', 'REFORZAR EXPRESIÓN GRAMATICAL', '../../images/preguntas/dispositivos.png'),
(449, 10, 6, 3, 140, 'UN SINÓNIMO DE LA PALABRA OBJECIONES SEGÚN EL TEXTO ES:', 'OBSERVACIONES.', 'NA', 'NA', 'APORTACIONES.', 'RECLAMOS. ', 'REPÁROS.', 'NA', 'REFORZAR EXPRESIÓN GRAMATICAL', '../../images/preguntas/expresión91.png'),
(450, 10, 6, 3, 140, 'LAS PALABRAS SUBRAYADAS EN EL TEXTO INDICAN:', 'UNA OPOSICIÓN ENTRE DOS IDEAS.', 'NA', 'NA', 'UNA ACLARACIÓN DE UNA IDEA.', 'UNA COMPARACIÓN ENTRE DOS IDEAS.', 'UNA AMPLIACIÓN DE UNA IDEA.', 'NA', 'REFORZAR EXPRESIÓN GRAMATICAL', '../../images/preguntas/expresión92.png'),
(451, 10, 6, 3, 140, 'EN COLOMBIA TODOS QUIEREN SER JÓVENES EMPRENDEDORES: ESE MUCHACHO GRACIAS A SU ASTUCIA EN LOS NEGOCIOS HA AMASADO UNA FORTUNA TRABAJANDO EN UNA IDEA CON DEDICACIÓN Y PERSISTENCIA. TENIENDO EN CUENTA EL ENUNCIADO ANTERIOR LOS DOS PUNTOS SE UTILIZAN PARA:', 'ANTICIPAR UNA EXPLICACIÓN.', 'NA', 'NA', 'REEMPLAZAR UNA IDEA POR OTRA.', 'EXPRESAR UNA IDEA DE OPOSICIÓN.', 'EXPRESAR UNA IDEA DE CASUALIDAD.', 'NA', 'REFORZAR EXPRESIÓN GRAMATICAL', '../../images/preguntas/codigo-postal.png'),
(452, 4, 6, 3, 166, 'EN LA SIGUIENTE IMAGEN SELECCIONA TODOS LOS SUSTANTIVOS COMUNES QUE ENCUENTRES', 'NIÑOS, BALÓN, PISCINA, TOBOGÁN, SOMBRILLA.', 'NA', 'NA', 'MARÍA, MANUEL, PARQUE , SOL , ÁRBOL. ', ' ALEGRÍA, JUEGO, DIVERSIÓN, DESCANSO.', 'LUGAR, MODERNO, JARDÍN, CASAS, GRANDES.', 'NA', 'REFORZAR EXPRESIÓN GRAMATICAL', '../../images/preguntas/sustantivos 3.png'),
(453, 4, 6, 3, 166, 'SELECCIONA LA OPCIÓN QUE DESCRIBA LA PALABRA PAYASO', 'GRACIOSO, DIVERTIDO Y ALEGRE.', 'NA', 'NA', 'TRISTE, FEROZ Y AMARGADO.', 'JOVIAL, COLORIDO Y MIEDOSO.', 'JOVIAL, EXTRAÑO Y TÍMIDO.', 'NA', 'REFORZAR EXPRESIÓN GRAMATICAL', 'NA'),
(454, 4, 6, 3, 166, 'SELECCIONA LA OPCIÓN QUE TIENE SOLO ADJETIVOS', 'BLANCO, CORTO, DULCE.', 'NA', 'NA', 'CAMILA, VESTIDO, BLANCO.', 'PIJAMA, TOBY, SANDRA.', 'EL, CAMINAR, SOL.', 'NA', 'REFORZAR EXPRESIÓN GRAMATICAL', 'NA'),
(455, 4, 6, 3, 166, 'LA SIGUIENTE ORACIÓN ESTÁ MAL ESCRITA, LE FALTAN TILDES Y SIGNOS DE PUNTUACIÓN : EL LEON QUIERE CONFORMAR UN GRUPO MUSICAL. SELECCIONA LA OPCIÓN QUE CONSIDERE CORRECTA. ', 'EL LEÓN QUIERE CONFORMAR UN GRUPO MUSICAL.', 'NA', 'NA', 'EL LEON QUIERE CONFORMAR UN GRUPO MUCICAL.', 'EL LEON QUIERE CONFORMAR UN GRUPO MÚSICAL. ', 'EL LEÓN QUIERE FORMAR UN GRUPO MUSICAL.', 'NA', 'REFORZAR EXPRESIÓN GRAMATICAL', 'NA'),
(456, 4, 6, 3, 166, 'LAS SIGUIENTES PALABRAS ESTÁN MAL ESCRITAS: PERIODICO, TESTUAL, NARRASIÓN, ÁRVOL . SELECCIONA LA OPCIÓN CORRECTA', ' PERIÓDICO, NARRACIÓN, TEXTUAL ,ÁRBOL.', 'NA', 'NA', 'PERIODICO, TESTUAL, NARRACIÓN, ARVOL.', ' PERIÓDICO, TEXTUAL, NARRASIÓN, ÁRBOL.', 'PERIODICO, TESTUAL, NARRASION, ARBOL.', 'NA', 'REFORZAR EXPRESIÓN GRAMATICAL', 'NA'),
(457, 12, 10, 3, 300, 'UN  BLOQUE DE HIELO SECO, CO2 SÓLIDO, CAMBIA DEL ESTADO SÓLIDO AL GASEOSO EN CONDICIONES AMBIENTALES.  ESTE CAMBIO DE ESTADO A SU VEZ, DETERMINA UN CAMBIO EN LA DENSIDAD DEL CO2.  TENIENDO EN CUENTA LA INFORMACIÓN ANTERIOR, TRAS EL CAMBIO DE ESTADO, LA DENSIDAD DEL CO2 DISMINUYE PORQUE: ', 'LA DISTANCIA ENTRE PARTÍCULAS Y EL VOLUMEN AUMENTAN ', 'NA', 'NA', 'LA MASA DEL CO2 DISMINUYE ', 'LA DISTANCIA ENTRE PARTÍCULAS DISMINUYE ', 'LA DISTANCIA AUMENTA ENTRE PARTÍCULAS Y EL VOLUMEN DISMINUYE', 'NA', 'REFORZAR PROPIEDADES FÍSICAS Y QUÍMICAS DE LA MATERIA', '../../images/preguntas/HIELO SECO (1).jpg'),
(458, 12, 10, 3, 301, 'LA SIGUIENTE ES LA CONFIGURACIÓN ELECTRÓNICA DE UN ÁTOMO DE FLÚOR NEUTRO 1S2 2S2 2P5.  DE ACUERDO CON LA CONFIGURACIÓN ELECTRÓNICA, ES CORRECTO AFIRMAR QUE LA ESTRUCTURA DEL ÁTOMO DE FLÚOR SE COMPONE DE: ', '9 ELECTRONES', 'NA', 'NA', '5 ELECTRONES', '7 ELECTRONES', '14 ELECTRONES', 'NA', 'REFORZAR CONFIGURACIÓN ELECTRÓNICA', '../../images/preguntas/toothbrush-571741_1920.jpg'),
(459, 12, 10, 3, 300, 'LEE ATENTAMENTE LA INFORMACIÓN DE LA FIGURA ADJUNTA Y SEÑALA CUÁL ES LA RESPUESTA CORRECTA: ', 'LA RESPUESTA CORRECTA ES A)', 'NA', 'NA', 'LA RESPUESTA CORRECTA ES B)', 'LA RESPUESTA CORRECTA ES C)', 'LA RESPUESTA CORRECTA ES D)', 'NA', 'REFORZAR PROPIEDADES FÍSICAS Y QUÍMICAS DE LA MATERIA', '../../images/preguntas/TEXTO PREGUNTA 1def.png'),
(460, 12, 10, 3, 300, 'LEE ATENTAMENTE LA INFORMACIÓN QUE APARECE EN LA FIGURA Y DECIDE CUÁL ES LA RESPUESTA CORRECTA:', 'LA RESPUESTA CORRECTA ES LA D)', 'NA', 'NA', 'LA RESPUESTA CORRECTA ES LA A)', 'LA RESPUESTA CORRECTA ES LA B)', 'LA RESPUESTA CORRECTA ES LA C)', 'NA', 'REFORZAR PROPIEDADES FÍSICAS Y QUÍMICAS DE LA MATERIA', '../../images/preguntas/TEXTO PREGUNTA 6def.png'),
(461, 12, 10, 3, 302, 'LEE CON ATENCIÓN LA INFORMACIÓN DE LA FIGURA Y DECIDE LA RESPUESTA CORRECTA: ', 'LA RESPUESTA CORRECTA ES LA A)', 'NA', 'NA', 'LA RESPUESTA CORRECTA ES LA B)', 'LA RESPUESTA CORRECTA ES LA C)', 'LA RESPUESTA CORRECTA ES LA D)', 'NA', 'REFORZAR CINÉTICA DE LOS GASES', '../../images/preguntas/TEXTO PREGUNTA 7 def.png'),
(462, 12, 10, 3, 303, 'LEE ATENTAMENTE LA INFORMACIÓN DE LA FIGURA ADJUNTA Y DECIDE CUÁL ES LA RESPUESTA CORRECTA: ', 'LA RESPUESTA CORRECTA ES LA D)', 'NA', 'NA', 'LA RESPUESTA CORRECTA ES LA A)', 'LA RESPUESTA CORRECTA ES LA B)', 'LA RESPUESTA CORRECTA ES LA C)', 'NA', 'REFORZAR CINÉTICA DE LAS SOLUCIONES QUÍMICAS', '../../images/preguntas/TEXTO PREGUNTA 8 def.png'),
(463, 12, 10, 3, 304, 'LEE ATENTAMENTE LA INFORMACIÓN QUE APARECE EN LA FIGURA Y LUEGO DECIDE CUÁL ES LA RESPUESTA CORRECTA: ', 'LA RESPUESTA CORRECTA ES LA C)', 'NA', 'NA', 'LA RESPUESTA CORRECTA ES LA A)', 'LA RESPUESTA CORRECTA ES LA B)', 'LA RESPUESTA CORRECTA ES LA D)', 'NA', 'REFORZAR ESCALAS DE TEMPERATURA', '../../images/preguntas/TEXTO PREGUNTA 9 def.png'),
(464, 3, 6, 3, 157, 'TENIENDO EN CUENTA LA SIGUIENTE IMAGEN, SELECCIONA LA ORACIÓN QUE CONSIDERE CORRECTA', ' MI FAMILIA ESTÁ FELIZ DE IR AL CAMPO.', 'NA', 'NA', ' MI HERMANA TIENE UNA BICICLETA NUEVA.', 'MIS TÍOS VISITARON COLOMBIA.', 'MI FAMILIA SE REUNE EN NAVIDAD.', 'NA', 'REFORZAR EXPRESIÓN GRAMATICAL', '../../images/preguntas/IMAGEN 2.png'),
(465, 3, 6, 3, 157, 'ORDENA LAS SIGUIENTES PALABRAS Y FORMA UNA ORACIÓN : CARLOS, MI, MEDELLÍN, ES DE, AMIGO. SELECCIONA ORACIÓN CORRECTA :', 'MI AMIGO CARLOS ES DE MEDELLÍN.', 'NA', 'NA', ' DE MEDELLÍN ES MI AMIGO CARLOS.', ' ES DE MEDELLÍN CARLOS MI AMIGO.', 'CARLOS ES DE MEDELLÍN MI AMIGO.', 'NA', 'REFORZAR EXPRESIÓN GRAMATICAL', 'NA'),
(466, 3, 6, 3, 157, 'SEPARA LAS SIGUIENTES PALABRAS Y FORMA UNA ORACIÓN: LASRANASVIVENCERCADELAGUA. ELIGE LA OPCIÓN CORRECTA:', 'LAS RANAS VIVEN CERCA DEL AGUA.', 'NA', 'NA', 'CERCA DEL AGUA VIVEN LAS RANAS.', 'LAS RANAS VIVEN EN EL AGUA.', 'SE PUEDEN VER LAS RANAS CERCA DEL AGUA.', 'NA', 'REFORZAR EXPRESIÓN GRAMATICAL', 'NA'),
(467, 3, 6, 3, 157, 'LEA LA SIGUIENTE ORACIÓN E IDENTIFICA LOS SUSTANTIVOS PROPIOS Y COMUNES: EL GATO MICHÍN SE COMIÓ UN PEQUEÑO RATÓN. ELIJA LA OPCIÓN CORRECTA:', 'SUSTANTIVO PROPIO= MICHÍN, SUSTANTIVO COMÚN = GATO Y RATÓN.', 'NA', 'NA', 'SUSTANTIVO PROPIO = GATO, SUSTANTIVO COMÚN = RATÓN Y MICHÍN.', 'SUSTANTIVO PROPIO= MICHÍN Y RATÓN, SUSTANTIVO COMÚN = GATO.', 'SUSTANTIVO PROPIO= RATÓN Y  GATO, SUSTANTIVO COMÚN= MICHÍN.', 'NA', 'REFORZAR EXPRESIÓN GRAMATICAL', 'NA'),
(468, 3, 6, 3, 157, '  LEA CADA SUSTANTIVO COMÚN Y ELIJA LA OPCIÓN QUE CONSIDERE SE ENCUENTRAN LOS SUSTANTIVOS PROPIOS.  SUSTANTIVOS COMUNES: AMIGO, BARRIO, PROFESORA, CIUDAD.   ', 'FELIPE, MAGDALENA, ALEJANDRA, SOGAMOSO.', 'NA', 'NA', 'ALEGRE, LIMPIO, AMABLE, GRANDE.', 'TRABAJO, CONVIVENCIA, COLEGIO, PROGRESO.', 'AMISTAD, LUGAR, APRENDIZAJE, VISITA.', 'NA', 'REFORZAR EXPRESIÓN GRAMATICAL', 'NA'),
(469, 3, 6, 3, 158, '¿QUÉ ES DESCRIPCIÓN?', 'DESCRIBIR RASGOS DE UNA PERSONA, LUGAR U OBJETO. ', 'NA', 'NA', 'RELATO EN EL QUE SE CUENTA ALGO. ', 'ESTRUCTURA FORMADA POR SUJETO Y PREDICADO.', 'PALABRA QUE SE EMPLEA PARA NOMBRAR COSAS.', 'NA', 'REFORZAR INTERPRETACIÓN TEXTUAL', 'NA'),
(470, 3, 6, 3, 156, 'TENIENDO EN CUENTA LA SIGUIENTE IMAGEN ELIJA LA OPCIÓN QUE DESCRIBE LA GALLINA.', 'ES UN AVE, PICO CORTO, ALAS CORTAS, PLUMAS.', 'NA', 'NA', 'CANINO, CUADRÚPEDO, SE ALIMENTA DE PURINA.', 'ACUÁTICO, TIENEN ALETAS PARA DESPLAZARSE.', 'ROEDOR, PELO GRIS, HERBÍVORO.  ', 'NA', 'REFORZAR PRODUCCIÓN TEXTUAL', '../../images/preguntas/Imagen 2,2.png'),
(471, 3, 6, 3, 157, 'TENIENDO EN CUENTA LA IMAGEN IDENTIFICA LAS ACCIONES QUE ESTÁN REALIZANDO Y ELIJA LA OPCIÓN CORRECTA.', 'LEER, SALTAR, PRACTICAR.', 'NA', 'NA', 'BAILAR, REIR, JUGAR.', 'ESTUDIAR, CORRER, CAMINAR.', 'COMER, CANTAR, BEBER.', 'NA', 'REFORZAR EXPRESIÓN GRAMATICAL', '../../images/preguntas/Imagen2 verbos.png'),
(472, 3, 6, 3, 157, ' LEA LAS SIGUIENTES ORACIONES E IDENTIFICA LOS VERBOS QUE APARECEN Y ELIJA LA OPCIÓN CORRECTA.YO COMO HELADO EN EL PARQUE MARIANA JUEGA EN EL PARQUE CON SUS AMIGOS. ANDRÉS VE TELEVISIÓN HASTA LAS OCHO.   ', 'COMER, JUGAR, VER.', 'NA', 'NA', 'HELADO, AMIGOS, TELEVISIÓN.', 'PARQUE, MARIANA, OCHO.', 'YO, SUS, HASTA.', 'NA', 'REFORZAR EXPRESIÓN GRAMATICAL', 'NA'),
(473, 3, 6, 3, 158, 'LEA EL ENUNCIADO Y ELIJA LA OPCIÓN CORRECTA, EN LA SITUACIÓN INICIAL DE UNA NARRACIÓN:', 'SE DICE CUANDO Y COMO SUCEDEN LOS HECHOS.', 'NA', 'NA', 'SE PRESENTA UN PROBLEMA A LOS PERSONAJES.', 'SE DICE EN DONDE VIVEN LOS PERSONAJES.', 'SE DICE CÓMO TERMINA LA HISTORIA.', 'NA', 'REFORZAR INTERPRETACIÓN TEXTUAL', 'NA'),
(474, 3, 6, 4, 158, 'RELACIONA ESTOS CONCEPTOS DE LA NARRACIÓN CON SU SIGNIFICADO: TIEMPO Y LUGAR . SELECCIONA LAS OPCIONES CORRECTAS:', 'ES EL MOMENTO EN QUE SUCEDEN LOS HECHOS.', 'ES EL SITIO DONDE SUCEDEN LOS HECHOS. ', 'NA', 'PERMITE ORDENAR LOS HECHOS EN SECUENCIA.  ', 'ESPACIO QUE OCUPA UN OBJETO. ', 'NA', 'NA', 'REFORZAR INTERPRETACIÓN TEXTUAL', 'NA'),
(475, 3, 6, 4, 157, ' ASIGNA A LAS SIGUIENTES PALABRAS LOS ARTÍCULOS CORRESPONDIENTES: GALLINAS, PERRO, MARIPOSA, PAYASOS. \rSELECCIONA LAS RESPUESTAS CORRECTAS: ', 'LAS, EL, LA, LOS. ', 'UNAS, UN, UNA, UNOS. ', 'NA', 'LA, LOS, EL, LAS. ', 'EL, LAS, LOS, UNAS. ', 'NA', 'NA', 'REFORZAR EXPRESIÓN GRAMATICAL', 'NA'),
(476, 3, 6, 3, 157, '¿QUÉ ES UN ARTÍCULO? \r', 'ES LA PALABRA QUE ACOMPAÑA AL SUSTANTIVO ', 'NA', 'NA', 'LA PALABRA QUE EXPRESA UNA ACCIÓN ', ' ES LA PALABRA QUE IDENTIFICA UN NOMBRE ', 'ES LA PALABRA QUE EXPRESA UNA CUALIDAD  ', 'NA', 'REFORZAR EXPRESIÓN GRAMATICAL', 'NA'),
(477, 3, 6, 3, 156, 'REEMPLAZA LA PALABRA * VELOCES*  POR UNA DE LAS SIGUIENTES OPCIONES SIN CAMBIAR EL SENTIDO DE LA ORACIÓN,* LOS RATONES SON MUY VELOCES * : \r', 'RÁPIDOS', 'NA', 'NA', 'LENTOS', 'ACTIVOS ', 'JUGUETONES ', 'NA', 'REFORZAR PRODUCCIÓN TEXTUAL', 'NA'),
(478, 3, 6, 3, 156, 'LEE LA SIGUIENTE ORACIÓN Y REEMPLAZA LA PALABRA /BRILLANTE/ POR UNA OPCIÓN QUE CAMBIE EL SENTIDO DE LA ORACIÓN , *EL ORO ES UN METAL BRILLANTE*  VS    *EL HIERRO ES UN METAL....* :  ', 'OPACO', 'NA', 'NA', 'RESPLANDECIENTE  ', 'RELUCIENTE ', 'LUMINOSO', 'NA', 'REFORZAR PRODUCCIÓN TEXTUAL', 'NA'),
(479, 3, 6, 3, 158, 'LEE CON MUCHA ATENCIÓN EL SIGUIENTE TEXTO  Y DESPUÉS CONTESTA LA PREGUNTA, ¿CÓMO SE LLAMAN LAS CRÍAS DE LAS RANAS? ', 'RENACUAJO ', 'NA', 'NA', 'RANITAS ', 'SAPITOS', 'ANFIBIO', 'NA', 'REFORZAR INTERPRETACIÓN TEXTUAL', '../../images/preguntas/COMPRENSIÓN GRADO 2.png'),
(480, 3, 6, 3, 158, ' LEA EL SIGUIENTE TEXTO, ELIJA LA OPCIÓN CORRECTA. LAS RANAS NACEN DE UN HUEVO, POR ESO SE LLAMAN ANIMALES:', 'OVÍPAROS ', 'NA', 'NA', 'VERTEBRADOS', 'MAMÍFEROS', 'VIVÍPAROS          ', 'NA', 'REFORZAR INTERPRETACIÓN TEXTUAL', '../../images/preguntas/grado 2 lectura 2.png'),
(481, 3, 6, 3, 158, 'LUIS Y SU PAPÁ FUERON DE PESCA, PERO COMO EL RÍO ESTABA MUY CONTAMINADO, SOLO SACARON BASURA. OBSERVA LO QUE PESCARON Y SELECCIONA LA OPCIÓN CORRECTA.', 'BOTELLA, TENEDOR Y BOLSA PLÁSTICA ', 'NA', 'NA', 'DESECHABLE, MADERA Y PLÁSTICO', 'PAPEL, LATA, RED DE PESCA', 'COLILLAS, APLICADORES, ENVASES. ', 'NA', 'REFORZAR INTERPRETACIÓN TEXTUAL', '../../images/preguntas/Imagen 4 GRADO 2.png'),
(482, 3, 6, 3, 158, '¿QUÉ ES COMUNICACIÓN VERBAL?', 'SE DA A TRAVÉS DE LA PALABRA HABLADA O ESCRITA.', 'NA', 'NA', 'SE DA A TRAVÉS DE GESTOS, MÍMICAS, SEÑALES. ', 'ES UN PROCESO QUE CONSISTE EN TRANSMITIR IDEAS.', 'SISTEMA DE SIGNOS DE COMUNICACIÓN.  ', 'NA', 'REFORZAR INTERPRETACIÓN TEXTUAL', 'NA'),
(483, 3, 6, 3, 157, 'A CONTINUACIÓN SE PRESENTA DIFERENTES FORMAS DE COMUNICACIÓN : CARTAS, SEÑALES, GESTOS, AUDIOS, EXPRESIONES CORPORALES. ELIJA LOS EJEMPLOS DE COMUNICACIÓN NO VERBAL.', 'SEÑALES, GESTOS, EXPRESIÓN CORPORAL .', 'NA', 'NA', ' CARTAS, GESTOS. ', 'AUDIOS, SEÑALES DE HUMO.', 'CARTAS, AUDIOS. ', 'NA', 'REFORZAR EXPRESIÓN GRAMATICAL', 'NA'),
(484, 2, 6, 3, 148, '1. SELECCIONA LA OPCIÓN CORRECTA SEGÚN EL CUADRO. ¿CUÁLES SON LAS VOCALES? ', 'A. A, E, I, O, U', 'NA', 'NA', 'B. B, J, H, M', 'C. P, A, T, H', 'D. E, M, C, V ', 'NA', 'REFORZAR VOCALES', '../../images/preguntas/Imagen1 grado 1 periodo 1.png'),
(485, 2, 6, 3, 148, '2. TENIENDO EN CUENTA LAS SIGUIENTES IMAGENES, ELIJA LA OPCIÓN CORRECTA ¿CUALES SON LAS IMAGENES QUE COMIENZAN POR EL MISMO SONIDO?', 'A. OSO-OVEJA', 'NA', 'NA', 'B. OVEJA-TIGRE', 'C. OSO-CABALLO', 'D. NINGUNAS DE LAS ANTERIORES', 'NA', 'REFORZAR VOCALES', '../../images/preguntas/GRADO1,2.png'),
(486, 2, 6, 3, 148, '3. TENIENDO EN CUENTA LAS SIGUIENTES IMAGENES, ORDENA LAS PALABRAS Y ELIJA LA OPCIÓN CORRECTA. ', 'A. OLLA-ARAÑA-ENANO-UNIVERSO-IGUANA', 'NA', 'NA', 'B. ARAÑA-ENANO-IGUANA-OLLA-UNIVERSO', 'C. OLLA-ARAÑA-ENANO-IGUANA-UNIVERSO', 'D. ENANO-IGUANA-UNIVERSO-OLLA-ARAÑA', 'NA', 'REFORZAR VOCALES', '../../images/preguntas/imagen 2 grado1 .png'),
(487, 2, 6, 3, 149, '4. LEA  LAS SIGUIENTES OPCIONES DE PALABRAS Y ELIJA LAS QUE ESTAN BIEN ESCRITAS.', 'A. MARIO - MAR  / BOGOTÁ - BURRO ', 'NA', 'NA', 'B. MARIO - MARR / BOGOTA – BURO ', 'C. MARRIO - MAR / VOGOTA - BURRO ', 'D. MARIO - MAR / BOJÓTA - VURRO ', 'NA', 'REFORZAR CONSONANTE (MAYÚSCULAS Y MINÚSCULAS)', 'NA'),
(488, 2, 6, 3, 1, '5. ELIJA LA ORACIÓN CORRECTA SEGÚN LA IMAGEN ', 'A. EL LORO COME PERAS.', 'NA', 'NA', 'B. EL PÁJARO COME MANZANA. ', 'C. EL PAPAGUAYO COME LIMÓN. ', 'D. EL AVE COME SEMILLAS.', 'NA', 'REFORZAR ORACIONES', '../../images/preguntas/imagen 2 grado1.png'),
(489, 2, 6, 3, 151, '6. SELECCIONA LA RESPUESTA CORRECTA SEGÚN EL ORDEN DE LOS DIBUJOS', 'A. CHIVO,LECHE, CERDO, ZAPATOS ', 'NA', 'NA', 'B. LECHE, CUCHARA, CHINCHE, COCHE', 'C. ZAPATOS,CERDO, CHINCHE, CHIVO', 'D. NINGUNA DE LAS ANTERIORES ', 'NA', 'REFORZAR RELACIÓN PALABRA DIBUJO', '../../images/preguntas/Imagen 3 grado 1.png'),
(490, 2, 6, 3, 152, '7. LEA EL SIGUIENTE TEXTO Y CONTESTA LA OPCIÓN CORRECTA    CAMILA ACUDE A LA ESCUELA TODOS LOS DÍAS CAMINANDO POR EL CAMPO CON SU MALETA Y UNA COMETA, SALE CONTENTA DE SU     CASA. ¿A DÓNDE VA CAMILA?   ', 'A. A LA ESCUELA ', 'NA', 'NA', 'B. A CASA DE SU TÍA ', 'C. AL CAMPO ', 'D. AL PARQUE ', 'NA', 'REFORZAR COMPRESIÓN LECTORA', 'NA'),
(491, 2, 6, 3, 153, '8. LA SIGUIENTE ORACIÓN ESTA INCOMPLETA, RELACIONA LA PALABRA Y COMPLETA LA ORACIÓN, SELECCIONA LA RESPUESTA CORRECTA  MI TIO LE DUELE UN  ', 'A. DIENTE ', 'NA', 'NA', 'B. MANO ', 'C. CABEZA ', 'D. CABELLO ', 'NA', 'REFORZAR ORACIONES', 'NA'),
(492, 2, 6, 3, 152, '9. LEA EL SIGUIENTE TEXTO  Y SELECCIONA LA OPCIÓN CORRECTA. \rLAS BOTAS DE BERE                                  \rBERE TIENEN UNAS BOTAS BONITAS DE COLOR ROSADO. SU ABUELO SE LAS DIO EN NAVIDAD. BERE USA SUS BOTAS PARA BAILAR, SALTAR Y  PATEAR EL BALÓN, PARA BERE SUS BOTAS SON CÓMODAS LE ENCANTAN. \r¿QUÉ LE DIERON A BERE?', 'A. BOTAS ', 'NA', 'NA', 'B. ZAPATOS ', 'C. TENIS ', 'D. ZAPATILLAS ', 'NA', 'REFORZAR COMPRESIÓN LECTORA', 'NA'),
(493, 10, 7, 3, 88, 'OBSERVA LA IMAGEN Y RESPONDE: ¿QUÉ FOTO CORRESPONDE A LA DESCRIPCIÓN A? DESCRIPTION A: WE ARE CERTAIN IT IS A GOOD PRACTICE TO RESTORE THE FOREST SO WE PLANTED TREES AROUND THE SCHOOL. ', 'PHOTO 2 MATCHES DESCRIPTION A', 'NA', 'NA', 'PHOTO 1 MATCHES DESCRIPTION A  ', 'PHOTO 3 MATCHES DESCRIPTION A', 'DESCRIPTION A MATCHES PHOTO 4', 'NA', 'REFORZAR EXPRESIONES PARA OPINAR Y DAR RAZONES', '../../images/preguntas/493,.jpg'),
(494, 10, 7, 3, 88, 'OBSERVA LA IMAGEN Y RESPONDE: ¿QUÉ FOTO CORRESPONDE A LA DESCRIPCIÓN B? DESCRIPTION B: WE STRONGLY BELIEVE IT IS NECESSARY TO KNOW ALL THE BENEFITS WE RECEIVE FROM OUR PLANET. SO, WE ORGANIZED A TALK WITH EXPERTS AND PEOPLE FROM THE COMMUNITY.', 'PHOTO 3 MATCHES DESCRIPTION B', 'NA', 'NA', 'DESCRIPTION B MATCHES PHOTO 2', 'PHOTO 1 MATCHES DESCRIPTION B', 'PHOTO 4 MATCHES DESCRIPTION B', 'NA', 'REFORZAR EXPRESIONES PARA OPINAR Y DAR RAZONES', '../../images/preguntas/494finall.jpg'),
(495, 10, 7, 3, 88, 'OBSERVA LA IMAGEN Y RESPONDE: ¿QUÉ FOTO CORRESPONDE A LA DESCRIPCIÓN C? DESCRIPTION C: WE ARE SURE THAT DRAMA IS A WONDERFUL WAY TO SHOW OUR CONCERN ABOUT FORESTS. SO, WE PRESENTED A PERFORMANCE RELATED TO THE ROLE OF TREES IN OUR LIVES.', 'PHOTO 1 MATCHES DESCRIPTION C ', 'NA', 'NA', 'PHOTO 4 MATCHES DESCRIPTION C ', 'PHOTO 2 MATCHES DESCRIPTION C ', 'DESCRIPTION C MATCHES PHOTO 3', 'NA', 'REFORZAR EXPRESIONES PARA OPINAR Y DAR RAZONES', '../../images/preguntas/495.,.jpg'),
(496, 10, 7, 4, 88, 'DE LAS EXPRESIONES QUE ESTÁN EN LA IMAGEN ESCOGE CUÁLES SE UTILIZAN PARA EXPRESAR OPINIÓN EN INGLÉS. SELECT TWO (2) OPTIONS:', 'B', 'D', 'NA', 'A', 'C', 'NA', 'NA', 'REFORZAR EXPRESIONES PARA OPINAR Y DAR RAZONES', '../../images/preguntas/496,.jpg'),
(497, 10, 7, 3, 89, 'ELIGE LA MEJOR OPCIÓN PARA RESPONDER LA SIGUIENTE PREGUNTA: WHAT ABOUT GOING TO THE CINEMA TOMORROW AT 4 P.M? ', 'SOUNDS GOOD!', 'NA', 'NA', 'TRY AGAIN.', 'I ENJOY PLAYING THE GUITAR.', 'LOOK NOW.', 'NA', 'REFORZAR FORMULAR Y RESPONDER PREGUNTAS SOBRE UN TEMA', '../../images/preguntas/497-.jpg'),
(498, 10, 7, 3, 89, 'ELIGE LA PREGUNTA MÁS ADECUADA TENIENDO EN CUENTA LA SIGUIENTE RESPUESTA. ANSWER: I SOMETIMES WATCH TV. ', 'HOW OFTEN DO YOU WATCH TV?', 'NA', 'NA', 'HAVE YOU WATCHED TV?', 'DO YOU LIKE WATCHING TV?', 'HAVE YOU BEEN WATCHING TV?', 'NA', 'REFORZAR FORMULAR Y RESPONDER PREGUNTAS SOBRE UN TEMA', '../../images/preguntas/497-a.jpg'),
(499, 10, 7, 3, 89, 'ELIGE LA PREGUNTA MÁS ADECUADA TENIENDO EN CUENTA LA SIGUIENTE RESPUESTA. ANSWER: YOU SHOULD GO TO THE DOCTOR. ', 'I DO NOT FEEL WELL. WHAT SHOULD I DO?', 'NA', 'NA', 'HOW ARE YOU?', 'SHOULD I WASH MY HANDS BEFORE EATING?', 'HOW OFTEN DO YOU GO TO THE DOCTOR?', 'NA', 'REFORZAR FORMULAR Y RESPONDER PREGUNTAS SOBRE UN TEMA', '../../images/preguntas/497-b.jpg'),
(500, 10, 7, 3, 89, 'ELIGE LA PREGUNTA MÁS ADECUADA TENIENDO EN CUENTA LA SIGUIENTE RESPUESTA. ANSWER: YES, IT IS. IT PROVIDES PROTEIN AND FIBRE. ', 'IS QUINOA NUTRITIOUS?', 'NA', 'NA', 'DO YOU LIKE QUINOA?', 'IS QUINOA FROM THE GRAINS GROUP?', 'DID YOU BUY QUINOA?', 'NA', 'REFORZAR FORMULAR Y RESPONDER PREGUNTAS SOBRE UN TEMA', '../../images/preguntas/497-c.jpg'),
(501, 10, 7, 3, 89, 'ELIGE LA PREGUNTA MÁS ADECUADA TENIENDO EN CUENTA LA SIGUIENTE RESPUESTA. ANSWER: YOU WILL FEEL MORE CONFIDENT AND PREPARED. ', 'WHAT HAPPENS IF YOU HAVE POSITIVE THOUGHTS?', 'NA', 'NA', 'WHAT SHOULD YOU DO TO BE HEALTHY?', 'HOW OFTEN SHOULD YOU HAVE POSITIVE THOUGHTS?', 'ARE YOU READY?', 'NA', 'REFORZAR FORMULAR Y RESPONDER PREGUNTAS SOBRE UN TEMA', '../../images/preguntas/497-d.jpg'),
(502, 10, 7, 3, 90, 'OBSERVA EL TEXTO DE LA IMAGEN Y ESCOGE LA OPCIÓN QUE MEJOR COMPLETA LA ORACIÓN. A, B, C, O D. I WOULD LIKE TO PUT FORWARD A PROPOSAL...', 'D.', 'NA', 'NA', 'A.', 'B.', 'C.', 'NA', 'REFORZAR EXPRESIONES PARA PROPONER O MOSTRAR UNA SOLUCIÓN', '../../images/preguntas/502..jpg'),
(503, 10, 7, 3, 90, 'OBSERVA EL TEXTO DE LA IMAGEN Y ESCOGE LA OPCIÓN QUE MEJOR COMPLETA LA ORACIÓN. A, B, C, O D. YOU SHOULD TRAIN MORE...', 'B.', 'NA', 'NA', 'A.', 'C.', 'D.', 'NA', 'REFORZAR EXPRESIONES PARA PROPONER O MOSTRAR UNA SOLUCIÓN', '../../images/preguntas/503..jpg'),
(504, 10, 7, 3, 90, 'OBSERVA EL TEXTO DE LA IMAGEN Y ESCOGE LA OPCIÓN QUE MEJOR COMPLETA LA ORACIÓN. A, B, C, O D. WE MUST LET GO OF THE LIFE WE HAVE PLANNED, ...', 'C.', 'NA', 'NA', 'A.', 'B.', 'D.', 'NA', 'REFORZAR EXPRESIONES PARA PROPONER O MOSTRAR UNA SOLUCIÓN', '../../images/preguntas/504..jpg'),
(505, 10, 7, 3, 90, 'OBSERVA EL TEXTO DE LA IMAGEN Y ESCOGE LA OPCIÓN QUE MEJOR COMPLETA LA ORACIÓN. A, B, C, O D. I MADE A PROPOSAL FOR OPENING AN OFFICE IN SEOUL, ...', 'A.', 'NA', 'NA', 'B.', 'C.', 'D.', 'NA', 'REFORZAR EXPRESIONES PARA PROPONER O MOSTRAR UNA SOLUCIÓN', '../../images/preguntas/505..jpg'),
(506, 10, 7, 3, 91, 'LEE EL CORREO QUE ESTÁ DENTRO DE LA IMAGEN Y RESPONDE LA SIGUIENTE PREGUNTA: WHAT WILL JUAN BE DOING TEN YEARS FROM NOW?', 'HE WILL BE STUDYING AT A BIG UNIVERSITY.', 'NA', 'NA', 'HE WILL BE BUYING A BIG HOUSE CLOSE TO THE BEACH.', 'HE WILL BE TRAVELING AROUND THE WORLD.', 'HE WILL BE WORKING IN A FOREIGN COUNTRY. ', 'NA', 'REFORZAR EXPRESAR SUEÑOS O PLANES FUTUROS', '../../images/preguntas/question 144.jpg'),
(507, 10, 7, 3, 91, 'LEE EL CORREO QUE ESTÁ DENTRO DE LA IMAGEN Y RESPONDE LA SIGUIENTE PREGUNTA: WHAT WILL ROSE BE DOING THIRTY YEARS FROM NOW?', 'C.', 'NA', 'NA', 'A.', 'B.', 'D.', 'NA', 'REFORZAR EXPRESAR SUEÑOS O PLANES FUTUROS', '../../images/preguntas/5077.jpg'),
(508, 9, 6, 3, 136, 'LEE CON ATENCIÓN EL TEXTO DE LA IMAGEN Y SELECCIONA LAS ORACIONES QUE MENCIONAN DOS HECHOS SOBRE EL PERSONAJE:', '2  Y  3.', 'NA', 'NA', '4  Y  5.', '1  Y  2.', '3  Y  4.', 'NA', 'REFORZAR INTERPRETACIÓN TEXTUAL', '../../images/preguntas/Captura de pantalla (1788).png'),
(509, 9, 6, 3, 136, 'SELECCIONA LA ORACIÓN QUE EXPRESA UNA ADMIRACIÓN POR LA HABILIDAD DEL PERSONAJE: ', '4', 'NA', 'NA', '1', '2', '5', 'NA', 'REFORZAR INTERPRETACIÓN TEXTUAL', '../../images/preguntas/interpre7.png'),
(510, 10, 7, 3, 92, 'ESCOGE LA OPCIÓN CORRECTA, TENIENDO EN CUENTA LA SIGUIENTE PREGUNTA: WHICH ACTION IS AN EXAMPLE OF REUSING?', 'DONATING OLD BOOKS TO A LIBRARY', 'NA', 'NA', 'SORTING WASTE INTO DIFFERENT CATEGORIES', 'CATCHING THE BUS TO SCHOOL', 'COMPOSTING ORGANIC WASTE', 'NA', 'REFORZAR VOCABULARIO RELACIONADO CON FENÓMENOS SOCIALES', '../../images/preguntas/510,.jpg'),
(511, 10, 7, 3, 92, 'ESCOGE LA OPCIÓN CORRECTA, TENIENDO EN CUENTA LA SIGUIENTE PREGUNTA: WHICH IS NOT AN ECO-FRIENDLY ACTION?', 'THROWING BATTERIES IN THE RUBBISH BIN', 'NA', 'NA', 'TURNING OFF LIGHTS', 'RIDING A BICYCLE TO SCHOOL', 'GROWING YOUR OWN FOOD', 'NA', 'REFORZAR VOCABULARIO RELACIONADO CON FENÓMENOS SOCIALES', '../../images/preguntas/511,.jpg'),
(512, 9, 6, 3, 136, 'EN EL  FRAGMENTO ANTERIOR  LA EXPRESIÓN: ESCANDALOSOS CREPÚSCULOS SE REFIERE A:', 'LO BELLO SE ASUME DESDE LO BELLO.', 'NA', 'NA', 'LA PLEGARIA TIENE FINES HUMORÍSTICOS.', 'CONFLICTO CON LA TRADICIÓN.', 'CONFLICTO CON LA ACTUALIDAD URBANA.', 'NA', 'REFORZAR INTERPRETACIÓN TEXTUAL', '../../images/preguntas/Captura de pantalla (1812).png'),
(513, 10, 7, 3, 92, 'ESCOGE LA OPCIÓN CORRECTA, TENIENDO EN CUENTA LA SIGUIENTE PREGUNTA: WHICH IS AN EXAMPLE OF RECYCLING?', 'MAKING PLANT BOXES FROM PLASTIC BOTTLES', 'NA', 'NA', 'SORTING WASTE INTO DIFFERENT CATEGORIES', 'GIVING OLD COMPUTERS TO A CHARITY', 'RIDING A BICYCLE TO SCHOOL', 'NA', 'REFORZAR VOCABULARIO RELACIONADO CON FENÓMENOS SOCIALES', '../../images/preguntas/513,.jpg'),
(514, 10, 7, 3, 92, 'ESCOGE LA OPCIÓN CORRECTA, TENIENDO EN CUENTA LA SIGUIENTE PREGUNTA: WHICH IS NOT ONE OF THE ‘THREE RS’? ', 'REARRANGE', 'NA', 'NA', 'RECYCLE', 'REDUCE', 'REUSE', 'NA', 'REFORZAR VOCABULARIO RELACIONADO CON FENÓMENOS SOCIALES', '../../images/preguntas/514,.jpg'),
(515, 10, 7, 3, 92, 'ESCOGE LA OPCIÓN CORRECTA, TENIENDO EN CUENTA LA SIGUIENTE PREGUNTA: HOW CAN YOU REDUCE YOUR ENERGY CONSUMPTION?', 'BY TURNING OFF APPLIANCES', 'NA', 'NA', 'BY TURNING OFF THE TAP', 'BY RECYCLING PLASTIC BOTTLES', 'BY COMPOSTING ORGANIC WASTE', 'NA', 'REFORZAR VOCABULARIO RELACIONADO CON FENÓMENOS SOCIALES', '../../images/preguntas/515,.jpg'),
(516, 10, 7, 3, 92, 'ESCOGE LA OPCIÓN CORRECTA, TENIENDO EN CUENTA LA SIGUIENTE PREGUNTA: WHAT IS AN ECO-FOOTPRINT?', 'IT MEASURES OUR IMPACT ON THE ENVIRONMENT', 'NA', 'NA', 'IT MEASURES OUR IMPACT ON SOCIETY', 'IT MEASURES HOW MUCH WE RECYCLE', 'IT MEASURES HOW MUCH WE BUY', 'NA', 'REFORZAR VOCABULARIO RELACIONADO CON FENÓMENOS SOCIALES', '../../images/preguntas/516.jpg'),
(517, 10, 7, 3, 93, 'OBSERVA EL TEXTO DE LA IMAGEN Y COMPLETA LA ORACIÓN CON LA EXPRESIÓN IDIOMÁTICA (PHRASAL VERB) QUE CORRESPONDA:', 'CHECK IN', 'NA', 'NA', 'WAKE UP', 'TURN ON', 'GIVE UP', 'NA', 'REFORZAR EXPRESIONES IDIOMÁTICAS', '../../images/preguntas/517,.jpg'),
(518, 10, 7, 3, 93, 'OBSERVA EL TEXTO DE LA IMAGEN Y COMPLETA LA ORACIÓN CON LA EXPRESIÓN IDIOMÁTICA (PHRASAL VERB) QUE CORRESPONDA:', 'GAVE UP', 'NA', 'NA', 'WOKE UP', 'TURNED ON', 'CHECKED IN', 'NA', 'REFORZAR EXPRESIONES IDIOMÁTICAS', '../../images/preguntas/518,.jpg'),
(519, 10, 7, 3, 93, 'OBSERVA EL TEXTO DE LA IMAGEN Y COMPLETA LA ORACIÓN CON LA EXPRESIÓN IDIOMÁTICA (PHRASAL VERB) QUE CORRESPONDA:', 'TURNED ON', 'NA', 'NA', 'WOKE UP', 'CHECKED IN', 'GAVE UP', 'NA', 'REFORZAR EXPRESIONES IDIOMÁTICAS', '../../images/preguntas/519,.jpg'),
(520, 10, 7, 3, 93, 'OBSERVA EL TEXTO DE LA IMAGEN Y COMPLETA LA ORACIÓN CON LA EXPRESIÓN IDIOMÁTICA (PHRASAL VERB) QUE CORRESPONDA:', 'WAKE UP', 'NA', 'NA', 'TURN ON', 'CHECK IN', 'GIVE UP', 'NA', 'REFORZAR EXPRESIONES IDIOMÁTICAS', '../../images/preguntas/520,.jpg'),
(521, 9, 6, 3, 138, 'EL DESARROLLO DE UN TRABAJO ESCRITO ES:', 'LA EXPLICACIÓN DE LA ELABORACIÓN DE UNA TAREA.', 'NA', 'NA', 'SOLO UN RESUMEN DE LA CONSULTA DE INFORMACIÓN.', 'LA FUENTE DE LA INFORMACIÓN DE LA TAREA.', 'MENCIONAR LA LISTA DE TAREAS DEL TRABAJO.', 'NA', 'REFORZAR PRODUCCIÓN TEXTUAL', '../../images/preguntas/docs 83.png'),
(522, 9, 6, 3, 136, 'LA INFORMACIÓN QUE PRESENTA EL TEXTO ANTERIOR ESTÁ RELACIONADA CON:', 'ESPACIOS Y HECHOS.', 'NA', 'NA', 'PERSONAJES Y HECHOS.', 'TIEMPO Y ESPACIO.', 'HECHOS Y CAUSAS.', 'NA', 'REFORZAR INTERPRETACIÓN TEXTUAL', '../../images/preguntas/Captura de pantalla (1826).png'),
(523, 9, 6, 3, 136, 'EL SEGUNDO PÁRRAFO DEL TEXTO CUMPLE LA FUNCIÓN DE EXPLICAR:', 'EL IMPACTO DEL HECHO EN LA VIDA DE UNA PERSONA.', 'NA', 'NA', 'COMO LAS PERSONAS IMPLICADAS ASUMEN LOS HECHOS.', 'LAS CAUSAS QUE ORIGINARON EL HECHO.', 'LOS HECHOS QUE HAN ORIGINADO LA NOTICIA.', 'NA', 'REFORZAR INTERPRETACIÓN TEXTUAL', '../../images/preguntas/Captura de pantalla  final intepretacion 8.png'),
(524, 9, 6, 3, 138, 'EL OBJETIVO DE LA INTRODUCCIÓN DE UN TRABAJO ESCRITO:', 'PRESENTAR EL TEMA.', 'NA', 'NA', 'RESUMIR LOS RESULTADOS DE LOS ARGUMENTOS.', 'APOYAR LOS ARGUMENTOS DE LA TESIS.', 'EXPLICAR EL DESARROLLO ARGUMENTATIVO.', 'NA', 'REFORZAR PRODUCCIÓN TEXTUAL', '../../images/preguntas/docs81.png'),
(525, 9, 6, 3, 138, 'LA CONCLUSIÓN EN UN TRABAJO ESCRITO EXPLICA:', 'LOS RESULTADOS Y RECOMENDACIONES DEL TRABAJO.', 'NA', 'NA', 'LA CONTEXTUALIZACIÓN DEL TEMA DEL TRABAJO.', 'EL DESARROLLO DEL TEMA DEL TRABAJO.', 'LOS ARGUMENTOS PARA DESARROLLAR EL TRABAJO.', 'NA', 'REFORZAR PRODUCCIÓN TEXTUAL', '../../images/preguntas/docs82.png'),
(526, 9, 6, 3, 137, 'EN EL ENUNCIADO: LES HACE RECURRIR AL DISPOSITIVO DE MÚSICA. UN SINÓNIMO DE RECURRIR ES:', 'ACUDIR.', 'NA', 'NA', 'ENCONTRAR.', 'UTILIZAR.', 'PRESTAR.', 'NA', 'REFORZAR EXPRESIÓN GRAMATICAL', '../../images/preguntas/GRAMATICA 30 1.png'),
(527, 9, 6, 3, 137, 'EN LA EXPRESIÓN: LA ISLA PRODIGIOSA SURGIÓ CON EL HORIZONTE CÓMO UNA CRÁTERA COLMADA DE LIRIOS Y ROSAS. LA PALABRA CRÁTERA PUEDE SER REMPLAZADA SIN CAMBIAR SU SENTIDO, POR:', 'VASIJA.', 'NA', 'NA', 'OLLA.', 'ABERTURA.', 'VASO.', 'NA', 'REFORZAR EXPRESIÓN GRAMATICAL', '../../images/preguntas/GRAMATICA 32.png'),
(528, 9, 6, 3, 137, 'EN LA EXPRESIÓN:  ADEMÁS CUANDO LAS 15 PERSONAS PEDALEABAN AL MISMO TIEMPO. LA PALABRA ADEMÁS PUEDE SER REEMPLAZADA SIN CAMBIAR SU SENTIDO POR:', 'ASÍ MISMO.', 'NA', 'NA', 'SIN EMBARGO.', 'PORQUE.', 'LUEGO.', 'NA', 'REFORZAR EXPRESIÓN GRAMATICAL', '../../images/preguntas/GRAMATICA 33.png'),
(529, 9, 6, 3, 137, 'EN EL ENUNCIADO: AUNQUE ALGUIEN HAYA MANIFESTADO EXPRESAMENTE LA VOLUNTAD DE DONAR SUS ÓRGANOS, ES LA FAMILIA A LA QUE SE CONSULTA. EN ESTE CASO LA PALABRA, AUNQUE TIENE COMO OBJETIVO DE:', 'CONTRAPONER DOS IDEAS.', 'NA', 'NA', 'AMPLIAR UN PLANTEAMIENTO.', 'COMPARAR DOS IDEAS.', 'ENFATIZAR UNA INFORMACIÓN.', 'NA', 'REFORZAR EXPRESIÓN GRAMATICAL', 'NA'),
(530, 9, 6, 3, 137, 'EN LA EXPRESIÓN: DEBE APRENDER A MOVERSE ENTRE LA MULTITUD. LA PALABRA MULTITUD PUEDE SER REEMPLAZADA SIN CAMBIAR SU SENTIDO POR:', 'ALGARABÍA.', 'NA', 'NA', 'GENTÍO.', 'CAOS.', 'MURMULLOS.', 'NA', 'REFORZAR EXPRESIÓN GRAMATICAL', '../../images/preguntas/GRAMATICA 35.png'),
(531, 8, 6, 3, 0, '1.EN EL ENUNCIADO : SIN EMBARGO EN EUROPA NO EXISTEN TIERRAS SUFICIENTES PARA LA PRODUCCIÓN NECESARIA DE BIOCOMBUSTIBLES. LA EXPRESIÓN SIN EMBARGO PUEDE SER REMPLAZADA POR:', 'D. NO OBSTANTE.', 'NA', 'NA', 'A. TAMBIEN.', 'C. SOBRE TODO.', 'D.  CUANDO.', 'NA', 'REFORZAR EXPRESIÓN GRAMATICAL.', '../../images/preguntas/interpretación 81.png'),
(532, 8, 6, 3, 133, 'EN EL ENUNCIADO LA COMUNIDAD CIENTÍFICA SE HA MANTENIDO ESCÉPTICA AL RESPECTO. TENIENDO EN CUENTA ESTO, LA PALABRA ESCÉPTICA PUEDE SER REEMPLAZADA POR:', 'INCRÉDULA.', 'NA', 'NA', 'INSEGURA.', 'INTOLERANTE.', 'IGNORANTE.', 'NA', 'REFORZAR INTERPRETACIÓN TEXTUAL', '../../images/preguntas/ordenador-portatil 1.png'),
(533, 8, 6, 3, 134, 'EN LA EXPRESIÓN: LA BAHÍA QUE LA CIÑE, COMO UNA INMENSA HERRADURA AZUL .LA PALABRA CIÑE PUEDE SER REMPLAZADA POR:', 'RODEA.', 'NA', 'NA', 'UBICA.', 'LOCALIZA.', 'LIMITA.', 'NA', 'REFORZAR EXPRESIÓN GRAMATICAL', '../../images/preguntas/Captura de pantalla (1853).png'),
(534, 8, 6, 3, 133, 'EN LA EXPRESIÓN:  JAMÁS HAN ESTUDIADO MAGIA DE NINGUNA ÍNDOLE. LA PALABRA ÍNDOLE SE PUEDE REEMPLAZAR SIN CAMBIAR DE SENTIDO POR:   ', 'CLASE.', 'NA', 'NA', 'FORMA.', 'SITUACIÓN.', 'CONDICIÓN.', 'NA', 'REFORZAR INTERPRETACIÓN TEXTUAL', '../../images/preguntas/GRAMATICA 34.png'),
(535, 8, 6, 3, 134, 'EN EL ENUNCIADO: POR ESTA RAZÓN EL ÚNICO OFICIO QUE PRACTICABAN POCO ERA EL DE ZAPATERO. LA EXPRESIÓN POR ESTA RAZÓN EN ESTE CASO SE PUEDE REEMPLAZAR SIN CAMBIAR EL SENTIDO POR:', 'POR LO TANTO.', 'NA', 'NA', 'POR EL CONTRARIO.', 'POR OTRO LADO.', 'TAMBIÉN.', 'NA', 'REFORZAR EXPRESIÓN GRAMATICAL', '../../images/preguntas/GRAMATICA 36.png'),
(536, 8, 6, 3, 134, 'EN LA EXPRESIÓN: CON UNA VOZ SEDANTE QUE NO HABÍA DE ALTERARSE ANTE NADA. LA PALABRA SEDANTE SE PUEDE REEMPLAZAR POR:', 'TRANQUILIZANTE.', 'NA', 'NA', 'INSOPORTABLE.', 'HIPNÓTICA.', 'EMOCIONANTE.', 'NA', 'REFORZAR EXPRESIÓN GRAMATICAL', '../../images/preguntas/GRAMATICA 37.png'),
(537, 8, 6, 3, 135, '¿QUÉ FUNCIÓN CUMPLE LA INTRODUCCIÓN DE UN TRABAJO ESCRITO?', 'PRESENTAR EL TEMA.', 'NA', 'NA', 'RESUMIR LOS RESULTADOS DE LOS ARGUMENTOS.', 'APOYAR LOS ARGUMENTOS DE LA TESIS.', 'EXPLICAR EL DESARROLLO ARGUMENTATIVO.', 'NA', 'REFORZAR PRODUCCIÓN TEXTUAL', '../../images/preguntas/PRODUCCIÓN 71.png'),
(538, 8, 6, 3, 135, 'LA CONCLUSIÓN EN UN TRABAJO ESCRITO EXPLICA:', 'LOS RESULTADOS Y RECOMENDACIONES DEL TRABAJO. ', 'NA', 'NA', 'EL TEMA DEL TRABAJO.', 'EL DESARROLLO DEL TEMA DEL TRABAJO.', 'LOS ARGUMENTOS PARA DESARROLLAR EL TRABAJO.', 'NA', 'REFORZAR PRODUCCIÓN TEXTUAL', '../../images/preguntas/PRODUCCIÓN 73.png'),
(539, 8, 6, 3, 135, 'EL DESARROLLO DE UN TRABAJO ESCRITO ES:', 'LA EXPLICACIÓN DE LA ELABORACIÓN DE UNA TAREA.', 'NA', 'NA', 'UN RESUMEN DE LA CONSULTA DE INFORMACIÓN.', 'LA FUENTE DE LA INFORMACIÓN DE LA TAREA.', 'MENCIONAR LA LISTA DE TAREAS.', 'NA', 'REFORZAR PRODUCCIÓN TEXTUAL', '../../images/preguntas/PRUDUCCIÓN 72.png'),
(540, 8, 6, 3, 133, 'EN EL TEXTO ANTERIOR, EL AUTOR UTILIZA LA REFERENCIA DE RODRIGO DE BASTIDAS PARA:', 'COMPLETAR LA INFORMACIÓN CON HECHOS HISTÓRICOS.', 'NA', 'NA', 'EXPLICAR LA HISTORIA DE LA REGIÓN.', 'INFORMAR SOBRE PERSONAJES ILUSTRES DE LA REGIÓN. ', 'NARRAR UNA HISTORIA.', 'NA', 'REFORZAR INTERPRETACIÓN TEXTUAL', '../../images/preguntas/Captura de pantalla (1800).png'),
(542, 8, 6, 3, 133, 'SEGÚN EL PÁRRAFO DE LA IMAGEN. PARA CONVENCER AL LECTOR, EL AUTOR ACUDE A EJEMPLOS DE:', ' OPINIONES DE PSICÓLOGOS', 'NA', 'NA', 'DEFINICIONES DE ADICCIÓN', 'OPINIONES DE LOS PROFESIONALES DE LA EDUCACIÓN.', 'PROBLEMAS GRAVES QUE SURGEN DE LA SITUACIÓN.', 'NA', 'REFORZAR INTERPRETACIÓN TEXTUAL', '../../images/preguntas/Captura de pantalla (1802).png'),
(543, 8, 6, 3, 133, 'SEGÚN EL TEXTO, SE PUEDE HABLAR DE ADICCIÓN A LOS DISPOSITIVOS ELECTRÓNICOS CUANDO:', 'HAY UNA INCAPACIDAD DE MANEJAR SU UTILIZACIÓN.', 'NA', 'NA', 'HAY BAJO RENDIMIENTO ESCOLAR ', 'ES LA ÚNICA MANERA DE ESTABLECER COMUNICACIÓN.', 'EXISTEN ACTITUDES APÁTICAS EN EL NÚCLEO FAMILIAR.', 'NA', 'REFORZAR INTERPRETACIÓN TEXTUAL', '../../images/preguntas/Captura de pantalla (1806).png'),
(544, 8, 6, 3, 133, 'DE ACUERDO CON EL FRAGMENTO DE LA IMAGEN, SELECCIONE LA ORACIÓN QUE EXPRESA UNA ADMIRACIÓN POR LA HABILIDAD DEL PERSONAJE', '4', 'NA', 'NA', '1', '2', '5', 'NA', 'REFORZAR INTERPRETACIÓN TEXTUAL', '../../images/preguntas/interpretacin 7 final.png'),
(545, 7, 6, 3, 130, ' DE ACUERDO CON LA ENUMERACIÓN DE LOS ENUNCIADOS DE LA IMAGEN ANTERIOR, ELIGE LA OPCIÓN CORRECTA PARA REDACTAR UNA NOTICIA:', '1, 3, 2, 5 Y  4.', 'NA', 'NA', ' 1, 2, 4, 5  Y  3.', '2, 3, 1, 5 Y 4.', ' 3, 2, 1 5 Y 4.', 'NA', 'REFORZAR INTERPRETACIÓN TEXTUAL', '../../images/preguntas/Captura de pantalla (1817).png'),
(546, 7, 6, 3, 130, 'LA INFORMACIÓN QUE PRESENTA EL TEXTO ANTERIOR ESTÁ RELACIONADA CON:', 'ESPACIOS Y HECHOS.', 'NA', 'NA', 'PERSONAJES Y HECHOS.', ' TIEMPO Y ESPACIO.', 'HECHOS Y CAUSAS.', 'NA', 'REFORZAR INTERPRETACIÓN TEXTUAL', '../../images/preguntas/Captura de pantalla (1827).png'),
(547, 7, 6, 3, 130, ' EN EL PÁRRAFO ANTERIOR PREDOMINA UNA SECUENCIA:', 'DESCRIPTIVA', 'NA', 'NA', 'EXPLICATIVA', ' NARRATIVA', 'ARGUMENTATIVA', 'NA', 'REFORZAR INTERPRETACIÓN TEXTUAL', '../../images/preguntas/Captura de pantalla (1830).png'),
(548, 7, 6, 3, 130, 'EL PÁRRAFO ANTERIOR SE APOYA DE UNA IDEA PLANTEADA POR MEDIO DE:', 'UNA EJEMPLIFICACIÓN.', 'NA', 'NA', 'UNA COMPARACIÓN.', 'UNA EXPLICACIÓN.', 'UNA GENERALIZACIÓN.', 'NA', 'REFORZAR INTERPRETACIÓN TEXTUAL', '../../images/preguntas/Captura de pantalla (1833).png'),
(549, 7, 6, 3, 130, 'EL SEGUNDO PÁRRAFO DEL TEXTO CUMPLE LA FUNCIÓN DE EXPLICAR:', 'EL IMPACTO DEL HECHO EN LA VIDA DE UNA PERSONA.', 'NA', 'NA', 'COMO LAS PERSONAS IMPLICADAS ASUMEN LOS HECHOS.', 'COMO LAS PERSONAS INPLICADAS EXPLICAN LOS HECHOS.', 'LOS HECHOS QUE HAN ORIGINADO LA NOTICIA.', 'NA', 'REFORZAR INTERPRETACIÓN TEXTUAL', '../../images/preguntas/Captura de pantalla (1838).png'),
(550, 7, 6, 3, 132, '¿QUÉ FUNCIÓN CUMPLE LA INTRODUCCIÓN EN UN TRABAJO ESCRITO?', 'PRESENTAR EL TEMA DEL TRABAJO.', 'NA', 'NA', 'RESUMIR LOS RESULTADOS DEL TRABAJO.', 'ENUMERAR LOS TEMAS DEL CONTENIDO DEL TRABAJO.', 'INDICAR LAS PARTES DEL TRABAJO ESCRITO.', 'NA', 'REFORZAR PRODUCCIÓN TEXTUAL', '../../images/preguntas/docs final 61.png'),
(551, 7, 6, 3, 132, 'ANALIZA EL SIGUIENTE FRAGMENTO PARA RESPONDER LA PREGUNTA DE ACUERDO CON LA ENUMERACIÓN DE LAS ORACIONES QUE APARECE EN LA IMAGEN \r \r¿EN CUÁLES ORACIONES EL AUTOR HACE AFIRMACIONES SOBRE LA EXISTENCIA DE DETERMINADOS SUCESOS RELATIVOS AL TEMA? \r', '( 1), (4) Y (5)', 'NA', 'NA', '(2)  Y ( 3)', '( 1), (2) Y  (4)', '( 3), (4) Y ( 5)', 'NA', 'REFORZAR PRODUCCIÓN TEXTUAL', '../../images/preguntas/Captura de pantalla (353).png'),
(552, 7, 6, 3, 132, 'LA DEFINICIÓN CORRECTA DEL DESARROLLO DE UN TRABAJO ESCRITO ES:', 'LA EXPLICACIÓN DE LA ELABORACIÓN DE UNA TAREA.', 'NA', 'NA', 'LA CONSULTA DE INFORMACIÓN DE UNA TAREA.', 'LA FUENTE DE INFORMACIÓN DE UNA TAREA.', 'MENCIONAR LA LISTA DE LOS TEMAS DE UNA TAREA.', 'NA', 'REFORZAR PRODUCCIÓN TEXTUAL', '../../images/preguntas/docs 63 final.png'),
(553, 7, 6, 3, 131, 'EN EL TEXTO ANTERIOR LA PALABRA SUBRAYADA PUEDE SER REMPLAZADA POR:', ' INESTABLES.', 'NA', 'NA', 'ETÉREOS.', 'CONSTANTES.', 'INALTERABLES.', 'NA', 'REFORZAR EXPRESIÓN GRAMATICAL', '../../images/preguntas/Captura de pantalla (1846).png'),
(554, 7, 6, 3, 131, 'EN EL PÁRRAFO ANTERIOR EL PARÉNTESIS SE UTILIZA PARA:', 'INSERTAR UNA EXPLICACIÓN.', 'NA', 'NA', ' INDICAR QUE SE OMITE EL TEXTO.', 'MOSTRAR EL USO DE CITAS.', 'OMITIR UNA EXPLICACIÓN.', 'NA', 'REFORZAR EXPRESIÓN GRAMATICAL', '../../images/preguntas/Captura de pantalla (1850).png'),
(555, 7, 6, 3, 131, 'SEGÚN LA IMAGEN, LA EXPRESIÓN : LA BAHÍA QUE LA CIÑE COMO UNA INMENSA HERRADURA AZUL . LA PALABRA CIÑE PUEDE SER REMPLAZADA POR:', 'RODEA.', 'NA', 'NA', 'UBICA.', 'LOCALIZA.', 'LIMITA.', 'NA', 'REFORZAR EXPRESIÓN GRAMATICAL', '../../images/preguntas/Captura de pantalla (1852).png'),
(556, 7, 6, 3, 131, 'EN EL ENUNCIADO: POR ESTA RAZÓN EL ÚNICO OFICIO QUE PRACTICABAN POCO ERA EL DE ZAPATERO. LA EXPRESIÓN POR ESTA  RAZÓN, EN ESTE CASO SE PUEDE REMPLAZAR SIN CAMBIAR EL SENTIDO POR:', 'POR LO TANTO.', 'NA', 'NA', 'POR EL CONTRARIO.', 'POR OTRO LADO.', 'TAMBIÉN.', 'NA', 'REFORZAR EXPRESIÓN GRAMATICAL', '../../images/preguntas/en-linea 61.png');
INSERT INTO `tbl_preguntas` (`id`, `id_grado`, `id_materia`, `id_tipo_pregunta`, `id_tema`, `pregunta`, `r1ok`, `r2ok`, `r3ok`, `r1no`, `r2no`, `r3no`, `r4no`, `retroalimentacion`, `imagen`) VALUES
(557, 7, 6, 3, 131, 'EN LA EXPRESIÓN: ADEMÁS CUANDO LAS 15 PERSONAS PEDALEABAN AL MISMO TIEMPO PARA LLEGAR AL PARQUE. LA PALABRA ADEMÁS SE PUEDE REMPLAZAR SIN CAMBIAR SU SENTIDO POR:', 'ASÍ MISMO.', 'NA', 'NA', 'SIN EMBARGO.', 'PORQUE.', 'LUEGO.', 'NA', 'REFORZAR EXPRESIÓN GRAMATICAL', '../../images/preguntas/en-linea 62.png'),
(558, 2, 6, 3, 1, '10. RELACIONA CADA PALABRA A SU IMAGEN Y SELECCIONA LA OPCIÓN CORRECTA ', 'A. 2, 3, 4, 5,1', 'NA', 'NA', 'B. 1, 2, 3, 4, 5', 'C. 5, 4, 3, 2, 1', 'D. 3, 1, 2, 5, 4  ', 'NA', 'REFORZAR RELACIÓN PALABRA DIBUJO', '../../images/preguntas/Imagen1 relación palabra -imagen.png'),
(559, 2, 6, 3, 152, '11. LEA EL SIGUIENTE TEXTO, COMPLETA LOS ESPACIOS EN BLANCO, ELIJA LA OPCIÓN CORRECTA LA                  ES UN ANIMAL, DE COLOR              , TIENE LOS OJOS                  , LA BOCA             Y  LAS PATAS                 . ', 'A. RANA, VERDE, SALTONES, GRANDES, LARGAS ', 'NA', 'NA', 'B. GALLINA, BLANCA, PEQUEÑOS, GRANDE, CORTAS ', 'C. RANA, MORADO, NEGROS, GRANDE, VERDES ', 'D. NINGUNA DE LAS ANTERIORES ', 'NA', 'REFORZAR COMPRESIÓN LECTORA', '../../images/preguntas/grado1, 34.png'),
(560, 2, 6, 3, 150, '12. OBSERVA LA IMAGEN Y ELIJA LA OPCIÓN CORRECTA  ', 'A. EL ERIZO TIENE UNA CANASTA ', 'NA', 'NA', 'B. EL LEÓN ESTA ACOSTADO ', 'C. HAY UNA PALOMA ', 'D. HUMO SE ESCRIBE SIN H', 'NA', 'REFORZAR PRECEPCIÓN VISUAL Y AUDITIVA (SILABAS)', '../../images/preguntas/Imagen1 grado 1,45.png'),
(561, 2, 6, 3, 1, '13. OBSERVA LA IMAGEN UNA LAS SILABAS QUE TIENEN EL MISMO COLOR Y FORMA LA PALABRA, ELIJA LA OPCIÓN CORRECTA. ', 'A. PELOTA, CAMISA, FLORES, VECINO, DRAGÓN, PLUMA', 'NA', 'NA', 'B. PETALOS, CAMISETA, FLOR, VECINDAD, DRAGO', 'C. PELO, CAMI, FOR, VECI, DRAGO, PLUMA', 'D. NINGUNA DE LAS ANTERIORES ', 'NA', 'REFORZAR FORMANDO PALABRAS', '../../images/preguntas/Imagen 1 3,3.png'),
(562, 2, 6, 3, 152, '14. LEA EL SIGUIENTE TEXTO Y CONTESTA LAS SIGUIENTES PREGUNTAS,  ELIJA LA OPCIÓN CORRECTA ¿CÓMO SE LLAMA EL GATO?  ¿QUIÉN ES SU DUEÑA? ¿POR DÓNDE SE PASEA EL GATO? ¿CON QUÉ JUEGA GLEN?     ', 'A. GLEN, GLADIS, GLORIETA, ROLLOS DE LANA', 'NA', 'NA', 'B. ROLLOS DE LANA, GLEN, PASEAN, IGLESIA', 'C. GLOTÓN, MARRÓN, JUGAR, IGLESIA ', 'D. DOTY, CAMILA, PARQUE, PELOTA ', 'NA', 'REFORZAR COMPRESIÓN LECTORA', '../../images/preguntas/grado 1,22w.png'),
(563, 2, 6, 3, 152, '15. LEA EL SIGUIENTE TEXTO, CONTESTA LAS PREGUNTAS Y ELJJA LAS RESPUESTA CORRECTA  LA BALLENA ELENA ES GORDA Y BUENA, NADA POR LOS MARES COMO UNA SIRENA, CUANDO ALMUERZA O CENA SE TOMA UN GRAN PLATO DE SOPA CON AVENA.  ¿QUIÉN ES ELENA? Y ¿QUÉ COME?', 'A. UNA BALLENA, SOPA DE AVENA ', 'NA', 'NA', 'B. UNA TORTUGA, DULCES ', 'C. UNA NIÑA, PASTA ', 'D- UNA LOMBRIZ, PLANTAS ', 'NA', 'REFORZAR COMPRESIÓN LECTORA', 'NA'),
(564, 2, 6, 3, 155, '16.  LEA LAS SIGUIENTES PAREJAS DE PALABRAS, ELIJA LAS QUE RIMAN Y SELECCIONA LA OPCIÓN CORRECTA.', 'A. VIEJA, ABEJA – CAMISA, MELISA', 'NA', 'NA', 'B. MANO, MANADA- MESA, MESÓN ', 'C. PIE, HIERRRO- MANZANA, MANILLA ', 'D. NINGUNA DE LAS ANTERIORES ', 'NA', 'REFORZAR ESCRITURA Y ORTOGRAFÍA', 'NA'),
(565, 11, 7, 3, 94, 'OBSERVA LA IMAGEN Y ELIGE LA OPCIÓN CORRECTA PARA COMPLETAR LA ORACIÓN: EXPRESSING OPINIONS.', 'HAVE', 'NA', 'NA', 'HAVE NOT ', 'HAS', 'HAS NOT', 'NA', 'REFORZAR EXPRESIONES PARA OPINAR SOBRE TEMAS SOCIALES', '../../images/preguntas/565,.jpg'),
(566, 11, 7, 3, 94, 'OBSERVA LA IMAGEN Y ELIGE LA OPCIÓN CORRECTA PARA COMPLETAR LA ORACIÓN: EXPRESSING OPINIONS.', 'IT IS BETTER TO', 'NA', 'NA', 'IT IS WRONG TO', 'IT IS NOT NECESSARY TO', 'IT IS IMPORTANT TO', 'NA', 'REFORZAR EXPRESIONES PARA OPINAR SOBRE TEMAS SOCIALES', '../../images/preguntas/566,.jpg'),
(567, 11, 7, 3, 94, 'OBSERVA LA IMAGEN Y ELIGE LA OPCIÓN CORRECTA PARA COMPLETAR LA ORACIÓN: EXPRESSING OPINIONS.', 'OPINION', 'NA', 'NA', 'BELIEVE', 'AGREE', 'THINK', 'NA', 'REFORZAR EXPRESIONES PARA OPINAR SOBRE TEMAS SOCIALES', '../../images/preguntas/567,.jpg'),
(568, 11, 7, 3, 95, 'ELIGE LA OPCIÓN CORRECTA DE ACUERDO CON EL LISTADO DE LA IMAGEN. THOSE ARE: ', 'DISADVANTAGES', 'NA', 'NA', 'ADVANTAGES', 'ADVICE', 'SUGGESTIONS', 'NA', 'REFORZAR EXPRESIONES DE VENTAJAS Y DESVENTAJAS', '../../images/preguntas/568,.jpg'),
(569, 2, 6, 3, 153, '17.  LEA LAS SIGUIENTES ORACIONES  Y COMPLETALAS CON LAS PALABRAS CORRESPONDIENTES, ELIJA LA OPCIÓN CORECTA  ESE        ESTA AMARRADO. LA VELA ESTA EN LA                 . CECILIA COME COCO Y              .  CAMILA OLÍA LAS                      . BELISARIO SE PONE SUS           . ', 'A. PERRO, VENTANA, PERAS, ROSAS, BOTAS ', 'NA', 'NA', 'B. BURRO, MONTAÑA, CHICLES, HOJAS, CHAQUETA', 'C. NIÑO, PUERTA, SALSAS, VELAS, GORROS ', 'D. MUÑECO, MESA, GASEOSA, DONAS, PANTALONES ', 'NA', 'REFORZAR ORACIONES', 'NA'),
(570, 11, 7, 3, 95, 'ELIGE LA OPCIÓN CORRECTA DE ACUERDO CON EL SIGUIENTE ENUNCIADO: ALL OF THE FOLLOWING EXPRESSIONS CAN BE ADVANTAGES EXCEPT:', 'THIS -----HOLDS THE DEMERIT OF…', 'NA', 'NA', 'AN UPSIDE OF THIS IDEA IS…', 'A POSITIVE ASPECT OF ----- IS…', 'THIS VIEW HOLDS THE MERIT OF …', 'NA', 'REFORZAR EXPRESIONES DE VENTAJAS Y DESVENTAJAS', '../../images/preguntas/570.jpg'),
(571, 11, 7, 3, 95, 'LEE LAS ORACIONES SOBRE TECNOLOGÍA QUE ESTÁN DENTRO DE LA IMAGEN Y ELIGE LA OPCIÓN QUE MÁS LAS DEFINA. THOSE EXPRESSIONS CAN BE:', 'BOTH, ADVANTAGES AND DISADVANTAGES.', 'NA', 'NA', 'ADVANTAGES OF TECHNOLOGY.', 'DISADVANTAGES OF TECHNOLOGY.', 'THE INFORMATION IS NOT CLEAR.', 'NA', 'REFORZAR EXPRESIONES DE VENTAJAS Y DESVENTAJAS', '../../images/preguntas/571,.jpg'),
(572, 2, 6, 3, 155, '18. SELECCIONA LAS PALABRAS QUE ESTAN BIEN ESCRITAS Y CON BUENA ORTOGRAFÍA ', 'A. ARAÑA, ÁRBOL. MAMÁ, GITANA, PAYASO ', 'NA', 'NA', 'B. ANJEL, OJA, SANAORIA, FELIZ, CALABAZA', 'C. VIAJAR, ALLUDA, HUEVO, BUO, HABIA', 'D. ANIYO, GITARRA, RRATÓN, NUBE', 'NA', 'REFORZAR ESCRITURA Y ORTOGRAFÍA', 'NA'),
(573, 11, 7, 3, 96, 'LEE EL TEXTO DE LA IMAGEN E IDENTIFICA LAS EXPRESIONES QUE SE USAN EN INGLÉS PARA CITAR LAS IDEAS DE UN AUTOR. THE EXPRESSIONS TO QUOTE USED IN THE TEXT ARE: ', 'CLAIM THAT, POINT OUT, SAYS THAT.', 'NA', 'NA', 'FOOD EXPERTS,DOCTORS,SCIENTISTS.', 'HARVARD RESEARCH GROUP.', 'THEN, AFTER, NOW, BEFORE.', 'NA', 'REFORZAR EXPRESIONES PARA CITAR', '../../images/preguntas/573final (1).jpg'),
(574, 11, 7, 3, 96, 'LEE EL TEXTO DE LA IMAGEN Y COMPLETA LA SIGUIENTE ORACIÓN: CAFFEINE IS A SUBSTANCE THAT MAKES US FEEL....', 'HAPPY', 'NA', 'NA', 'DROWSY', 'ALERT', 'SAD', 'NA', 'REFORZAR EXPRESIONES PARA CITAR', '../../images/preguntas/573finalb.jpg'),
(575, 11, 7, 3, 96, 'LEE EL TEXTO DE LA IMAGEN Y RESPONDE LA SIGUIENTE PREGUNTA: WHICH GROUP OF PEOPLE HAS WARNED AGAINST THE EXCESSIVE INTAKE OF COFFEE?', 'DOCTORS', 'NA', 'NA', 'FOOD EXPERTS', 'SCIENTIST', 'PEOPLE', 'NA', 'REFORZAR EXPRESIONES PARA CITAR', '../../images/preguntas/Reading about coffee  (2).jpg'),
(576, 11, 7, 3, 96, 'LEE EL TEXTO DE LA IMAGEN Y RESPONDE LA SIGUIENTE PREGUNTA: THE LEVELS OF CAFFEINE IN A CUP OF COFFEE CAN BE CHANGED BY... ', 'ADDING MILK AND SUGAR', 'NA', 'NA', 'ROASTING THE COFFEE BEANS', 'BREWING THE COFFEE', 'ADDING WATER AND SUGAR CANE', 'NA', 'REFORZAR EXPRESIONES PARA CITAR', '../../images/preguntas/573finalc.jpg'),
(577, 11, 7, 3, 97, 'OBSERVA LA IMAGEN, LEE LA DESCRIPCIÓN Y ELIGE LA RESPUESTA CORRECTA TENIENDO EN CUENTA LA SIGUIENTE PREGUNTA: WHY DID FELIPE WRITE THIS MESSAGE?', 'TO ASK CAMILA TO CONTACT HIM ABOUT THE HOMEWORK.', 'NA', 'NA', 'TO CHECK IF CAMILA HAS COMPLETED HER HOMEWORK.', 'TO LET CAMILA KNOW WHAT THEY DID IN CLASS TODAY', 'TO KNOW HOW CAMILA IS FEELING TODAY.', 'NA', 'REFORZAR DAR Y SOLICITAR INFORMACIÓN SOBRE TEMAS DE INTERÉS GENERAL', '../../images/preguntas/577,.jpg'),
(578, 11, 7, 3, 97, 'ESCOGE LA OPCIÓN MÁS ADECUADA PARA RESPONDER LA SIGUIENTE PREGUNTA: DID YOU ENJOY THE PARTY?', 'IT WAS WONDERFUL! I ENJOY IT A LOT!', 'NA', 'NA', 'I THINK SO, TOO!', 'YOU ARE RIGHT!', 'IT IS A BIRTHDAY PARTY.', 'NA', 'REFORZAR DAR Y SOLICITAR INFORMACIÓN SOBRE TEMAS DE INTERÉS GENERAL', '../../images/preguntas/578,.jpg'),
(579, 11, 7, 3, 97, 'ESCOGE LA OPCIÓN MÁS ADECUADA PARA RESPONDER LA SIGUIENTE PREGUNTA: ARE YOU READY TO ORDER?', 'JUST A MINUTE.', 'NA', 'NA', 'WELL DONE!', 'CAN I HELP YOU?', 'WHAT IS YOUR FULL NAME?', 'NA', 'REFORZAR DAR Y SOLICITAR INFORMACIÓN SOBRE TEMAS DE INTERÉS GENERAL', '../../images/preguntas/579,.jpg'),
(580, 2, 6, 3, 154, '19. OBSERVA CADA DIBUJO, COMPLETA LA PALABRA Y ELIJA LA OPCIÓN CORRECTA. ', 'A. TRI, FLO, DRI', 'NA', 'NA', 'B. CLA, BLE, GRA', 'C. FRA, CRI, GLU', 'D. BRE, PRO, BRE', 'NA', 'REFORZAR FORMANDO PALABRAS', '../../images/preguntas/IMAGEN 1,3 GRADO 1.png'),
(581, 11, 7, 3, 97, 'ESCOGE LA PREGUNTA MÁS ADECUADA, TENIENDO EN CUENTA LA SIGUIENTE RESPUESTA: I JUST MET THE NEW STUDENT IN MY CLASS.', 'WHAT IS SHE LIKE?', 'NA', 'NA', 'KEEP RIGHT!', 'GOOD IDEA.', 'I LOST MY PASSPORT YESTERDAY. ', 'NA', 'REFORZAR DAR Y SOLICITAR INFORMACIÓN SOBRE TEMAS DE INTERÉS GENERAL', '../../images/preguntas/581,.jpg'),
(582, 11, 7, 3, 98, 'ELIGE UNA OPCIÓN PARA COMPLETAR EL DIÁLOGO QUE ESTÁ DENTRO DE LA IMAGEN: OH DEAR, YOU SHOULD...', 'SAY YOU ARE SORRY TO PETER.', 'NA', 'NA', 'BUY A HOUSE CLOSE TO THE BEACH.', 'TRAVEL AROUND THE WORLD.', 'WORK A LOT DURING THE YEAR.', 'NA', 'REFORZAR DAR RECOMENDACIONES SOBRE TEMAS DE INTERÉS GENERAL', '../../images/preguntas/582,.jpg'),
(583, 11, 7, 3, 98, 'ELIGE UNA OPCIÓN PARA COMPLETAR EL DIÁLOGO QUE ESTÁ DENTRO DE LA IMAGEN: YOU SHOULD...', 'TELL HIM TO RELAX AND BE MORE TOLERANT.', 'NA', 'NA', 'BUY A HOUSE CLOSE TO THE BEACH.', 'SAY YOU’RE SORRY TO PETER.', 'WORK A LOT DURING THE YEAR.', 'NA', 'REFORZAR DAR RECOMENDACIONES SOBRE TEMAS DE INTERÉS GENERAL', '../../images/preguntas/583,.jpg'),
(584, 11, 7, 3, 98, 'ELIGE UNA OPCIÓN PARA COMPLETAR EL DIÁLOGO QUE ESTÁ DENTRO DE LA IMAGEN: YOU COULD...', 'TELL THEM WHY YOU USE YOUR SMARTPHONE SO MUCH.', 'NA', 'NA', 'BUY A NEW SMARTPHONE.', 'TALK TO YOUR FRIENDS MORE OFTEN.', 'GIVE THEM THANKS. ', 'NA', 'REFORZAR DAR RECOMENDACIONES SOBRE TEMAS DE INTERÉS GENERAL', '../../images/preguntas/584,.jpg'),
(585, 11, 7, 3, 98, 'ELIGE UNA OPCIÓN PARA COMPLETAR EL DIÁLOGO QUE ESTÁ DENTRO DE LA IMAGEN: YOU SHOULD...', 'TRAIN MORE, BE DEDICATED.THE COACH WILL CHOOSE YOU', 'NA', 'NA', 'CHANGE YOUR SOCCER TEAM.', 'TALK TO YOUR FRIENDS MORE OFTEN.', 'TELL THEM WHY YOU USE YOUR SMARTPHONE SO MUCH.', 'NA', 'REFORZAR DAR RECOMENDACIONES SOBRE TEMAS DE INTERÉS GENERAL', '../../images/preguntas/585,.jpg'),
(586, 2, 6, 3, 151, '20. RELACIONA LA IMAGEN CON CADA CASILLA  Y ELIJA LA OPCIÓN CORRECTA ', 'A. DRAGÓN, ACROBATA, TROMPETA, PRINCESA ', 'NA', 'NA', 'B. PRINCESA, DRAGÓN, TROMPETA, ACROBATA ', 'C. ACROBATA, PRINCESA, DRAGÓN, TROMPETA ', 'D. NINGUNA DE LAS ANTERIORES', 'NA', 'REFORZAR RELACIÓN PALABRA DIBUJO', '../../images/preguntas/Imagen1 sdc edj.png'),
(587, 11, 7, 3, 99, 'ELIGE UNA OPCIÓN PARA COMPLETAR LA ORACIÓN QUE ESTÁ EN EL RECUADRO DE LA IMAGEN: A, B, C O D?', 'B.', 'NA', 'NA', 'A.', 'C.', 'D.', 'NA', 'REFORZAR EXPRESIONES DE CONTRASTE Y ADICIÓN', '../../images/preguntas/587,.jpg'),
(588, 11, 7, 3, 99, 'ELIGE UNA OPCIÓN QUE COMPLEMENTE LA ORACIÓN QUE ESTÁ DENTRO DE LA IMÁGEN: SOME OF THE STUDENTS SHOW POSITIVE RESULTS, ...', 'WHEREAS OTHERS DO NOT.', 'NA', 'NA', 'WHEREAS I HAVE JUST A SANDWICH.', 'WHEREAS IN FACT SHE WAS JUST VERY SHY', 'WHEREAS I CAN TAKE IT OR LEAVE IT.', 'NA', 'REFORZAR EXPRESIONES DE CONTRASTE Y ADICIÓN', '../../images/preguntas/588,.jpg'),
(589, 11, 7, 3, 99, 'ELIGE UNA OPCIÓN QUE COMPLEMENTE LA ORACIÓN QUE ESTÁ DENTRO DE LA IMÁGEN: THE CAR LOOKED GOOD, ...', 'MOREOVER, THE PRICE WAS RIGHT', 'NA', 'NA', 'HOWEVER, I WILL NEED IT.', 'COMPARED TO WHAT WE GOT YESTERDAY.', 'WHEREAS IN MY COUNTRY PEOPLE LIVE IN HARMONY', 'NA', 'REFORZAR EXPRESIONES DE CONTRASTE Y ADICIÓN', '../../images/preguntas/589,.jpg'),
(590, 12, 7, 3, 100, 'ELIGE LA OPCIÓN MÁS ADECUADA PARA COMPLETAR LA SIGUIENTE ORACIÓN: I REALLY LIKE THAT SONG.', 'ME TOO!', 'NA', 'NA', 'IT STARTS AT 3 P.M.', 'WELL DONE', 'IT ENDS AT 4 P.M.', 'NA', 'REFORZAR EXPRESIONES CON ACUERDOS Y DESACUERDOS', '../../images/preguntas/590.jpg'),
(591, 12, 7, 3, 100, 'ELIGE LA OPCIÓN MÁS ADECUADA PARA COMPLETAR LA SIGUIENTE ORACIÓN: NOTHING CAN REPLACE THE FEELING OF READING PAPER BOOKS.', 'I AGREE WITH YOU A HUNDRED PERCENT.', 'NA', 'NA', 'THANKS FOR COMING!', 'NO, I DID NOT BUY THAT HOUSE.', 'IT WAS SUPER COOL.', 'NA', 'REFORZAR EXPRESIONES CON ACUERDOS Y DESACUERDOS', '../../images/preguntas/591..jpg'),
(592, 12, 7, 3, 100, 'ELIGE LA OPCIÓN MÁS ADECUADA PARA COMPLETAR LA SIGUIENTE ORACIÓN: SKATEBOARDING IS A LOT SAFER THAN RIDING A BIKE.', 'TO BE HONEST, I DON’T AGREE WITH THAT', 'NA', 'NA', 'YOU DID NOT FINISH THE PROJECT.', 'WE WANT TO HAVE A PET.', 'IT ENDS AT 7 P.M', 'NA', 'REFORZAR EXPRESIONES CON ACUERDOS Y DESACUERDOS', '../../images/preguntas/592..jpg'),
(593, 12, 7, 3, 101, 'INDICA A QUE PARTE DE UNA CONVERSACIÓN PERTENECE LA LISTA DE EXPRESIONES QUE ESTÁ DENTRO DE LA IMAGEN: ESCOGE UNA OPCIÓN. ', 'GREETINGS', 'NA', 'NA', 'TRANSITIONING FROM A GREETING TO SMALL TALK', 'CHANGING THE TOPIC', 'ENDING A CONVERSATION', 'NA', 'REFORZAR EXPRESIONES PARA INICIAR, MANTENER Y TERMINAR UNA CONVERSACIÓN', '../../images/preguntas/593..jpg'),
(594, 12, 7, 3, 101, 'INDICA A QUE PARTE DE UNA CONVERSACIÓN PERTENECE LA LISTA DE EXPRESIONES QUE ESTÁ DENTRO DE LA IMAGEN: ESCOGE UNA OPCIÓN. ', 'ENDING A CONVERSATION', 'NA', 'NA', 'CHANGING THE TOPIC', 'RESPONSES TO COMMON GREETINGS', 'CONTINUING A CONVERSATION AFTER AN INTERRUPTION', 'NA', 'REFORZAR EXPRESIONES PARA INICIAR, MANTENER Y TERMINAR UNA CONVERSACIÓN', '../../images/preguntas/594..jpg'),
(595, 12, 7, 3, 101, 'INDICA A QUE PARTE DE UNA CONVERSACIÓN PERTENECE LA LISTA DE EXPRESIONES QUE ESTÁ DENTRO DE LA IMAGEN: ESCOGE UNA OPCIÓN.', 'CONTINUING A CONVERSATION AFTER AN INTERRUPTION', 'NA', 'NA', 'RESPONSES TO COMMON GREETINGS', 'ENDING A CONVERSATION', 'CHANGING THE TOPIC ', 'NA', 'REFORZAR EXPRESIONES PARA INICIAR, MANTENER Y TERMINAR UNA CONVERSACIÓN', '../../images/preguntas/595..jpg'),
(596, 12, 7, 3, 101, 'INDICA A QUE PARTE DE UNA CONVERSACIÓN PERTENECE LA LISTA DE EXPRESIONES QUE ESTÁ DENTRO DE LA IMAGEN: ESCOGE UNA OPCIÓN. ', 'TRANSITIONING FROM A GREETING TO SMALL TALK', 'NA', 'NA', 'GREETINGS', 'CHANGING THE TOPIC', 'ENDING A CONVERSATION', 'NA', 'REFORZAR EXPRESIONES PARA INICIAR, MANTENER Y TERMINAR UNA CONVERSACIÓN', '../../images/preguntas/596..jpg'),
(597, 12, 7, 3, 102, 'ELIGE LA MEJOR OPCIÓN PARA COMPLETAR LA PREGUNTA QUE ESTÁ DENTRO DE LA IMAGEN: ', 'SAY', 'NA', 'NA', 'SPEAK', 'CALL', 'LISTEN', 'NA', 'REFORZAR EXPRESIONES PARA SOLICITAR ACLARACIÓN', '../../images/preguntas/597..jpg'),
(598, 12, 7, 3, 102, 'ELIGE LA MEJOR OPCIÓN PARA COMPLETAR LA ORACIÓN QUE ESTÁ DENTRO DE LA IMAGEN: ', 'THAT', 'NA', 'NA', 'THESE', 'THIS', 'THOSE', 'NA', 'REFORZAR EXPRESIONES PARA SOLICITAR ACLARACIÓN', '../../images/preguntas/598..jpg'),
(599, 12, 7, 3, 102, 'ELIGE LA MEJOR OPCIÓN PARA COMPLETAR LA ORACIÓN QUE ESTÁ DENTRO DE LA IMAGEN: ', 'CATCH', 'NA', 'NA', 'MAKE', 'DANCE', 'COOK', 'NA', 'REFORZAR EXPRESIONES PARA SOLICITAR ACLARACIÓN', '../../images/preguntas/599..jpg'),
(600, 12, 7, 3, 103, 'ELIGE LA OPCIÓN MÁS ADECUADA PARA COMPLETAR LA ORACIÓN QUE ESTÁ DENTRO DE LA IMAGEN. HE FAILED THE TEST...', 'BECAUSE OF HIS BAD STUDY HABITS.', 'NA', 'NA', 'BECAUSE OF HIS GOOD STUDY HABITS. ', 'BECAUSE OF HIS BEST FRIENDS.', 'BECAUSE OF HIS FAMILY WON THE LOTTERY. ', 'NA', 'REFORZAR EXPRESIONES DE CAUSA Y EFECTO', '../../images/preguntas/600..jpg'),
(601, 12, 7, 3, 103, 'ELIGE LA OPCIÓN MÁS ADECUADA PARA COMPLETAR LA ORACIÓN QUE ESTÁ DENTRO DE LA IMAGEN: ...WE CANCELED THE PICNIC.', 'AS A RESULT OF THE RAIN…', 'NA', 'NA', 'AS A RESULT OF THE SUNNY…', 'AS A RESULT OF THE NICE WHETHER…', 'AS A RESULT OF YOU GOOD BEHAVIOR…', 'NA', 'REFORZAR EXPRESIONES DE CAUSA Y EFECTO', '../../images/preguntas/601..jpg'),
(602, 12, 7, 3, 103, 'ELIGE LA OPCIÓN MÁS ADECUADA PARA COMPLETAR LA ORACIÓN QUE ESTÁ DENTRO DE LA IMAGEN. HE WAS FIRED...', 'AS A CONSEQUENCE OF TARDINESS (BEING LATE).', 'NA', 'NA', 'AS A CONSEQUENCE OF HIS HARD WORK.', 'AS A CONSEQUENCE OF HIS GOOD BEHAVIOR.', 'AS A CONSEQUENCE OF HIS EXCELLENT WORK.', 'NA', 'REFORZAR EXPRESIONES DE CAUSA Y EFECTO', '../../images/preguntas/602..jpg'),
(603, 12, 7, 3, 104, 'LEE EL TEXTO QUE ESTÁ DENTRO DE LA IMAGEN Y COMPLEMENTA EL SIGUIENTE ENUNCIADO: IN CHINA, LONG NOODLES MEAN…', 'LONGEVITY (LONG-LIFE)', 'NA', 'NA', 'HAPPINESS AND LOVE WISHES.', 'LOTS OF FRIENDSHIPS ', 'FOOD ABUNDANCE. ', 'NA', 'REFORZAR EXPRESIONES PARA HABLAR SOBRE COSTUMBRES', '../../images/preguntas/603,.jpg'),
(604, 12, 7, 3, 104, 'LEE EL TEXTO QUE ESTÁ DENTRO DE LA IMAGEN Y CONTESTA LA SIGUIENTE PREGUNTA: HOW DO MEXICAN NORMALLY CELEBRATE THEIR BIRTHDAYS?', 'THEY OFTEN CELEBRATE WITH PIÑATAS.', 'NA', 'NA', 'THEY OFTEN HAVE TWO BIRTHDAYS. ', 'THEYNORMALLYCELEBRATETHEIR BIRTHDAY ON THE NEWYEAR', 'THEY NORMALLY SLURP A SUPER-LONG NOODLE', 'NA', 'REFORZAR EXPRESIONES PARA HABLAR SOBRE COSTUMBRES', '../../images/preguntas/603b,.jpg'),
(605, 12, 7, 3, 104, 'LEE EL TEXTO QUE ESTÁ DENTRO DE LA IMAGEN Y COMPLEMENTA EL SIGUIENTE ENUNCIADO: IN VIETNAM, EVERYONE CELEBRATES THEIR BIRTHDAY ON THE NEW YEAR AS IT IS CONSIDERED...', 'UNLUCKY TO CELEBRATE THE ACTUAL BIRTHDAY', 'NA', 'NA', 'LUCKY TO CELEBRATE THE ACTUAL BIRTHDAY', 'OPPORTUNE TO CELEBRATE THE ACTUAL BIRTHDAY', 'FAVORABLE TO CELEBRATE THE ACTUAL BIRTHDAY', 'NA', 'REFORZAR EXPRESIONES PARA HABLAR SOBRE COSTUMBRES', '../../images/preguntas/603c,.jpg'),
(606, 12, 7, 3, 105, 'ELIGE UNA OPCIÓN PARA COMPLETAR LA ORACIÓN DEL RECUADRO QUE ESTÁ EN LA IMAGEN: HE DID NOT PAY HIS TAXES IN TIME...', 'AS A RESULT, HE WAS GIVEN A PENALTY!', 'NA', 'NA', 'AS A RESULT, HE WAS GIVEN A PRIZE', 'AS A RESULT, HE WAS GIVEN AN AWARD', 'AS A RESULT, HE WAS GIVEN A TRIP', 'NA', 'REFORZAR EXPRESIONES PARA HABLAR SOBRE CONSECUENCIAS', '../../images/preguntas/606,.jpg'),
(607, 12, 7, 3, 105, 'ELIGE LA MEJOR OPCIÓN PARA COMPLETAR LA ORACIÓN DEL RECUADRO QUE ESTÁ EN LA IMAGEN. A, B, C O D: SHE DID NOT DO WHAT SHE HAD PROMISED,... ', 'D.', 'NA', 'NA', 'A.', 'B.', 'C.', 'NA', 'REFORZAR EXPRESIONES PARA HABLAR SOBRE CONSECUENCIAS', '../../images/preguntas/607,.jpg'),
(608, 12, 7, 3, 105, 'ELIGE LA MEJOR OPCIÓN PARA COMPLETAR LA ORACIÓN DEL RECUADRO QUE ESTÁ EN LA IMAGEN. A, B, C O D: I HEARD YOU BORROWED MY CAR WITHOUT PERMISSION...', 'C.', 'NA', 'NA', 'A.', 'B.', 'D.', 'NA', 'REFORZAR EXPRESIONES PARA HABLAR SOBRE CONSECUENCIAS', '../../images/preguntas/608,.jpg'),
(609, 12, 5, 3, 202, 'SEA LA FUNCIÓN SEN  B  =  4 / 11.  ENTONCES EL VALOR DE DE LA COSECANTE (CSC) DE B ES: ', 'CSC B = 11/4', 'NA', 'NA', 'CSC B = 1', 'CSC B = 15/ 4', 'CSC B = 4 /15', 'NA', 'REFORZAR ANÁLISIS DE FUNCIONES TRIGONOMÉTRICAS (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/Imagen37.png'),
(610, 12, 5, 3, 202, 'SEA LA FUNCION TANG B =  6/ 7, ENTONCES EL VALOR DE COS B ES:  ', 'A', 'NA', 'NA', 'B', 'C', 'D', 'NA', 'REFORZAR ANÁLISIS DE FUNCIONES TRIGONOMÉTRICAS (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/Imagen38A.png'),
(611, 12, 5, 3, 202, 'OBSERVA EL SIGUIENTE ENUNCIADO:', 'B', 'NA', 'NA', 'A', 'C', 'D', 'NA', 'REFORZAR ANÁLISIS DE FUNCIONES TRIGONOMÉTRICAS (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/Imagen39.png'),
(612, 12, 5, 3, 202, 'SEA LA FUNCION SEC B = 5 / 4, ENTONCES EL VALOR DE TANG B , SERA:  ', 'TANG B = 3 / 4', 'NA', 'NA', 'TANG B = 4 / 5', 'TANG B = 25 / 16', 'TANG B = 16 / 25 ', 'NA', 'REFORZAR ANÁLISIS DE FUNCIONES TRIGONOMÉTRICAS (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/Imagen40.png'),
(613, 12, 5, 3, 202, 'SEA LA FUNCION SEC B = 5 / 4, ENTONCES EL VALOR DEL CATETO OPUESTO (CO)ES:', 'CO = 3', 'NA', 'NA', 'CO = 5', 'CO = 4', 'CO = 9', 'NA', 'REFORZAR ANÁLISIS DE FUNCIONES TRIGONOMÉTRICAS (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/Imagen40A.png'),
(614, 12, 10, 3, 305, 'LEE ATENTAMENTE LA INFORMACIÓN ADJUNTA, DESARROLLA EL EJERCICIO Y SEÑALA LA RESPUESTA CORRECTA:', 'LA RESPUESTA CORRECTA ES LA A)', 'NA', 'NA', 'LA RESPUESTA CORRECTA ES LA B)', 'LA RESPUESTA CORRECTA ES LA C)', 'LA RESPUESTA CORRECTA ES LA D)', 'NA', 'REFORZAR CONVERSIÓN DE UNIDADES', '../../images/preguntas/PREGUNTA MERCADO def.png'),
(615, 12, 10, 3, 300, 'ANALIZA LA INFORMACIÓN Y SEÑALA LA RESPUESTA CORRECTA:', 'LA RESPUESTA CORRECTA ES LA A)', 'NA', 'NA', 'LA RESPUESTA CORRECTA ES LA B)', 'LA RESPUESTA CORRECTA ES LA C)', 'LA RESPUESTA CORRECTA ES LA D)', 'NA', 'REFORZAR PROPIEDADES FÍSICAS Y QUÍMICAS DE LA MATERIA', '../../images/preguntas/TEXTO PREGUNTA 10.png'),
(616, 12, 5, 3, 202, 'DEL SIGUIENTE TRIANGULO TENEMOS QUE SEN A = 3 / 5, ENTONCES SU FUNCIÓN INVERSA TIENE UN VALOR DE: ', 'CSC A = 5 / 3', 'NA', 'NA', 'CSC A = 3 / 5', 'COS A = 3 / 5COS A = 3 / 5', 'COS A = 5 / 3 ', 'NA', 'REFORZAR ANÁLISIS DE FUNCIONES TRIGONOMÉTRICAS (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/Imagen41.png'),
(617, 12, 5, 3, 206, 'TENIENDO EN CUENTA LA FORMULACIÓN PARA LA LEY DE LA TANGENTE, ES NECESARIO CONTAR CON LAS SIGUIENTES VARIABLES:  ', 'CONOCER LOS ANGULOS A Y B, Y EL LADO B', 'NA', 'NA', 'CONOCER LOS ANGULOS A Y C, Y EL LADO B', 'CONOCER LOS LADOS A Y C, Y EL ANGULO B', 'CONOCER LOS LADOS B Y C, Y EL ANGULO A', 'NA', 'REFORZAR APLICACIÓN GENERALIZADA DE LA LEY DE LA TANGENTE (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/Imagen42.png'),
(618, 12, 5, 3, 204, 'EL VALOR DE SEN A , APLICANDO LA LEY DE SENO, ES : ', 'B', 'NA', 'NA', 'A', 'C', 'D', 'NA', 'REFORZAR APLICACIÓN GENERALIZADA DE LA LEY DEL SENO (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/Imagen43a.png'),
(619, 12, 5, 3, 205, 'DE LA CIUDAD A , A LA CIUDAD B HAY 2 KM Y DE LA CIUDAD B , A LA CIUDAD C, HAY 1 KM.  LA DISTANCIA QUE SEPARA A LA CIUDAD A DE LA CIUDAD C, ES:  ', '1.732 KM', 'NA', 'NA', '9 KM', '3 KM', '0.5 KM', 'NA', 'REFORZAR APLICACIÓN GENERALIZADA DE LA LEY DEL COSENO (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/Imagen44.png'),
(620, 12, 5, 3, 203, 'LA IMAGEN NOS MUESTRA UNA PERSONA QUE MIDE 1.70 METROS Y UN ANGULO A DE 30 GRADOS. PARA HALLAR EL VALOR DE LA SOMBRA PODEMOS APLICAR LA SIGUIENTE FUNCIÓN:  ', 'SOMBRA =  (1.70) / TANG30', 'NA', 'NA', 'SOMBRA =  1.70 X TANG 30', 'SOMBRA = TANG 30 / 1.70', 'SOMBRA =  SEN30 / 1.70', 'NA', 'REFORZAR SITUACIONES PROBLEMÁTICAS EN DONDE INTERVIENE EL TRIÁNGULO RECTÁNGULO (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/Imagen45.png'),
(621, 12, 5, 3, 208, 'LA PISCINA DE LA IMAGEN TIENE UN VOLUMEN DE 9 METROS CÚBICOS Y UN DIÁMETRO DE 4 METROS. H ES LA ATURA DE LA PISCINA. UN NIÑO DE 1 METRO DE ALTURA PARADO DENTRO DE LA PISCINA, EN QUE SITUACIÓN SE ENCONTRARA: ', 'H = 0.71 M, EL NIÑO NO SE SUMERGE.', 'NA', 'NA', 'H=1M, EL NIÑO TIENE LA MISMA ALTURA DE LA PISCINA.', 'EL NIÑO SE SUMERGE TOTALMENTE POR QUE H = 1.71 M.', 'EL NIÑO NO SE SUMERGE PORQUE H= 0.5 M', 'NA', 'REFORZAR FIGURAS PLANAS Y VOLÚMENES (GEOMÉTRICO-MÉTRICO)', '../../images/preguntas/Imagen46.png'),
(622, 12, 5, 3, 206, 'SI TENEMOS UN TRIANGULO EN DONDE EL ANGULO A Y EL ANGULO  B SON IGUALES  , ES POSIBLE APLICAR LA LEY DE LA TANGENTE: ', 'SI ,PORQUE LA TANG DE CERO EXISTE.', 'NA', 'NA', 'NO, POR QUE TANG DE CERO NO EXISTE', 'NO, POR QUE TANG DE CERO EXISTE', 'SI, POR QUE TANG ES UN PRODUCTO NOTABLE.', 'NA', 'REFORZAR APLICACIÓN GENERALIZADA DE LA LEY DE LA TANGENTE (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/Imagen46a.png'),
(623, 12, 119999, 3, 211, 'TENIENDO EN CUENTA LAS FORMULAS PARA LA CAÍDA LIBRE DE UN CUERPO, LA GRAVEDAD LA TOMAMOS POSITIVA CUANDO:  ', 'EL CUERPO ESTA CAYENDO', 'NA', 'NA', 'EL CUERPO ESTA SUBIENDO', 'EL CUERPO ESTA EN REPOSO', 'ES INDIFERENTE SI CAE O SUBE.', 'NA', 'REFORZAR CAÍDA LIBRE', '../../images/preguntas/Imagen47.png'),
(624, 12, 119999, 3, 211, 'UN OBJETO EN REPOSO SE RESBALA POR UNA MESA DE ALTURA 0,7 METROS, SI DESEO CONOCER EL TIEMPO, ESTA SITUACIÓN LA PUEDO RESOLVER (RÁPIDAMENTE, UNA SOLO FORMULA)CON LA OPCION: ', 'C', 'NA', 'NA', 'A', 'B', 'D', 'NA', 'REFORZAR CAÍDA LIBRE', '../../images/preguntas/Imagen47A.png'),
(625, 12, 119999, 3, 210, 'EN EL MOVIMIENTO UNIFORMEMENTE ACELERADO, INTERVIENE EL VALOR DE LA ACELERACIÓN QUE ES UN CAMBIO DE VELOCIDAD EN UN ESPACIO DE TIEMPO. LA ACELERACIÓN ES UN VALOR NEGATIVO, CUANDO:  ', 'LA VELOCIDAD INICIAL ES MAYOR A LA FINAL', 'NA', 'NA', 'LA VELOCIDAD FINAL ES MAYOR A LA INICIAL', 'LAS DOS VELOCIDADES SON IGUALES', 'CUANDO EL TIEMPO ES CERO', 'NA', 'REFORZAR MOVIMIENTO ACELERADO', '../../images/preguntas/Imagen48.png'),
(626, 12, 119999, 3, 210, 'SI PARTES DEL REPOSO Y ALCANZAS UNA VELOCIDAD DE 5METROS / SEGUNDO, EN UN TIEMPO DE 5 SEGUNDOS. EL VALOR DE LA ACELERACIÓN SERÁ. ', '1 M/SG(2), POSITIVO', 'NA', 'NA', '1M/ SG(2), NEGATIVO', '25 M/SG(2), POSITIVO', '25 M/ SG(2), NEGATIVO', 'NA', 'REFORZAR MOVIMIENTO ACELERADO', '../../images/preguntas/Imagen48a.png'),
(627, 12, 119999, 3, 213, 'LA IMAGEN NOS MUESTRA UN PROCESO ISOCORO O ISOVOLUMETRICO, EN EL CUAL EL VOLUMEN ES CONSTANTE, POR LO TANTO: ', 'NO SE REALIZA TRABAJO', 'NA', 'NA', 'LA VARIACIÓN DE LA ENERGÍA INTERNA ES CERO', 'EL TRABAJO REALIZADO ES DIFERENTE DE CERO', 'LA VARIACIÓN DE PRESIÓN Y VOLUMEN ES CERO', 'NA', 'REFORZAR PROCESOS TERMODINÁMICOS', '../../images/preguntas/Imagen49.png'),
(628, 12, 119999, 3, 213, 'EN CUAL DE LOS PROCESOS TERMODINÁMICOS, EL SISTEMA NO ABSORBE NI CEDE CALOR: ', 'PROCESO ADIABÁTICO', 'NA', 'NA', 'PROCESO ISOCORO', 'PROCESO ISOTÉRMICO', 'PROCESO ISOBARICO', 'NA', 'REFORZAR PROCESOS TERMODINÁMICOS', '../../images/preguntas/Imagen49q.png'),
(629, 12, 119999, 3, 213, 'EN LA IMAGEN SE MUESTRA UNA OLLA A PRESIÓN, SI ESTAS COCINANDO UNOS FRIJOLES, ESTE ES UN TÍPICO EJEMPLO DE PROCESO: ', 'PROCESO ISOCORO, VOLUMEN CONSTANTE.', 'NA', 'NA', 'PROCESO ISOBÁRICO, PRESIÓN CONSTANTE.', 'PROCESO ISOTÉRMICO, TEMPERATURA CONSTANTE', 'PROCESO ADIABÁTICO, NO ABSORBE NI CEDE CALOR', 'NA', 'REFORZAR PROCESOS TERMODINÁMICOS', '../../images/preguntas/Imagen50.png'),
(630, 12, 119999, 3, 213, 'TENIENDO EN CUENTA LAS LEYES DE LA TERMODINÁMICA, EL CALOR ES POSITIVO, SI: ', 'ES ABSORBIDO POR EL SISTEMA', 'NA', 'NA', 'EL SISTEMA LO CEDE AL AMBIENTE', 'NO HAY ENERGÍA INTERNA', 'CUANDO HAY UN CAMBIO DE VOLUMEN', 'NA', 'REFORZAR PROCESOS TERMODINÁMICOS', '../../images/preguntas/Imagen51a.png'),
(631, 12, 119999, 3, 209, 'EN EL MOVIMIENTO UNIFORME LA VELOCIDAD ES CONSTANTE, DURANTE UN TIEMPO DETERMINADO.  DICHO ESTO, LA GRAFICA QUE DESCRIBE ESTE MOVIMIENTO ES: ', 'A, PORQUE ES UN MOVIMIENTO RECTILINEO.', 'NA', 'NA', 'B, POR QUE ES UN MOVIMIENTO PARABÓLICO', 'LAS DOS OPCIONES SON VALIDAS', 'NINGUNA DE LAS OPCIONES ES VALIDA', 'NA', 'REFORZAR MOVIMIENTO UNIFORME', '../../images/preguntas/Imagen52.png'),
(632, 12, 119999, 3, 209, 'UNA PARTICULA RECORRE DE UN PUNTO A A OTRO PUNTO B, 50 METROS EN 10 SEGUNDOS, LA VELOCIDAD DE LA PARTICULA SERÁ:  ', 'V= 5 M/SG', 'NA', 'NA', 'V= 5 KM/H', 'V= (1/5)  M/SG', 'V= (1/5)   KM /H', 'NA', 'REFORZAR MOVIMIENTO UNIFORME', '../../images/preguntas/Imagen53.png'),
(633, 3, 1, 3, 225, '1.	¿QUÉ NECESITAS PARA HACER FUNCIONAR EL TELEVISOR DE TU CASA? \r', 'ELECTRICIDAD', 'NA', 'NA', 'AGUA', 'GAS NATURAL', 'NINGUNA ', 'NA', 'REFORZAR CONOCIMIENTOS BÁSICOS SOBRE ELECTRICIDAD', 'NA'),
(634, 3, 1, 3, 257, 'OBSERVO LA IMAGEN EN LA CUAL SE COMPARA UN LÁPIZ CON UNA REGLA. SEGÚN SU LONGITUD ES MÁS GRANDE:', 'LA REGLA', 'NA', 'NA', 'EL LÁPIZ', 'SON IGUALES', 'NINGUNA RESPUESTA ES CORRECTA', 'NA', 'REFORZAR CONOCIMIENTOS BÁSICOS SOBRE MEDIDAS DE LONGITUD', '../../images/preguntas/2º P2.png'),
(635, 3, 1, 3, 256, 'EL ÓRGANO DE LOS SENTIDOS QUE ME PERMITE SABOREAR UNA DELICIOSA PALETA ES:', 'EL GUSTO', 'NA', 'NA', 'EL OLFATO', 'EL TACTO', 'LA VISTA', 'NA', 'REFORZAR CONOCIMIENTOS BÁSICOS SOBRE LOS SENTIDOS HUMANOS', '../../images/preguntas/background-1292966_1280.png'),
(636, 3, 1, 3, 256, 'EL ÓRGANO DE LOS SENTIDOS QUE ME PERMITE SENTIR LA SUAVIDAD DE UN PELUCHE ES:', 'EL TACTO', 'NA', 'NA', 'EL GUSTO', 'EL OLFATO', 'NINGÚN ÓRGANO PUEDE SENTIR LA SUAVIDAD DEL PELUCHE', 'NA', 'REFORZAR CONOCIMIENTOS BÁSICOS SOBRE LOS SENTIDOS HUMANOS', '../../images/preguntas/teddy-bear-447422_1280-1.png'),
(637, 3, 1, 3, 258, 'EL GATO ES UN ANIMAL:', 'DOMÉSTICO', 'NA', 'NA', 'ACUÁTICO', 'SALVAJE', 'NINGUNO', 'NA', 'REFORZAR CONOCIMIENTOS BÁSICOS SOBRE CARACTERÍSTICAS DE LOS ANIMALES', '../../images/preguntas/cat-2419071_1280.png'),
(638, 3, 1, 3, 258, 'UNO DE LOS SIGUIENTES ANIMALES ES INVERTEBRADO:', 'GUSANO', 'NA', 'NA', 'PERRO', 'PEZ', 'NINGUNO', 'NA', 'REFORZAR CONOCIMIENTOS BÁSICOS SOBRE CARACTERÍSTICAS DE LOS ANIMALES', '../../images/preguntas/worm-310642_1280-2.png'),
(639, 3, 1, 3, 259, 'LA PLANTA TIENE PARTES COMO LA FLOR, LA RAÍZ, LAS HOJAS Y ADEMÁS:', 'EL TALLO ', 'NA', 'NA', 'EL HUESO ', 'SISTEMA DE RIEGO', 'NINGUNA RESPUESTA ES CORRECTA', 'NA', 'REFORZAR CONOCIMIENTOS BÁSICOS SOBRE CARACTERÍSTICAS DE LAS PLANTAS', '../../images/preguntas/plants-4470464_1280-1.png'),
(640, 3, 1, 3, 258, 'LA SERPIENTE ES UN ANIMAL QUE SE MUEVE EN FORMA DE: ', 'DE ARRASTRE', 'NA', 'NA', 'DE VUELO', 'DE NADO', 'DE NINGUNA MANERA SE MUEVE', 'NA', 'REFORZAR CONOCIMIENTOS BÁSICOS SOBRE CARACTERÍSTICAS DE LOS ANIMALES', '../../images/preguntas/snake-161424_1280-1.png'),
(641, 3, 1, 3, 260, 'CON ESTA ACCIÓN PUEDO PREVENIR  Y PROTEGER MI CUERPO DEL VIRUS COVID 19:', 'LAVAR MIS MANOS CORRECTAMENTE VARIAS VECES AL DÍA', 'NA', 'NA', 'IR A PISCINA', 'LAVAR MI CABEZA VARIAS VECES', 'NINGUNA ACCIÓN PREVIENE EL VIRUS', 'NA', 'REFORZAR CONOCIMIENTOS BÁSICOS SOBRE CARACTERÍSTICAS DEL CUERPO HUMANO', '../../images/preguntas/virus-5935583_1280-1.png'),
(642, 3, 1, 3, 225, 'QUÉ NECESITAS PARA QUE FUNCIONE EL TELEVISOR DE TU CASA?', 'ENERGÍA ELÉCTRICA', 'NA', 'NA', 'GAS NATURAL', 'AGUA', 'LEÑA', 'NA', 'REFORZAR CONOCIMIENTOS BÁSICOS SOBRE ELECTRICIDAD', '../../images/preguntas/vintage-tv-1116587_640.jpg'),
(643, 4, 1, 3, 261, '¿CUÁLES SON LOS MOVIMIENTOS DE LA TIERRA?', 'ROTACIÓN Y TRASLACIÓN', 'NA', 'NA', 'EL SOL Y LA LUNA', 'LA ROTACIÓN Y LA LUNA', 'LA TIERRA NO TIENE MOVIMIENTOS', 'NA', 'REFORZAR CONOCIMIENTOS BÁSICOS SOBRE LOS PLANETAS Y EL UNIVERSO', '../../images/preguntas/earth-23593_1280-1.png'),
(644, 4, 1, 3, 262, '¿QUÉ SUSTANCIA LÍQUIDA SE CONOCE COMO DISOLVENTE UNIVERSAL?', 'EL AGUA ', 'NA', 'NA', 'EL ACEITE ', 'LA LECHE ', 'NINGUNA', 'NA', 'REFORZAR CONOCIMIENTOS BÁSICOS SOBRE EL AGUA Y SU IMPORTANCIA', '../../images/preguntas/droplet-295457_1280.png'),
(645, 4, 1, 3, 263, '¿CÓMO SE LLAMA EL PROCESO POR MEDIO DEL CUAL SE ALIMENTAN LAS PLANTAS?', 'FOTOSÍNTESIS', 'NA', 'NA', 'CIRCULACIÓN', 'OXIDACIÓN', 'LAS PLANTAS NO SE ALIMENTAN', 'NA', 'REFORZAR CONOCIMIENTOS BÁSICOS SOBRE CARACTARÍSTICAS DE LAS PLANTAS', '../../images/preguntas/plant-3759893_1280-1.png'),
(646, 4, 1, 3, 262, 'SI LLEVÁRAMOS A UN DESIERTO UN ÁRBOL DE LINDAS FLORES AMARILLAS Y LO SEMBRAMOS, EL RESULTADO QUE PODEMOS ESPERAR  SEGÚN EL MEDIO AMBIENTE EN EL CUAL FUE SEMBRADO SERÍA:', 'QUE NO CRECIERA Y MURIERA', 'NA', 'NA', 'QUE CRECIERA DE FORMA NORMAL ', 'QUE SU CRECIMIENTO SE ACELERARA', 'NO SE ESPERAN CAMBIOS', 'NA', 'REFORZAR CONOCIMIENTOS BÁSICOS SOBRE EL AGUA Y SU IMPORTANCIA', '../../images/preguntas/flowers-34592_1280-1.png'),
(647, 4, 1, 3, 264, 'EL CICLO DE VIDA DE TODOS LOS SERES VIVOS ES:', 'NACER, CRECER, REPRODUCIRSE Y MORIR', 'NA', 'NA', 'CRECER, REPRODUCIRSE Y MORIR', 'NACER, CRECER Y MORIR', 'NINGUNA RESPUESTA ES CORRECTA', 'NA', 'REFORZAR CONOCIMIENTOS BÁSICOS SOBRE CICLO DE VIDA DE LOS SERES VIVOS', '../../images/preguntas/couple-307924_1280-1.png'),
(648, 4, 1, 3, 264, 'SI TENGO EN CASA UNA MASCOTA MI DEBER ES:', 'CUIDARLA Y PROTEGERLA', 'NA', 'NA', 'CUIDARLA Y LUEGO ABANDONARLA', 'ENSEÑARLE A CUIDAR LA CASA', 'NO TENGO DEBERES CON MI MASCOLTA', 'NA', 'REFORZAR CONOCIMIENTOS BÁSICOS SOBRE CICLO DE VIDA DE LOS SERES VIVOS', '../../images/preguntas/pets-3715733_1920-1.jpg'),
(649, 4, 1, 3, 265, 'SI ESTOY JUGANDO BALONCESTO Y ME HACEN UN PASE PARA QUE LANCE EL BALÓN HACIA EL TABLERO,  PARA ESO NECESITO:', 'FUERZA PARA LANZAR', 'NA', 'NA', 'DESCANSAR LO SUFICIENTE', 'TOMAR VITAMINAS PREVIAMENTE', 'NO NECESITO NADA', 'NA', 'REFORZAR CONOCIMIENTOS BÁSICOS SOBRE FUERZA Y ENERGÍA', '../../images/preguntas/basketball-4264543_1280-1.png'),
(650, 4, 1, 3, 261, 'LA ESTACIÓN DEL AÑO DONDE LAS HOJAS SECAS CAEN DE LOS ÁRBOLES Y LAS CALLES SE LLENAN DE ESAS HOJAS ES:', 'OTOÑO ', 'NA', 'NA', 'VERANO', 'INVIERNO', 'PRIMAVERA', 'NA', 'REFORZAR CONOCIMIENTOS BÁSICOS SOBRE LOS PLANETAS Y EL UNIVERSO', '../../images/preguntas/autumn-2027847_1280-1.png'),
(651, 4, 1, 3, 261, 'EL LUGAR DONDE SE ENCUENTRAN TODOS LOS PLANETAS, LAS ESTRELLAS, LAS GALAXIAS Y LAS NUBES DE POLVO SE LLAMA:', 'EL UNIVERSO', 'NA', 'NA', 'EL AIRE', 'EL PLANETA TIERRA', 'MARTE', 'NA', 'REFORZAR CONOCIMIENTOS BÁSICOS SOBRE LOS PLANETAS Y EL UNIVERSO', '../../images/preguntas/planets-5484735_1280-1.png'),
(652, 4, 1, 3, 263, 'SI COLOCAMOS UNA SEMILLA DE LENTEJA DENTRO DE UN TARRO CON AGUA, LUZ Y ALGODÓN, SE LE PROPORCIONA UN MEDIO PARA QUE PASE LO SIGUIENTE:', 'NACE DE LA SEMILLA UNA PLANTA', 'NA', 'NA', 'NO PASA NADA PORQUE LA LENTEJA ESTÁ MUERTA', 'LA LENTEJA SE QUIEBRA Y SE VUELVE POLVO PORQUE SE SECA ', 'SE MUERE LA PLANTA', 'NA', 'REFORZAR CONOCIMIENTOS BÁSICOS SOBRE CARACTARÍSTICAS DE LAS PLANTAS', '../../images/preguntas/plants-1331667_1920-1.jpg'),
(653, 5, 1, 3, 266, 'LEE ATENTAMENTE LA INFORMACIÓN Y SEÑALA CUÁL ES LA RESPUESTA CORRECTA:', 'LA RESPUESTA CORRECTA ES LA A)', 'NA', 'NA', 'LA RESPUESTA CORRECTA ES LA B)', 'LA RESPUESTA CORRECTA ES LA C)', 'LA RESPUESTA CORRECTA ES LA D)', 'NA', 'REFORZAR CARACTERÍSTICAS DE LAS PLANTAS', '../../images/preguntas/4º 1.png'),
(654, 5, 1, 3, 267, 'SI DEJAMOS UNA PALETA QUE INICIALMENTE ESTÁ EN ESTADO SÓLIDO, AL AIRE LIBRE Y ADEMÁS ESTÁ CALENTANDO MUCHO SOL, LA PALETA PASARÁ AL ESTADO: ', 'LÍQUIDO ', 'NA', 'NA', 'SIGUE SÓLIDA', 'GASEOSO', 'NO PASA NADA', 'NA', 'REFORZAR ESTADO DE LA MATERIA', '../../images/preguntas/background-1292966_1280-1.png'),
(655, 5, 1, 3, 268, 'TODO LO QUE TIENE MASA Y OCUPA UN LUGAR EN EL ESPACIO ES:', 'LA MATERIA', 'NA', 'NA', 'EL VOLUMEN', 'LA LONGITUD', 'EL ÁREA', 'NA', 'REFORZAR CARACTERÍSTICAS DE LA MATERIA', '../../images/preguntas/crystals-155644_1280-1.png'),
(656, 5, 1, 3, 269, 'ES UN RECURSO QUE DEBO CUIDAR PARA QUE TODOS LOS SERES VIVOS PODAMOS VIVIR Y SIN ÉL NO PODEMOS HACER COSAS VITALES PARA SENTIRNOS BIEN.  SE TRATA DE:', 'EL AGUA ', 'NA', 'NA', 'EL GAS NATURAL', 'EL CARBÓN', 'EL ORO', 'NA', 'REFORZAR LOS RECURSOS NATURALES', '../../images/preguntas/drop-of-water-578897_1920-1.jpg'),
(657, 5, 1, 3, 270, 'SI ASISTO AL CONTROL DE CRECIMIENTO CON MI MÉDICO PEDIATRA, ÉL ME RECOMIENDA UNA ALIMENTACIÓN CON FRUTAS Y VERDURAS  DIARIAMENTE. LO ANTERIOR ES PARA QUE EVITE:', 'TENER PROBLEMAS DE SALUD', 'NA', 'NA', 'ACABAR CON LOS ANIMALES', 'QUEMADURAS EN MI CUERPO', 'VOLAR COMO PATOS', 'NA', 'REFORZAR EL CUERPO HUMANO', '../../images/preguntas/eat-2834549_1920.jpg'),
(658, 5, 1, 3, 270, 'CONJUNTO DE HUESOS QUE PERMITE GIRARTE, DOBLARTE Y MANTENER ERGUIDO TU CUERPO. TAMBIÉN PROTEGE A LA MÉDULA ESPINAL  Y CONTIENE UN GRAN HAZ DE NERVIOS QUE TRANSMITE LA INFORMACIÓN ENTRE EL CEREBRO Y EL RESTO DEL CUERPO. ESTE PARTE DEL CUERPO SE LLAMA:', 'LA COLUMNA VERTEBRAL', 'NA', 'NA', 'LAS COSTILLAS', 'LAS PIERNAS', 'LOS BRAZOS', 'NA', 'REFORZAR EL CUERPO HUMANO', '../../images/preguntas/sport-2245029_1920-1.jpg'),
(659, 5, 1, 3, 270, 'EL ÓRGANO QUE PERMITE DEGRADAR LA COMIDA, DIGERIRLA Y EXTRAER LOS MINERALES Y VITAMINAS ES:', 'EL ESTÓMAGO', 'NA', 'NA', 'EL HÍGADO', 'EL PÁNCREAS', 'LOS RIÑONES', 'NA', 'REFORZAR EL CUERPO HUMANO', '../../images/preguntas/digestive-41529_1280-1.png'),
(660, 5, 1, 3, 269, 'ESTA PRÁCTICA DE LA ECONOMÍA SI ES DESCONTROLADA DAÑA LAS CAPAS DEL SUELO Y LO DETERIORA. SE TRATA DE:', 'LA AGRICULTURA', 'NA', 'NA', 'LA PESCA', 'LA CARPINTERÍA', 'NADA PUEDE DAÑAR EL SUELO', 'NA', 'REFORZAR RECURSOS NATURALES', '../../images/preguntas/agriculture-147828_1280-1.png'),
(661, 5, 1, 3, 271, 'DENTRO DE UN ECOSISTEMA URBANO ENCONTRAMOS EDIFICIOS, CASAS, AUTOS, GANADO, AVIONES, AUTOBUSES, PERSONAS  ÁRBOLES Y RÍOS. ¿CUÁL DE LOS ELEMENTOS NOMBRADOS NO HACE PARTE DE ESTE TIPO DE ECOSISTEMAS?:', 'GANADO', 'NA', 'NA', 'EDIFICIOS', 'ÁRBOLES', 'CASAS', 'NA', 'REFORZAR ECOSISTEMAS', '../../images/preguntas/cow-1570656_1920-1-1.jpg'),
(662, 6, 1, 3, 272, 'ES UN EJEMPLO DE MAQUINA COMPUESTA \r', 'LA GRUA', 'NA', 'NA', 'LA POLEA', 'EL TORNILLO', 'EL TENEDOR', 'NA', 'REFORZAR MÁQUINAS SIMPLES Y COMPUESTAS', '../../images/preguntas/heavy-machinery-1139912_1280-1.png'),
(663, 6, 1, 3, 273, 'ES UN TIPO DE FUERZA:', 'LA TENSIÓN', 'NA', 'NA', 'LA LONGITUD', 'EL VOLUMEN', 'EL ÁREA', 'NA', 'REFORZAR FUERZA', '../../images/preguntas/physics-4711558_1280.png'),
(664, 6, 1, 3, 274, 'ESTE ES UN CLARO EJEMPLO DE MEZCLA HETEROGÉNEA: \r', 'ARENA Y PIEDRAS', 'NA', 'NA', 'LECHE Y CHOCOLISTO', 'PINTURA Y AGUA', 'LAS MEZCLAS SON HOMOGÉNEAS', 'NA', 'REFORZAR LA MATERIA', '../../images/preguntas/chemistry-161903_1280-1.png'),
(665, 6, 1, 3, 274, 'QUEMAR UNA HOJA DE PAPEL ES UN CAMBIO DE LA MATERIA: \r', 'QUÍMICO', 'NA', 'NA', 'FÍSICO', 'MECÁNICO', 'ESPACIAL', 'NA', 'REFORZAR LA MATERIA', '../../images/preguntas/fire-295155_1280-1.png'),
(666, 6, 1, 3, 274, 'ES UN CAMBIO FÍSICO DE LA MATERIA: \r', 'LAS MEZCLAS', 'NA', 'NA', 'LA OXIDACIÓN', 'LA COMBUSTIÓN', 'LA FERMENTACIÓN', 'NA', 'REFORZAR LA MATERIA', '../../images/preguntas/alcohol-2026363_1280-1.png'),
(667, 6, 1, 3, 274, 'LEE LA INFORMACIÓN Y RESPONDE LO QUE SUCEDE:', 'LA RESPUESTA CORRECTA ES LA A)', 'NA', 'NA', 'LA RESPUESTA CORRECTA ES LA B)', 'LA RESPUESTA CORRECTA ES LA C)', 'LA RESPUESTA CORRECTA ES LA D)', 'NA', 'REFORZAR LA MATERIA', '../../images/preguntas/5º 3.png'),
(668, 6, 1, 3, 275, 'LA NUTRICIÓN CELULAR OCURRE EN: \r', 'LAS MITOCONDRIAS', 'NA', 'NA', 'LOS RIBOSOMAS', 'LA PARED CELULAR', 'EL NUCLEOLO', 'NA', 'REFORZAR LA CÉLULA', '../../images/preguntas/analysis-2025834_1280-1.png'),
(669, 6, 1, 3, 275, 'OBSERVA LA INFORMACIÓN Y SEÑALALA RESPUESTA CORRECTA', 'LA RESPUESTA CORRECTA ES LA B)', 'NA', 'NA', 'LA RESPUESTA CORRECTA ES LA A)', 'LA RESPUESTA CORRECTA ES LA C)', 'LA RESPUESTA CORRECTA ES LA D)', 'NA', 'REFORZAR LA CÉLULA', '../../images/preguntas/5º 4 1.png'),
(670, 6, 1, 3, 275, 'LA UNIDAD  FUNDAMENTAL Y FUNCIONAL DE TODO SER VIVO ES: \r', 'LA CÉLULA', 'NA', 'NA', 'LA COLUMNA VERTEBRAL', 'EL CEREBRO', 'EL CORAZÓN', 'NA', 'REFORZAR LA CÉLULA', '../../images/preguntas/silhouette-2208079_1280-1.png'),
(671, 6, 1, 3, 276, 'ESTE ES UN TIPO DE ECOSISTEMA TERRESTRE \r', 'MATORRALES', 'NA', 'NA', 'HUMEDALES', 'COSTAS', 'MONTAÑAS', 'NA', 'REFORZAR ECOSISTEMAS', '../../images/preguntas/evergreen-2025158_1280-1.png'),
(672, 7, 1, 3, 277, 'LEE Y ANALIZA BIEN LA FIGURA. SE TRATA DE UBICAR LOS NOMBRES CORRECTOS EN LOS ESPACIOS NUMERADOS DE ACUERDO CON LAS OPCIONES SEÑALADAS A), B) O C).  SELECCIONA LA RESPUESTA CORRECTA:', 'LA RESPUESTA CORRECTA ES LA A)', 'NA', 'NA', 'LA RESPUESTA CORRECTA ES LA B)', 'LA RESPUESTA CORRECTA ES LA C)', 'NINGUNA RESPUESTA ES CORRECTA', 'NA', 'REFORZAR ECOSISTEMAS', '../../images/preguntas/6º 1def DEF.png'),
(673, 7, 1, 3, 277, 'EL CICLO DEL AGUA TIENE UNAS ETAPAS. SELECCIONE LA RESPUESTA CORRECTA SEGÚN LA INFORMACIÓN DADA: ', 'LA RESPUESTA CORRECTA ES LA A)', 'NA', 'NA', 'LA RESPUESTA CORRECTA ES LA B)', 'LA RESPUESTA CORRECTA ES LA C)', 'NINGUNA RESPUESTA ES CORRECTA', 'NA', 'REFORZAR ECOSISTEMAS', '../../images/preguntas/6º 2.png'),
(674, 7, 1, 3, 277, 'SE DENOMINAN FACTORES ABIÓTICOS A LOS SERES VIVOS QUE HABITAN UN ECOSISTEMA,  LAS RELACIONES QUE SE ESTABLECEN ENTRE ELLOS  Y LAS INFLUENCIAS QUE ÉSTOS EJERCEN SOBRE EL MEDIO FÍSICO. LA ANTERIOR DESCRIPCIÓN ES:', 'ES FALSA', 'NA', 'NA', 'ES CORRECTA ', 'NO EXISTEN FACTORES ABIÓTICOS', 'NO EXISTEN ECOSISTEMAS', 'NA', 'REFORZAR ECOSISTEMAS', '../../images/preguntas/PARA 6º 2 (2).png'),
(675, 8, 1, 3, 283, 'LEE LA INFORMACIÓN Y SELECCIONA LA RESPUESTA CORRECTA:', 'LA RESPUESTA CORRECTA ES LA A)', 'NA', 'NA', 'LA RESPUESTA CORRECTA ES LA B)', 'LA RESPUESTA CORRECTA ES LA C)', 'NINGUNA RESPUESTA ES CORRECTA', 'NA', 'REFORZAR LA CÉLULA', '../../images/preguntas/7º1 (1).png'),
(676, 8, 1, 3, 283, 'LEE ATENTAMENTE LA INFORMACIÓN RELACIONADA CON EL MÉTODO CIENTÍFICO Y SELECCIONA LA RESPUESTA CORRECTA:', 'LA RESPUESTA CORRECTA ES LA A)', 'NA', 'NA', 'LA RESPUESTA CORRECTA ES LA B)', 'LA RESPUESTA CORRECTA ES LA C)', 'NINGUNA RESPUESTA ES CORRECTA', 'NA', 'REFORZAR LA CÉLULA', '../../images/preguntas/7º2 (1).png'),
(677, 8, 1, 3, 283, 'LEE EL TEXTO Y SEÑALA LA RESPUESTA CORRECTA:', 'LA RESPUESTA CORRECTA ES LA A)', 'NA', 'NA', 'LA RESPUESTA CORRECTA ES LA B)', 'LA RESPUESTA CORRECTA ES LA C)', 'NINGUNA RESPUESTA ES CORRECTA', 'NA', 'REFORZAR LA CÉLULA', '../../images/preguntas/7º3 (1).png'),
(678, 8, 1, 3, 284, 'LEE ATENTAMENTE LA INFORMACIÓN RELACIONADA CON EL MÉTODO CIENTÍFICO Y DECIDE CUÁL ES LA RESPUESTA CORRECTA: ', 'LA RESPUESTA CORRECTA ES LA A)', 'NA', 'NA', 'LA RESPUESTA CORRECTA ES LA B)', 'LA RESPUESTA CORRECTA ES LA C)', 'NINGUNA RESPUESTA ES CORRECTA', 'NA', 'REFORZAR LA MATERIA', '../../images/preguntas/7º4 (1).png'),
(679, 8, 1, 3, 285, 'SE OBSERVA UN FENÓMENO, SE IDENTIFICAN SUS VARIABLES Y SE REALIZAN EXPERIENCIAS HASTA OBTENER UNA LEY QUE SE CUMPLA EN TODOS LOS CASOS.  LO ANTERIOR CORRESPONDE A:', 'MÉTODO EXPERIMENTAL INDUCTIVO', 'NA', 'NA', 'MÉTODO EXPERIMENTAL NO APROBADO', 'MÉTODO EXPERIMENTAL ALEATORIO', 'NINGUNA RESPUESTA ES CORRECTA', 'NA', 'REFORZAR MÉTODO CIENTÍFICO', '../../images/preguntas/people-219985_1280.jpg'),
(680, 8, 1, 3, 285, 'LEE ATENTAMENTE LA INFORMACIÓN RELACIONADA CON EL MÉTODO CIENTÍFICO Y SELECCIONA LA RESPUESTA CORRECTA:', 'LA RESPUESTA CORRECTA ES LA C)', 'NA', 'NA', 'LA RESPUESTA CORRECTA ES LA A)', 'LA RESPUESTA CORRECTA ES LA B)', 'LA RESPUESTA CORRECTA ES LA D)', 'NA', 'REFORZAR MÉTODO CIENTÍFICO', '../../images/preguntas/7º6.png'),
(681, 8, 1, 3, 285, 'LEE LA INFORMACIÓN Y DECIDE CUÁL ES LA RESPUESTA CORRECTA:', 'LA RESPUESTA CORRECTA ES LA D)', 'NA', 'NA', 'LA RESPUESTA CORRECTA ES LA A)', 'LA RESPUESTA CORRECTA ES LA B)', 'LA RESPUESTA CORRECTA ES LA C)', 'NA', 'REFORZAR MÉTODO CIENTÍFICO', '../../images/preguntas/7º7.png'),
(682, 8, 1, 3, 285, 'LEE LA INFORMACIÓN Y DECIDE CUÁL ES LA RESPUESTA CORRECTA:', 'LA RESPUESTA CORRECTA ES LA A)', 'NA', 'NA', 'LA RESPUESTA CORRECTA ES LA B)', 'LA RESPUESTA CORRECTA ES LA C)', 'LA RESPUESTA CORRECTA ES LA D)', 'NA', 'REFORZAR MÉTODO CIENTÍFICO', '../../images/preguntas/7º8.png'),
(683, 8, 1, 3, 285, 'LEE LA INFORMACIÓN Y DECIDE CUÁL ES LA RESPUESTA CORRECTA:', 'LA RESPUESTA CORRECTA ES LA 3', 'NA', 'NA', 'LA RESPUESTA CORRECTA ES LA 1', 'LA RESPUESTA CORRECTA ES LA 2', 'LA RESPUESTA CORRECTA ES LA 4', 'NA', 'REFORZAR MÉTODO CIENTÍFICO', '../../images/preguntas/683 (1).png'),
(684, 8, 1, 3, 283, 'LOS MUSGOS Y LAS PLANTAS HEPÁTICAS NO POSEEN SISTEMA DE TRANSPORTE ESPECIALIZADO DEBIDO A QUE EL MOVIMIENTO DE SUSTANCIAS SE REALIZA PRINCIPALMENTE  POR DIFUSIÓN Y POR MOVIMIENTOS CITOPLASMÁTICOS. LOS MUSGOS SON PLANTAS PEQUEÑAS Y SIN SEMILLAS QUE A MENUDO CRECEN EN LUGARES HÚMEDOS Y SOMBRÍOS. LA ANTERIOR DESCRIPCIÓN ES:', 'VERDADERA', 'NA', 'NA', 'FALSA', 'CORRESPONDE A PECES QUE SE ALIMENTAN DE MUSGOS', 'CORRESPONDE AL EUCALIPTO', 'NA', 'REFORZAR LA CÉLULA', '../../images/preguntas/mushroom-2786789_640.jpg'),
(685, 9, 1, 3, 286, 'ES TODO AQUELLO QUE TIENE MASA, OCUPA UN LUGAR EN EL ESPACIO Y SE CONVIERTE EN ENERGÍA. SUS PROPIEDADES SON AQUELLAS CARACTERÍSTICAS QUÍMICAS Y FÍSICAS QUE LA COMPONEN Y DESCRIBEN. LA DESCRIPCIÓN ANTERIOR CORRESPONDE AL CONCEPTO DE:', 'MATERIA', 'NA', 'NA', 'ENERGÍA', 'FUERZA', 'OBJETOS', 'NA', 'REFORZAR LA MATERIA', '../../images/preguntas/scissors-1008908_640.jpg'),
(686, 9, 1, 3, 287, 'LA PRIMERA TEORÍA CON BASE CIENTÍFICA SOBRE EL ÁTOMO ES LA TEORÍA DE DALTON, CUYOS POSTULADOS FUERON REVELADORES PARA SU ÉPOCA (1808). INVESTIGACIONES REALIZADAS POSTERIOR AL TRABAJO DE DALTON LLEGARON A LO QUE SE CONOCE ACTUALMENTE SOBRE EL ÁTOMO.  UNA DE LAS PRINCIPALES CONCLUSIONES CIERTAS DE LAS INVESTIGACIONES ES: ', 'EL ÁTOMO ESTÁ FORMADO POR ORBITALES', 'NA', 'NA', 'EL ÁTOMO SOLAMENTE TIENE ELECTRONES', 'EL ÁTOMO SE PUEDE DIVIDIR EN PARTES MÁS PEQUEÑAS', 'EL ÁTOMO NO SE PUEDE COMBINAR CON OTROS ÁTOMOS', 'NA', 'REFORZAR EL ÁTOMO', '../../images/preguntas/atomium-4035100_640.jpg'),
(687, 9, 1, 3, 288, 'EN LA TABLA PERIÓDICA SE ENCUENTRAN AGRUPADOS LOS ELEMENTOS QUÍMICOS. LA ACTUAL TABLA PERIÓDICA INCLUYE 134 ELEMENTOS. BUSCA UNA TABLA PERIÓDICA Y ENCUENTRA EL NÚMERO ATÓMICO DE LOS SIGUIENTES ELEMENTOS:  CARBONO, SODIO, OXÍGENO, AZUFRE, CLORO. ', 'LA RESPUESTA CORRECTA ES LA A)', 'NA', 'NA', 'LA RESPUESTA CORRECTA ES LA B)', 'LA RESPUESTA CORRECTA ES LA C)', 'LA RESPUESTA CORRECTA ES LA D)', 'NA', 'REFORZAR LA TABLA PERIÓDICA', '../../images/preguntas/8º2.png'),
(688, 9, 1, 3, 289, 'OBSERVA LA FIGURA Y DECIDE CUÁL ES LA RESPUESTA CORRECTA:', 'LA RESPUESTA CORRECTA ES LA A)', 'NA', 'NA', 'LA RESPUESTA CORRECTA ES LA B)', 'LA RESPUESTA CORRECTA ES LA C)', 'LA RESPUESTA CORRECTA ES LA D)', 'NA', 'REFORZAR EL CUERPO HUMANO', '../../images/preguntas/8º3DEF (1).png'),
(689, 9, 1, 3, 289, 'LA COLUMNA VERTEBRAL DE LOS HUMANOS ESTÁ FORMADA POR VÉRTEBRAS EN LA CANTIDAD SIGUIENTE:', '12 DORSALES, 5 LUMBARES Y 7 CERVICALES', 'NA', 'NA', '13 LUMBARES, 5 DORSALES Y 5 CERVICALES', '10 DORSALES, 4 LUMBARES Y 6 CERVICALES', '14 DORSALES, 5 LUMBARES Y 8 CERVICALES', 'NA', 'REFORZAR EL CUERPO HUMANO', '../../images/preguntas/back-4916984_1280.jpg'),
(690, 9, 1, 3, 289, 'EN CUÁL DE LOS SIGUIENTES DEDOS DE LA MANO HUMANA HAY SOLO DOS (2) FALANGES:', 'PULGAR', 'NA', 'NA', 'ANULAR', 'ÍNDICE', 'MEÑIQUE', 'NA', 'REFORZAR EL CUERPO HUMANO', '../../images/preguntas/common-1300520_1280 (1).png'),
(691, 9, 1, 3, 289, '¿CUÁL ES EL ÚNICO HUESO MÓVIL DE LA CARA?', 'MAXILAR INFERIOR', 'NA', 'NA', 'MAXILAR SUPERIOR', 'ETMOIDES', 'VÓMER', 'NA', 'REFORZAR EL CUERPO HUMANO', '../../images/preguntas/skull-2028286_1280 (1) (1) (1) (1) (1).png'),
(692, 9, 1, 3, 289, 'LOS MINERALES QUE AYUDAN A NUESTROS HUESOS SON:', 'MAGNESIO, FÓSFORO Y CALCIO PRINCIPALMENTE', 'NA', 'NA', 'BORO, CARBONO Y MAGNESIO PRINCIPALMENTE', 'ZINC, AZUFRE Y SODIO PRINCIPALMENTE', 'POTASIO, CALCIO Y YODO PRINCIPALMENTE', 'NA', 'REFORZAR EL CUERPO HUMANO', '../../images/preguntas/skeletons-303877_1280.png'),
(693, 9, 1, 3, 289, 'EL CORAZÓN ESTÁ FORMADO POR TEJIDO MUSCULAR ESTRIADO, SIN EMBARGO, LOS MÚSCULOS ESTRIADOS O ESQUELÉTICOS SON:', 'VOLUNTARIOS', 'NA', 'NA', 'INVOLUNTARIOS', 'FRÁGILES', 'CONTRÁCTILES', 'NA', 'REFORZAR EL CUERPO HUMANO', '../../images/preguntas/ekg-2069872_1280.png'),
(694, 9, 1, 3, 289, 'SE DICE QUE LOS MÚSCULOS NECESITAN MUCHA ENERGÍA Y  UN ORGÁNULO IMPORTANTE EN LAS CÉLULAS DE LOS MÚSCULOS ENCARGADO DE LA TRANSMISIÓN DE ENERGÍA ES: ', 'LA MITOCONDRIA', 'NA', 'NA', 'EL LISOSOMA', 'EL RIBOSOMA', 'EL NÚCLEOLO', 'NA', 'REFORZAR EL CUERPO HUMANO', '../../images/preguntas/gym-32740_1280 (1).png'),
(695, 9, 1, 3, 289, 'LEE LA INFORMACIÓN Y DECIDE CUÁL ES LA RESPUESTA CORRECTA: ', 'LA RESPUESTA CORRECTA ES LA 1', 'NA', 'NA', 'LA RESPUESTA CORRECTA ES LA 2', 'LA RESPUESTA CORRECTA ES LA 3', 'NINGUNA RESPUESTA ES CORRECTA', 'NA', 'REFORZAR EL CUERPO HUMANO', '../../images/preguntas/8º 4.png'),
(696, 9, 1, 3, 289, 'LEE LA INFORMACIÓN, OBSERVA LA FIGURA Y SELECCIONA LA RESPUESTA CORRECTA:', 'LA RESPUESTA CORRECTA ES LA 1', 'NA', 'NA', 'LA RESPUESTA CORRECTA ES LA 2', 'LA RESPUESTA CORRECTA ES LA 3', 'NINGUNA RESPUESTA ES CORRECTA', 'NA', 'REFORZAR EL CUERPO HUMANO', '../../images/preguntas/8º 5 (1).png'),
(697, 9, 1, 3, 289, 'ESTA FUNCIÓN PERMITE QUE LOS SERES VIVOS CAPTEN LO QUE SUCEDE EN EL EXTERIOR Y SE RELACIONEN CON LOS CAMBIOS DEL MEDIO AMBIENTE.  EN ESTA FUNCIÓN INTERVIENEN LOS SENTIDOS Y EL SISTEMA NERVIOSO.  LO ANTERIOR HACE REFERENCIA ALA FUNCIÓN DE:', 'FUNCIÓN DE RELACIÓN', 'NA', 'NA', 'FUNCIÓN DE REPRODUCCIÓN', 'FUNCIÓN DE NUTRICIÓN', 'FUNCIÓN DE SUPERVIVENCIA', 'NA', 'REFORZAR EL CUERPO HUMANO', '../../images/preguntas/animals-1782013_1280.png'),
(698, 9, 1, 3, 289, 'ESTE SISTEMA DESEMPEÑA UN PAPEL CLAVE AL AYUDAR A COORDINAR E INTEGRAR REACCIONES PSICOLÓGICAS COMPLEJAS. ESTE SISTEMA ESTÁ COMPUESTO  \r POR GLÁNDULAS QUE SEGREGAN UNAS SUSTANCIAS QUÍMICAS LLAMADAS HORMONAS. LAS HORMONAS PUEDEN CONTROLAR LA CONDUCTA Y EL DESARROLLO DE UNA PERSONA.  LO ANTERIOR HACE REFERENCIA A:', 'EL SISTEMA ENDOCRINO', 'NA', 'NA', 'LA IMPORTANCIA DE LAS HORMONAS', 'LAS HORMONAS', 'EL SISTEMA NERVIOSO', 'NA', 'REFORZAR EL CUERPO HUMANO', '../../images/preguntas/three-d-1781597_1280 (1).png'),
(699, 9, 1, 3, 290, 'ELLAS SURGEN DE LA NECESIDAD DE PODER EXPRESAR LAS MAGNITUDES FÍSICAS COMO POR EJEMPLO LA DISTANCIA ENTRE UN PUNTO A Y UN PUNTO B. LO ANTERIOR HACE REFERENCIA A:', 'UNIDADES DE MEDIDA', 'NA', 'NA', 'SISTEMA KMS', 'SISTEMA INTERNACIONAL DE MEDIDAS', 'LA LONGITUD', 'NA', 'REFORZAR MOVIMIENTO', '../../images/preguntas/inch-tape-311800_1280.png'),
(700, 10, 1, 3, 291, 'SI UNA PERSONA TIENE UNA AFECCIÓN EN LA MÉDULA ÓSEA Y SU PRODUCCIÓN DE GLÓBULOS ROJOS  ES MUY BAJA Y ADICIONALMENTE EL AZÚCAR Y AMINOÁCIDOS EN SANGRE ESTÁ POR DEBAJO DE LO NORMAL, ES UN DIAGNÓSTICO QUE PERMITE AFIRMAR QUE A NIVEL CELULAR SUCEDE LO SIGUIENTE:', '1. LAS RESPUESTAS 2 Y 3 SON CIERTAS', 'NA', 'NA', '2. LA SÍNTESIS DE PROTEÍNAS SE DETIENE', '3.  LA RESPIRACIÓN CELULAR SE DETIENE', 'NINGUNA RESPUESTA ES CORRECTA', 'NA', 'REFORZAR FUNCIÓN CELULAR', '../../images/preguntas/sad-3176411_1280 (1).png'),
(701, 10, 1, 3, 291, 'LAS PROTEÍNAS SON MOLÉCULAS QUE ESTÁN FORMADAS POR LADRILLOS O PARTES MUY DISTINTAS QUE CONFORMAN EL ADN Y EL ARN.  EN ESTE CASO, ESOS LADRILLOS SE DENOMINAN AMINOÁCIDOS Y HAY 22 ESENCIALES  CUYA COMBINACIÓN DA LUGAR  A DISTINTAS PROTEÍNAS.  SEGÚN EL ANTERIOR TEXTO, LOS LADRILLOS HACEN REFERENCIA A:', 'LOA AMINOÁCIDOS', 'NA', 'NA', 'EL ARN', 'LAS PROTEÍNAS', 'EL ADN', 'NA', 'REFORZAR FUNCIÓN CELULAR', '../../images/preguntas/dna-5297378_1920 (1).jpg');
INSERT INTO `tbl_preguntas` (`id`, `id_grado`, `id_materia`, `id_tipo_pregunta`, `id_tema`, `pregunta`, `r1ok`, `r2ok`, `r3ok`, `r1no`, `r2no`, `r3no`, `r4no`, `retroalimentacion`, `imagen`) VALUES
(702, 10, 1, 3, 291, 'EN ESTA FASE SE PRODUCE LA CONDENSACIÓN DE TODO EL MATERIAL GENÉTICO QUE NORMALMENTE EXISTE EN FORMA DE CROMATINA CONDENSADA DENTRO DE UNA ESTRUCTURA ALTAMENTE ORDENADA LLAMADA CROMOSOMA Y EL DESARROLLO BIPOLAR  DEL HUSO ACROMÁTICO. LA ANTERIOR DESCRIPCIÓN CORRESPONDE A:', 'PROFASE DE LA MEIOSIS', 'NA', 'NA', 'ANAFASE DE LA MEIOSIS', 'METAFASE DE LA MEIOSIS', 'NINGUNA RESPUESTA ES CORRECTA', 'NA', 'REFORZAR FUNCIÓN CELULAR', '../../images/preguntas/mitosis-3876669_1920.jpg'),
(703, 11, 10, 3, 296, 'ES LA SUSTANCIA QUE FORMA LOS CUERPOS FÍSICOS Y SE TRATA DE TODO AQUELLO QUE TIENE MASA Y OCUPA UN LUGAR EN EL ESPACIO. LO ANTERIOR CORRESPONDE AL CONCEPTO DE:', 'MATERIA', 'NA', 'NA', 'ENERGÍA', 'TRABAJO', 'FUERZA', 'NA', 'REFORZAR LA MATERIA', '../../images/preguntas/coffee-3989866_1920.jpg'),
(704, 11, 10, 3, 296, 'PARTE MÁS PEQUEÑA DE UNA SUSTANCIA QUE NO SE PUEDE DESCOMPONER QUÍMICAMENTE.  LA ANTERIOR DEFINICIÓN CORRESPONDE A:', 'ÁTOMO', 'NA', 'NA', 'ELECTRÓN', 'PROTÓN', 'NEUTRÓN', 'NA', 'REFORZAR LA MATERIA', '../../images/preguntas/atom-29539_1280 (1).png'),
(705, 11, 10, 3, 297, 'LA CONFIGURACIÓN ELECTRÓNICA DE ESTE ELEMENTO ES 1S2 2S2 3S2. ES UN ELEMENTO CON CUATRO ELECTRONES DE VALENCIA LIBRES QUE LE PERMITE ENLAZARSE A OTROS ÁTOMOS A LA HORA DE FORMAR OTROS COMPUESTOS. EL ELEMENTO ES:', 'CARBONO', 'NA', 'NA', 'AZUFRE', 'POTASIO', 'CLORO', 'NA', 'REFORZAR TABLA PERIÓDICA', '../../images/preguntas/chemistry-2389151_1280.png'),
(706, 11, 10, 3, 297, 'BUSCA UNA TABLA PERIÓDICA Y ENCUENTRA EL NÚMERO ATÓMICO DE LOS SIGUIENTES ELEMENTOS QUÍMICOS:  CARBONO, HIDRÓGENO, YODO, FLUOR, AZUFRE ', 'C:6, H: 1, I: 53, F: 9, S:16 RESPECTIVAMENTE', 'NA', 'NA', 'C: 5, H: 2, I: 53, F: 8, S: 16 RESPECTIVAMENTE', 'C: 4, H: 2, I: 53, F: 4, S: 16 RESPECTIVAMENTE', 'C: 4, H: 2, I: 53, F: 8, S: 26 RESPECTIVAMENTE', 'NA', 'REFORZAR TABLA PERIÓDICA', '../../images/preguntas/periodic-table-42115_1280 (1).png'),
(707, 11, 10, 3, 297, 'SON AQUELLOS ELEMENTOS QUÍMICOS QUE ESTÁN SITUADOS EN LA PARTE CENTRAL DEL SISTEMA PERIÓDICO , EN EL BLOQUE D,  CUYA PRINCIPAL CARACTERÍSTICA ES LA INCLUSIÓN  EN SU CONFIGURACIÓN ELECTRÓNICA  DEL ORBITAL D PARCIALMENTE LLENO DE ELECTRONES.  A ESTE GRUPO DE ELEMENTOS PERTENECE EL HIERRO, EL COBRE Y LA PLATA. ESTAMOS HABLANDO DE:', 'METALES DE TRANSICIÓN', 'NA', 'NA', 'HALÓGENOS', 'NO METALES', 'METALES', 'NA', 'REFORZAR TABLA PERIÓDICA', '../../images/preguntas/molecules-1818492_640.jpg'),
(708, 11, 10, 3, 297, 'EN LA FÓRMULA QUÍMICA DEL AGUA H2O, EL OXÍGENO TRABAJA CON VALENCIA:', '-2', 'NA', 'NA', '-4', '-1', '-3', 'NA', 'REFORZAR TABLA PERIÓDICA', '../../images/preguntas/chemist-1816371_1280.jpg'),
(709, 11, 10, 3, 297, 'EN LA FÓRMULA DEL CLORURO DE SODIO, EL SODIO TRABAJA CON VALENCIA:', '+1', 'NA', 'NA', '+2', '+3', '-1', 'NA', 'REFORZAR TABLA PERIÓDICA', '../../images/preguntas/salt-1778597_640.jpg'),
(710, 11, 10, 3, 299, 'ES EL PROCESO QUE PERMITE GARANTIZAR LA CONSERVACIÓN DE LA MATERIA. LO ANTERIOR CORRESPONDE A:', 'BALANCEO DE ECUACIONES', 'NA', 'NA', 'PRODUCCIÓN DE ALIMENTOS', 'BALANCEO DE ELECTRONES', 'BALANCEO DE PROTONES', 'NA', 'REFORZAR SOLUCIONES QUÍMICAS', '../../images/preguntas/laboratory-2815641_640.jpg'),
(711, 11, 10, 3, 298, 'ES EL CÁLCULO PARA LA ECUACIÓN QUÍMICA BALANCEADA QUE DETERMINARÁ LAS PROPORCIONES ENTRE REACTIVOS  Y PRODUCTOS EN UNA REACCIÓN EN UNA REACCIÓN QUÍMICA. EL ANTERIOR CONCEPTO CORRESPONDE A:', 'ESTEQUIMETRÍA', 'NA', 'NA', 'DESTILACIÓN', 'FUNCIONES QUÍMICAS', 'GRUPOS FUNCONALES INORGÁNICOS', 'NA', 'REFORZAR ECUACIONES QUÍMICAS', '../../images/preguntas/test-214185_1280.jpg'),
(712, 2, 5, 2, 42, 'EN LA IMAGEN SITUIENTE ¿CUANTAS FIGURAS DE COLOR MORADO HAY?', '15', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR CONTEO (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/estimacion1_1.png'),
(713, 3, 5, 2, 50, 'REALIZA LA SIGUIENTE SUMA 1.050 + 200 (AGREGA EL PUNTO QUE INDICA MIL)', '1.250', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR SUMA (NUMÉRICO-VARIACIONAL)', 'NA'),
(714, 3, 5, 3, 47, 'EN EL ARCOIRIS HAY 7 COLORES. ¿CUÁLES SON? SELECCIONA LA RESPUESTA CORRECTA', 'ROJO,ANARANJADO,AMARILLO,VERDE,AZUL,MORADO,VIOLETA', 'NA', 'NA', 'ROJO,ANARANJADO,AMARILLO,VERDE,AZUL,MORADO,NEGRO', 'ANARANJADO,AMARILLO,VERDE,AZUL,MORADO,VIOLETA', 'AZUL,MORADO,VIOLETA,LIMÓN,PERA', 'NA', 'REFORZAR COLORES (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/colores grado 2.JPG'),
(715, 3, 5, 3, 52, 'EN LA IMAGEN HAY ESCRITOS 5 NÚMEROS. CUÁLES SON? SELECCIONA LA RESPUESTA CORRECTA.', '100,1.000,900,300,400,500.', 'NA', 'NA', '1.100,1.000,300,400,500.', '100,1.000,300,400,600.', '100,1.000,800,400,500.', 'NA', 'REFORZAR NÚMEROS DE 100 EN 100 HASTA 1000 (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/numeros en letras.JPG'),
(716, 3, 1, 3, 258, 'EL TIGRE ES UN ANIMAL:', 'SALVAJE', 'NA', 'NA', 'DOMÉSTICO', 'ACUÁTICO', 'REPTIL', 'NA', 'REFORZAR CONOCIMIENTOS BÁSICOS SOBRE CARACTERÍSTICAS DE LOS ANIMALES', '../../images/preguntas/tiger-g5104e210c_640.png'),
(717, 5, 1, 3, 267, 'AL HERVIR AGUA EN UNA OLLA CON TAPA, DICHA SUSTANCIA SE EVAPORA, PERO LAS GOTAS EN LA TAPA INDICAN QUE EL AGUA:', 'SE CONDENSÓ', 'NA', 'NA', 'SE EVAPORÓ', 'SE LICUÓ', 'SE SECÓ', 'NA', 'REFORZAR ESTADO DE LA MATERIA', '../../images/preguntas/HERVIR AGUA.jpg'),
(718, 7, 1, 3, 278, 'EL INSTRUMENTO QUE SIRVE PARA MEDIR LA FUERZA FÍSICA SE LLAMA:', 'DINAMÓMETRO', 'NA', 'NA', 'TENSIÓMETRO', 'TERMÓMETRO', 'BÁSCULA', 'NA', 'REFORZAR FUERZA', '../../images/preguntas/DINAMÓMETRO.png'),
(719, 7, 1, 3, 278, 'LOS TRES TIPOS FUNDAMENTALES DE FUERZA (EN FÍSICA) SON:', 'GRAVITACIONAL, ELECTROMAGNÉTICA Y NUCLEAR', 'NA', 'NA', 'GRAVITACIONAL, NUCLEAR Y MENTAL', 'ELECTROMAGNÉTICA, ACÚSTICA Y RADAR', 'NUCLEAR, ATÓMICA Y PROPULSORA', 'NA', 'REFORZAR FUERZA', '../../images/preguntas/FUERZA.png'),
(720, 7, 1, 3, 279, 'SON CUALIDADES DEL SONIDO:', 'EL TIMBRE Y LA DURACIÓN', 'NA', 'NA', 'PERSISTENCIA Y ALTURA', 'INTENSIDAD Y CHOQUE', 'TONO Y ACÚSTICA', 'NA', 'REFORZAR EL SONIDO', '../../images/preguntas/SONIDO.jpg'),
(721, 7, 1, 3, 280, 'ES UN CONJUNTO DE FENÓMENOS PRODUCIDOS POR EL MOVIMIENTO E INTERACCIÓN ENTRE LAS CARGAS ELÉCTRICAS  POSITIVAS Y NEGATIVAS DE LOS CUERPOS FÍSICOS.  EL ANTERIOR CONCEPTO CORRESPONDE A:', 'ELECTRICIDAD', 'NA', 'NA', 'POTENCIAL ELECTROMAGNÉTICO', 'SONIDO', 'VIBRACIONES ELÉCTRICAS', 'NA', 'REFORZAR LA ELECTRICIDAD', '../../images/preguntas/ELECTRICIDAD.jpg'),
(722, 7, 1, 3, 280, 'LOS MEJORES CONDUCTORES ELÉCTRICOS SON:', 'LOS METALES', 'NA', 'NA', 'LOS PLÁSTICOS', 'MADERA', 'EL CARBÓN', 'NA', 'REFORZAR LA ELECTRICIDAD', '../../images/preguntas/electricity-gb73a5260b_640.jpg'),
(723, 7, 1, 3, 281, 'EN LA REPRODUCCIÓN SEXUAL DE LAS PLANTAS INTERVIENEN:', 'LAS FLORES Y LAS SEMILLAS', 'NA', 'NA', 'LAS FLORES Y LOS TALLOS', 'LAS HOJAS Y LOS TALLOS', 'LAS SEMILLAS Y LAS RAÍCES', 'NA', 'REFORZAR REPRODUCCIÓN DE PLANTAS', '../../images/preguntas/flowers-g3e86bcb74_640.jpg'),
(724, 7, 1, 3, 282, 'SU FUNCIÓN ES ELIMINAR MEDIANTE UN PROCESO DE FILTRACIÓN LOS PRODUCTOS DE DESECHO  RESULTANTES DEL METABOLISMO CELULAR O INCORPORADO DESDE EL MEDIO AMBIENTE. LA ANTERIOR DESCRIPCIÓN CORRESPONDE A:', 'FUNCIÓN DEL SISTEMA EXCRETOR EN ANIMALES', 'NA', 'NA', 'FUNCIÓN DEL METABOLISMO ANIMAL', 'FUNCIÓN DEL SISTEMA ENDDOCRINO', 'FUNCIÓN DEL SISTEMA CIRCULATORIO', 'NA', 'REFORZAR METABOLISMO HUMANO', '../../images/preguntas/EXCRETOR.jpg'),
(725, 7, 1, 3, 282, 'TRANSFORMAR GLÚCIDOS, LÍPIDOS Y PROTEÍNAS EN UNIDADES MÁS SENCILLAS PARA QUE PUEDAN SER ABSORBIDAS Y TRANSPORTADAS POR LA SANGRE, CORRESPONDE A:', 'LA FUNCIÓN DIGESTIVA EN ANIMALES', 'NA', 'NA', 'LA FUNCIÓN CIRCULATORIA EN ANIMALES', 'LA FUNCIÓN METABÓLICA EN HUMANOS', 'LA FUNCIÓN REPRODUCTIVA EN PLANTAS', 'NA', 'REFORZAR METABOLISMO HUMANO', '../../images/preguntas/donkey-gb813f518f_640.jpg'),
(726, 10, 1, 3, 292, 'TODO CUERPO PERMANECE EN SU ESTADO DE REPOSO O EN MOVIMIENTO RECTILÍNEO UNIFORME A MENOS QUE OTROS CUERPOS  ACTÚEN SOBRE ÉL.  EL ANTERIOR CONCEPTO CORRESPONDE A:', 'PRIMERA LEY DE NEWTON O LEY DE LA INERCIA', 'NA', 'NA', 'SEGUNDA LEY DE NEWTON O LEY DE MOVIMIENTO', 'TERCERA LEY DE NEWTON O LEY DE LA ESTÁTICA', 'SEGUNDA  LEY DE NEWTON O LEY DE LA REACCIÓN', 'NA', 'REFORZAR TIPOS DE MOVIMIENTO', '../../images/preguntas/INERCIA.jpg'),
(727, 10, 1, 3, 293, 'TRES ESCALAS DE TEMPERATURA SON:', 'KELVIN, FAHRENHEIT Y CELCIUS', 'NA', 'NA', 'FAHRENHEIT, SEXAGESIMAL Y TERMOMÉTRICA', 'CELSIUS, KELVIN Y GRAVIMÉTRICA', 'KELVIN, GRAVIMÉTRICA Y TERMOMÉTRICA', 'NA', 'REFORZAR ESCALAS DE TEMPERATURA', '../../images/preguntas/thermometer-ga2265df65_640.jpg'),
(728, 10, 1, 3, 293, 'SIETE (7) GRADOS CENTÍGRADOS EN GRADOS KELVIN EQUIVALEN A:', '280 GRADOS KELVIN', 'NA', 'NA', '273 GRADOS KELVIN', '270 GRADOS KELVIN', '266 GRADOS KELVIN', 'NA', 'REFORZAR ESCALAS DE TEMPERATURA', '../../images/preguntas/thermometer-g8505fe897_640.jpg'),
(729, 10, 1, 3, 294, 'EN LA TEORÍA CINÉTICA DE LOS GASES:', 'EL GAS ES CONSIDERADO PURU', 'NA', 'NA', 'EL GAS NO ES PURO Y POR LO TANTO HAY EQUILIBRIO', 'LA SEPARACIÓN ENTRE LAS MOLÉCULAS DEL GAS ES PEQUEÑA', 'LA ENERGÍA CINÉTICA DE LAS MOLÉCULAS DEL GAS VARÍA', 'NA', 'REFORZAR TEORÍA Y LEYES DE LOS GASES', '../../images/preguntas/GAS.jpg'),
(730, 10, 1, 3, 295, 'EL ENLACE QUÍMICO COVALENTE SE PRODUCE ENTRE DOS ÁTOMOS:', 'CUANDO SE UNEN Y COMPARTEN UNO O MÁS ELECTRONES', 'NA', 'NA', 'CUANDO EL ÁTOMO PIERDE ELECTRONES', 'CUANDO SE COMPARTEN PROTONES DEL ÚLTIMO NIVEL', 'CUANDO COMPARTEN ENERGÍA CINÉTICA Y POTENCIAL', 'NA', 'REFORZAR ENLACES QUÍMICOS', '../../images/preguntas/molecule-ga172d301c_640.jpg'),
(731, 10, 1, 3, 295, 'EL ENLACE QUÍMICO IÓNICO ENTRE ÁTOMOS:', 'SE FORMA POR LA TRANSFERENCIA DE ELECTRONES', 'NA', 'NA', 'SE FORMA POR LA TRANSFERENCIA DE NEUTRONES', 'SE FORMA POR LA TRANSFERENCIA DE NEUTRONES', 'SE FORMA POR LA TRANSFERENCIA DE ENERGÍA', 'NA', 'REFORZAR ENLACES QUÍMICOS', '../../images/preguntas/chemistry-ga9e891439_640.jpg'),
(732, 10, 1, 3, 294, 'SEGÚN LA LEY DE GAY LUSSAC PARA LOS GASES, HAY UNA RELACIÓN DE:', 'TEMPERATURA Y PRESIÓN A VOLUMEN CONSTANTE', 'NA', 'NA', 'TEMPERATURA Y PRESIÓN A VOLUMEN VARIABLE', 'VOLUMEN Y PRESIÓN A TEMPERATURA CONSTANTE', 'PRESIÓN Y VOLUMEN A TEMPERATURA CONSTANTE', 'NA', 'REFORZAR TEORÍA Y LEYES DE LOS GASES', '../../images/preguntas/Gay Lussac.png'),
(733, 11, 10, 3, 299, 'SELECCIONE EL SIGNIFICADO CORRESPONDIENTE A PH:', 'POTENCIAL DE HIDROGENO', 'NA', 'NA', 'PARTÍCULAS DE HIDROGENO', 'NIVEL DE ACIDEZ Y BASICIDAD DE LOS LÍQUIDOS', 'PARTÍCULAS DE HIDRÓGENO,  HIDRÓXIDOS E HIDRONIOS', 'NA', 'REFORZAR SOLUCIONES QUÍMICAS', '../../images/preguntas/pH.png'),
(734, 11, 10, 3, 299, 'TIPO DE SUSTANCIA QUE AL DISOCIARSE PRODUCE CONCENTRACIONES DE IONES H+', 'ÁCIDOS', 'NA', 'NA', 'HIDRÓXIDOS', 'SALES', 'AGUA', 'NA', 'REFORZAR SOLUCIONES QUÍMICAS', '../../images/preguntas/hidrógeno.png'),
(735, 11, 10, 3, 299, 'INDICA EL NÚMERO DE MOLES DE SOLUTO CONTENIDOS EN UN KILOGRAMOS DE SOLVENTE. ', 'MOLALIDAD', 'NA', 'NA', 'NORMALIDAD', 'MOLARIDAD', 'FRACCIÓN MOLAR', 'NA', 'REFORZAR SOLUCIONES QUÍMICAS', '../../images/preguntas/SOLVENTE.jpg'),
(736, 11, 10, 3, 299, 'SI SE DESEA DISMINUIR LA CONCENTRACIÓN DE UNA SOLUCIÓN DE NAOH SIN VARIAR LA CANTIDAD DE SOLUTO, ES NECESARIO: ', 'ADICIONAR SOLVENTE', 'NA', 'NA', 'EVAPORAR LA SOLUCIÓN', 'AUMENTAR EL VOLUMEN DEL RECIPIENTE', 'ADICIONAR AZÚCAR', 'NA', 'REFORZAR SOLUCIONES QUÍMICAS', '../../images/preguntas/SAL.jpg'),
(737, 12, 10, 3, 306, 'LA FORMACIÓN DE UN ENLACE QUÍMICO ES EL RESULTADO DE:', 'TRANSFERENCIA O COMPARTICIÓN DE ELECTRONES', 'NA', 'NA', 'UN CAMBIO DE VALENCIA', 'TRANSFERENCIA DE ELECTRONES', 'ASOCIACIÓN DE ENLACES QUÍMICOS', 'NA', 'REFORZAR ENLACES QUÍMICOS', '../../images/preguntas/QUIMICA 2.jpg'),
(738, 12, 10, 3, 306, 'EN EL GRÁFICO QUE SE MUESTRA, EL ION CON CARGA NEGATIVA ES:', 'CLORO', 'NA', 'NA', 'CARBONO', 'NO HAY IONES', 'LOS DOS ELEMENTOS SON NEUTROS', 'NA', 'REFORZAR ENLACES QUÍMICOS', '../../images/preguntas/ENLACE1.png'),
(739, 3, 5, 3, 50, 'OBSERVA LA IMAGEN. SUMA Y SELECCIONA LA RESPUESTA CORRECTA (DEBES TENER EN CUENTA EL PUNTO DE MIL. EJEMPLO 5.640)', '5.650', 'NA', 'NA', '5.655', '5.750', '6.550', 'NA', 'REFORZAR SUMA (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/10Diapositiva.JPG'),
(740, 3, 5, 3, 50, 'OBSERVA LA IMAGEN. SUMA Y SELECCIONA LA RESPUESTA CORRECTA, DEBES TENER EN CUENTA EL PUNTO DE MIL. EJEMPLO 23.640', '14.695', 'NA', 'NA', '14.595', '14.685', '14695', 'NA', 'REFORZAR SUMA (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/11Diapositiva.JPG'),
(741, 3, 5, 3, 53, 'OBSERVA LA IMAGEN. RESTA Y SELECCIONA LA RESPUESTA CORRECTA, DEBES TENER EN CUENTA EL PUNTO DE MIL. EJEMPLO 1.211', '1.150', 'NA', 'NA', '1150', '1.100', '2.150', 'NA', 'REFORZAR RESTAS (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/8Diapositiva.JPG'),
(742, 3, 5, 3, 53, 'OBSERVA LA IMAGEN. RESTA Y SELECCIONA LA RESPUESTA CORRECTA, DEBES TENER EN CUENTA EL PUNTO DE MIL. EJEMPLO 2.050 ', '2.702', 'NA', 'NA', '2.071', '2.082', '2072', 'NA', 'REFORZAR RESTAS (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/9Diapositiva.JPG'),
(743, 3, 5, 3, 49, 'OBSEVA LA IMAGEN. PEDRO NECESITA SABER CUANTAS CUCHARAS HAY EN TOTAL. SELECCIONA LA RESPUESTA CORRECTA.', '13', 'NA', 'NA', '12', '1.3', '14', 'NA', 'REFORZAR CONTEO (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/2 CUCHARAS.JPG'),
(744, 3, 5, 3, 48, 'OBSERVA LA IMAGEN DE PANCHO, KITTY Y TOMY, ¿QUIÉN ES EL MEDIANO? ', 'KITTY', 'NA', 'NA', 'TOMY', 'PANCHO', 'LILA', 'NA', 'REFORZAR NOCIÓN ESPACIAL (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/2nocion.JPG'),
(745, 3, 9, 3, 236, '¿QUE FUNCIÓN CUMPLE UN ARTEFACTO TECNOLÓGICO?', 'DESEMPEÑAN UNA TAREA ESPECÍFICA', 'NA', 'NA', 'GENERAN INGREDIENTES PARA UNA RECETA FAMILIAR', ' SON PROGRAMA OFIMÁTICOS PARA ELABORAR TAREAS', 'REALIZAN  PROGRAMAS  PARA ELABORAR JUEGOS', 'NA', 'REFORZAR ¿QUÉ SON LOS ARTEFACTOS TECNOLÓGICOS?', 'NA'),
(746, 3, 9, 3, 234, 'LA RUEDA ES UNO DE LOS INVENTOS FUNDAMENTALES EN LA HISTORIA DE LA HUMANIDAD, CUAL FUE UNA DE SUS PRIMERAS FUNCIONES Y LA MÁS CONOCIDA:', 'EL TRANSPORTE ', 'NA', 'NA', 'LA ELECTRICIDAD', 'LA MAQUINARIA ', 'LA ARQUEOLOGÍA ', 'NA', 'REFORZAR INVENTOS E INNOVACIONES TECNOLÓGICAS', 'NA'),
(747, 3, 9, 3, 236, 'LA SIGUIENTE IMAGEN ES UN:', 'ARTEFACTO TECNOLÓGICO', 'NA', 'NA', 'UN MOTOR ', 'UN RECURSO ECOLÓGICO ', 'UN RECURSO DIGITAL ', 'NA', 'REFORZAR ¿QUÉ SON LOS ARTEFACTOS TECNOLÓGICOS?', '../../images/preguntas/LICU.jpg'),
(748, 3, 9, 3, 237, 'LAS SEÑALES DE TRÁNSITO NOS SIRVEN:', 'PARA EVITAR ACCIDENTES EN LA VÍA', 'NA', 'NA', 'PARA JUGAR A LOS CARRITOS', 'PARA QUE  HAYA CARRERAS DE CARROS ', 'PARA LLEGAR A TIEMPO AL PARQUE  ', 'NA', 'REFORZAR LAS SEÑALES DE TRÁNSITO', 'NA'),
(749, 3, 9, 3, 236, '¿QUÉ APARATO SIRVE PARA FACILITARNOS LA INFORMACIÓN Y LA COMUNICACIÓN, LA UTILIZAMOS PARA ELABORAR DIFERENTES ACTIVIDADES ESCOLARES?', 'COMPUTADOR ', 'NA', 'NA', 'TELEVISOR ', 'CONTROL REMOTO', 'RADIO', 'NA', 'REFORZAR ¿QUÉ SON LOS ARTEFACTOS TECNOLÓGICOS?', 'NA'),
(750, 3, 9, 3, 235, 'LA HERRAMIENTA POWERPOINT NOS SIRVE PRINCIPALMENTE PARA:', 'CREAR PRESENTACIONES CON TEXTO, IMÁGENES,AUDIO.', 'NA', 'NA', 'CREAR VIDEOS Y AUDIOS.', 'HACER CÁLCULOS MATEMÁTICOS.  ', 'VER MIS SERIES FAVORITAS.', 'NA', 'REFORZAR HERRAMIENTAS OFIMÁTICAS', 'NA'),
(751, 3, 9, 3, 235, 'LA HERRAMIENTA WORD NOS SIRVE PRINCIPALMENTE PARA:', 'PARA ESCRIBIR UN DOCUMENTO DE TEXTO', 'NA', 'NA', 'CREAR PRESENTACIONES CON IMÁGENES', 'PARA VER FOTOGRAFÍAS ', 'VER MIS SERIES FAVORITAS ', 'NA', 'REFORZAR HERRAMIENTAS OFIMÁTICAS', 'NA'),
(752, 3, 9, 3, 235, 'LA SIGUIENTE IMAGEN CORRESPONDE AL PROGRAMA OFIMÁTICO: ', 'POWERPONINT', 'NA', 'NA', 'EXCEL', 'WORD', 'WHATSAPP', 'NA', 'REFORZAR HERRAMIENTAS OFIMÁTICAS', '../../images/preguntas/POWER.jpg'),
(753, 3, 9, 3, 235, 'EN UN DOCUMENTO DE POWERPOINT, PARA AGREGAR UNA NUEVA DIAPOSITIVA DEBO SELECCIONAR', 'NUEVA DIAPOSITIVA', 'NA', 'NA', 'DISEÑO', 'ESTABLECER', 'SECCIÓN', 'NA', 'REFORZAR HERRAMIENTAS OFIMÁTICAS', '../../images/preguntas/pawer.jpg'),
(754, 3, 9, 3, 235, 'PARA GUARDAR POR PRIMERA VEZ UN DOCUMENTO CREADO EN POWERPOINT, EXCEL, WORD DEBO DAR CLIC EN:', 'ARCHIVO, GUARDAR COMO ', 'NA', 'NA', 'ARCHIVO, GUARDAR  ', 'ARCHIVO, IMPRIMIR', 'ARCHIVO, EXPORTAR ', 'NA', 'REFORZAR HERRAMIENTAS OFIMÁTICAS', '../../images/preguntas/csr.jpg'),
(755, 11, 15, 3, 142, 'LA DIFERENCIA EN LA DENOMINACIÓN DE SABIO Y DE FILÓSOFO SE ESTABLECIÓ EN LA ANTIGÜEDAD. FUERON LOS PITAGÓRICOS LOS RESPONSABLES DE INTRODUCIR ESTE TÉRMINO CUANDO SE AUTOPROCLAMARON AMIGOS DE LA SABIDURÍA. ESTE HECHO PONE DE MANIFIESTO', 'LA CERCANÍA ENTRE FILOSOFÍA Y SABIDURÍA', 'NA', 'NA', 'LA DIFERENCIA ENTRE EL SABER Y EL ACTUAR', 'EL SENTIDO DE MODESTIA DE LOS PITAGÓRICOS.', 'EL RIGOR DE ASIGNAR NOMBRES A LOS HECHOS', 'NA', 'REFORZAR INTERPRETACIÓN TEXTUAL', 'NA'),
(756, 11, 15, 3, 142, 'SAN ANSELMO QUIERE PROBAR LA EXISTENCIA DE DIOS ADUCIENDO QUE DADO QUE DIOS ES LA PERFECCIÓN, ESTA IDEA EXIGE QUE ESE SER EXISTA, PUES SI NO EXISTIERA NO SERÍA LA IDEA DEL SUMO PERFECTO, YA QUE LA SUPERARÍA LA IDEA DE UN SER QUE SÍ EXISTIERA. POR CONSIGUIENTE, DIOS TIENE QUE EXISTIR. DE ACUERDO CON ESTO PUEDE AFIRMARSE QUE', 'LA IDEA DE UN SER PERFECTO IMPLICA SU EXISTENCIA', 'NA', 'NA', 'ES IMPOSIBLE QUE DIOS SEA SUPERADO POR ALGO', 'SOLO LO QUE EXISTE HACE PARTE DEL PENSAMIENTO.', 'LA EXISTENCIA DE DIOS DEPENDE DE DIOS MISMO.', 'NA', 'REFORZAR INTERPRETACIÓN TEXTUAL', 'NA'),
(757, 11, 15, 3, 142, 'EN LA PELÍCULA MATRIX, EL MUNDO QUE CONOCEMOS A NUESTRO ALREDEDOR ES UNA FICCIÓN QUE SOÑAMOS MIENTRAS ESTAMOS CONECTADOS A UNA MÁQUINA.  SI VIVIMOS EN UN MUNDO COMO EL DE MATRIX, LA MEJOR FORMA DE TRATAR DE DESCUBRIR EL ENGAÑO ES', 'DISTINGUIENDO ENTRE REALIDAD Y SUEÑO', 'NA', 'NA', 'PREGUNTANDO A LOS DEMÁS SI ESTÁN ENGAÑADOS', 'BUSCANDO CONTRADICCIONES EN LO QUE VEMOS', 'CONOCIENDO DE ANTEMANO LA VERDAD', 'NA', 'REFORZAR INTERPRETACIÓN TEXTUAL', 'NA'),
(758, 8, 5, 3, 6, '¿QUÉ NÚMERO SEÑALA LA FLECHA?  ', '7/4', 'NA', 'NA', '7/8', '1/4', '5/3', 'NA', 'REFORZAR OPERACIONES CON FRACCIONES (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/pregunta 14.jpg'),
(759, 8, 5, 3, 9, 'EN LA GRÁFICA, ¿QUÉ FRACCIÓN SEÑALA LA FLECHA?', '7/3', 'NA', 'NA', '7/8', '3/8', '5/6', 'NA', 'REFORZAR RECONOCE LAS FRACCIONES (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/pregunta18.jpg'),
(760, 12, 15, 3, 145, 'PARA DESCARTES EL HOMBRE ES UN COMPUESTO DE CUERPO Y ALMA, DE PENSAMIENTO Y EXTENSIÓN QUE HA SIDO CREADO A IMAGEN Y SEMEJANZA DE DIOS A PESAR DE ENCONTRARSE EN LA DUDA Y EL ERROR. POR LO TANTO, LA IDEA DE DIOS HA LLEGADO A LA MENTE HUMANA A PESAR DE SU FINITUD, PORQUE', 'EL HOMBRE RECONOCE A DIOS MIENTRAS VA EXISTIENDO', 'NA', 'NA', 'HA SIDO IMPRESA EN SU ALMA COMO UN SELLO INDELEBLE', 'EL HOMBRE CONOCE A DIOS, PORQUE ÉL LO CREO  ', 'DIOS ES EL PRINCIPIO Y FIN ÚLTIMO ', 'NA', 'REFORZAR LECTURA CRÍTICA', 'NA'),
(761, 8, 5, 3, 12, '¿CUAL ES EL RESULTADO DE 7.13 - (-5.01)?', '12.14', 'NA', 'NA', '2.12', '7.13', '1.09', 'NA', 'REFORZAR OPERACIONES CON NÚMEROS RACIONALES (NUMÉRICO-VARIACIONAL)', 'NA'),
(762, 12, 15, 3, 145, 'PARA LOS CÍNICOS EL BIEN DEL HOMBRE CONSISTE EN VIVIR SOLO, SIN FAMILIA NI PATRIA PARA ALCANZAR SU FELICIDAD QUE LA OBTIENE MEDIANTE LA SUPRESIÓN DE LAS NECESIDADES. ESTO LOS LLEVO A DESPRECIAR EL BIENESTAR, LAS RIQUEZAS, LOS HONORES, EL AMOR Y TODO AQUELLO QUE PUDIERA HACERLOS DEPENDIENTES DE ALGO O DE OTRO. DE LO ANTERIOR PODEMOS DEDUCIR QUE', 'LA AUTARQUÍA ES VIVIR CON SUS PROPIOS RECURSOS ', 'NA', 'NA', 'LA FELICIDAD DEL HOMBRE SIGNIFICA APEGARSE A ALGO', 'LOS HALAGOS IMPIDEN QUE EL HOMBRE SE DESARROLLE ', 'LOS PLACERES PERMITEN QUE EL HOMBRE LA FELICIDAD', 'NA', 'REFORZAR LECTURA CRÍTICA', 'NA'),
(763, 12, 15, 3, 145, 'LA MAYÉUTICA FUE EL MÉTODO UTILIZADO POR SÓCRATES EN EL PROCESO DEL CONOCIMIENTO. ESTE MÉTODO CONSISTÍA EN INTERROGAR AL INTERLOCUTOR A PARTIR DE ALGÚN CONCEPTO, PARA QUE ÉL MISMO FUERA DESCUBRIENDO LA VERDAD. DE ESTA FORMA, EN LA MAYÉUTICA, EL PAPEL DEL MAESTRO', 'CONSISTÍA EN AYUDAR AL ALUMNO A DEVELAR LA VERDAD', 'NA', 'NA', 'SOLO ESCUCHA LAS OPINIONES DE LOS DEMÁS HOMBRES', 'ERA CONDICIONAR LAS RESPUESTAS DEL ALUMNO', 'ERA INNECESARIO EN EL PROCESO DEL CONOCIMIENTO', 'NA', 'REFORZAR LECTURA CRÍTICA', 'NA'),
(764, 8, 5, 3, 15, '¿CUÁLES SON LAS DIMENSIONES DEL TERRENO DE LA IMAGEN, SI SU LONGITUD (L) ES EL TRIPLE DE SU ANCHO (A)? ', 'L = 51 M Y A = 17 M', 'NA', 'NA', 'L = 5 M Y A = 10 M', 'L = 16 M Y A = 18 M', 'L = 8 M Y A = 16 M', 'NA', 'REFORZAR ÁREAS Y PERÍMETROS (GEOMÉTRICO-MÉTRICO)', '../../images/preguntas/pregunta30.jpg'),
(765, 9, 5, 3, 30, '¿CUÁLES SON LAS DIMENSIONES DEL TERRENO DE LA IMAGEN, SI SU LONGITUD (L) ES EL TRIPLE DE SU ANCHO (A)? ', 'L = 51 M Y A = 17 M', 'NA', 'NA', 'L = 5 M Y A = 10 M', 'L = 16 M Y A = 18 M', 'L = 8 M Y A = 16 M', 'NA', 'REFORZAR ÁREAS Y PERÍMETROS (GEOMÉTRICO-MÉTRICO)', '../../images/preguntas/pregunta31.jpg'),
(766, 8, 5, 3, 16, 'SEIS AMIGOS VIVEN EN UN EDIFICIO, CADA UNO EN UN PISO DISTINTO, GABRIELA VIVE MAS ABAJO QUE JORGE, PERO MÁS ARRIBA QUE MARCOS. NICOLÁS VIVE TRES PISOS MÁS ABAJO QUE GABRIELA, ABEL VIVE DOS PISOS MÁS ARRIBA QUE GABRIELA Y A CUATRO PISOS DE SANDRA. ¿QUIÉN VIVE EN EL TERCER PISO?', 'GABRIELA', 'NA', 'NA', 'MARCOS', 'SANDRA', 'JORGE', 'NA', 'REFORZAR RAZONAMIENTO LÓGICO (ALEATORIO-PROBABILÍSTICO)', '../../images/preguntas/pregunta59.jpg'),
(767, 8, 5, 3, 16, 'SEIS AMIGOS ESTAN SENTADOS ALREDEDOR DE UNA MESA ELÍPTICA. SE SABE QUE LUIS NO ESTÁ SENTADO AL LADO DE ENRIQUE NI DE JOSÉ. FERNANDO NO ESTÁ AL LADO DE GUSTAVO NI DE JOSÉ. ENRIQUE NO ESTÁ AL LADO DE GUSTAVO NI DE FERNANDO. PEDRO ESTÁ SENTADO JUNTO A ENRIQUE, A SU DERECHA. ¿QUIÉN ESTA SENTADO A LA IZQUIERDA DE ENRIQUE?', 'JOSÉ', 'NA', 'NA', 'LUIS', 'GUSTAVO', 'FERNANDO', 'NA', 'REFORZAR RAZONAMIENTO LÓGICO (ALEATORIO-PROBABILÍSTICO)', '../../images/preguntas/pregunta60.jpg'),
(768, 8, 5, 3, 9, 'DE ACUERDO A LA IMAGEN, EN LA JARRA A LA DERECHA SE MUESTRA LA CANTIDAD DE AGUA QUE SE TIENE PARA UNA RECETA. ¿CUÁNTA AGUA FALTA PARA COMPLETAR LA MEDIDA QUE SE REQUIERE QUE MARCA LA JARRA IZQUIERDA? EXPRESE EL RESULTADO EN FRACCIONES.', '7/12', 'NA', 'NA', '7/8', '3/8', '5/3', 'NA', 'REFORZAR RECONOCE LAS FRACCIONES (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/pregunta61.jpg'),
(769, 8, 5, 3, 12, 'CUANDO EL AGUA SE CONGELA, AUMENTA SU VOLUMEN EN UN 9%. SI TENEMOS UN TERCIO DE LITRO DE AGUA QUE SE VA A CONGELAR. ¿CUÁL SERÁ EL VOLUMEN DE HIELO QUE SE OBTIENE?', '109/300', 'NA', 'NA', '10/300', '250/300', '700/300', 'NA', 'REFORZAR OPERACIONES CON NÚMEROS RACIONALES (NUMÉRICO-VARIACIONAL)', 'NA'),
(770, 8, 5, 3, 12, 'JORGE EMPLEA UN TERCIO DE SU SUELDO PARA ARRIENDO, CUATRO NOVENOS PARA GASTOS Y EL RESTO LO AHORRA. SI EL SUELDO DE JORGE ES 1305000 PESOS. ¿CUÁNTO DINERO AHORRA?', '290000 PESOS', 'NA', 'NA', '29000 PESOS', '450000 PESOS', '990000 PESOS', 'NA', 'REFORZAR OPERACIONES CON NÚMEROS RACIONALES (NUMÉRICO-VARIACIONAL)', 'NA'),
(771, 8, 5, 3, 15, 'OBSERVA EL DIBUJO DEL TANGRAM Y RESPONDE: ¿CUÁNTOS CENTÍMETROS CUADRADOS DE CARTULINA VERDE SE NECESITAN PARA HACER EL TANGRAM DE LA FIGURA?', '18 CENTÍMETROS CUADRADOS', 'NA', 'NA', '25 CENTÍMETROS CUADRADOS', '1 CENTÍMETRO CUADRADO', '11 CENTÍMETROS CUADRADOS', 'NA', 'REFORZAR ÁREAS Y PERÍMETROS (GEOMÉTRICO-MÉTRICO)', '../../images/preguntas/PREGUNTA70.JPG'),
(772, 8, 5, 3, 15, 'CALCULA EL ÁREA EN CENTÍMETROS CUADRADOS DE LA FIGURA EN COLOR AMARILLO.', '12 CENTÍMETROS CUADRADOS', 'NA', 'NA', '28 CENTÍMETROS CUADRADOS', '4 CENTÍMETROS CUADRADOS', '18 CENTÍMETROS CUADRADOS', 'NA', 'REFORZAR ÁREAS Y PERÍMETROS (GEOMÉTRICO-MÉTRICO)', '../../images/preguntas/PREGUNTA71.JPG'),
(773, 8, 5, 3, 22, 'SARA Y ANTONIO SON MELLIZOS. CUANDO NACIERON, SARA PESABA 21.16 ONZAS MÁS QUE ANTONIO Y MIDIO 1.92 PULGADAS MÁS. SUS PESOS YA SE HAN IGUALADO GRACIAS A QUE ANTONIO COME MUCHO. SABIENDO QUE AL NACER ANTONIO PESABA 2.25 KILOS Y MIDIO 1.5625 PIES. CALCULA EL PESO DE LOS DOS BEBES EN ARROBAS. ', '0.41 ARROBAS', 'NA', 'NA', '0.81 ARROBAS', '1.1 ARROBAS', '3.41 ARROBAS', 'NA', 'REFORZAR CONVERSIÓN DE UNIDADES (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/PREGUNTA72.JPG'),
(774, 8, 5, 3, 29, 'TOMAS ALEATORIAMENTE UNA CANICA DE UNA BOLSA QUE CONTIENE 7 CANICAS AZULES, 2 CANICAS VERDES Y 1 CANICA ROJA. ¿CUÁNTO VALE LA PROBABILIDAD DE NO TOMAR UNA CANICA AZUL?', '3/10', 'NA', 'NA', '13/10', '3/13', '3/7', 'NA', 'REFORZAR PROBABILIDAD (ALEATORIO-PROBABILÍSTICO)', '../../images/preguntas/PREGUNTA81.JPG'),
(775, 8, 5, 3, 29, 'EL 23% DE LOS ESTUDIANTES DE UN COLEGIO PRACTICA VOLEIBOL, EL 56% PRACTICA FUTBOL Y EL 12% AMBOS DEPORTES. SE ELIGE UN ESTUDIANTE AL AZAR. ¿CUÁLES SERÍAN LAS RESPUESTAS A LAS PREGUNTAS QUE APARECEN EN LA IMAGEN?', '1. = 33%, 2. = 44%, 3. = 11%', 'NA', 'NA', '1. = 15%, 2. = 68%, 3. = 35%', '1. = 35%, 2. = 6%, 3. = 15%', '1. = 25%, 2. = 80%, 3. = 30%', 'NA', 'REFORZAR PROBABILIDAD (ALEATORIO-PROBABILÍSTICO)', '../../images/preguntas/PREGUNTA89.JPG'),
(776, 8, 5, 3, 29, 'LA FIGURA MUESTRA QUE PORCENTAJE DEL ÁREA TOTAL DE LA PIEL CUBRE CADA SECCIÓN DEL CUERPO. ENCUENTRE EL PORCENTAJE FALTANTE PARA EL TORSO. ', '28%', 'NA', 'NA', '35%', '2%', '80%', 'NA', 'REFORZAR PROBABILIDAD (ALEATORIO-PROBABILÍSTICO)', '../../images/preguntas/PREGUNTA100.JPG'),
(777, 9, 5, 3, 14, '¿CUÁL ES EL PERÍMETRO DE LA FIGURA SI X TOMA EL VALOR DE 2 CM?', '90 CM', 'NA', 'NA', '45 CM', '13 CM', '187 CM', 'NA', 'REFORZAR POTENCIACIÓN RADICACIÓN Y LOGARITMACIÓN (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/PREGUNTA28.JPG'),
(778, 9, 5, 3, 31, 'UBICA LOS NÚMEROS DEL 1 AL 9, EN EL ORDEN QUE IRIAN EN LOS CUADROS DE ARRIBA DE LA IMAGEN, PARA QUE SE CUMPLAN LAS OPERACIONES QUE SE INDICAN ABAJO, DE ACUERDO A CADA COLOR. POR EJEMPLO, EN EL CUADRO VERDE SE TIENE QUE CUMPLIR LA OPERACIÓN QUE SE INDICA EN FONDO VERDE. ', '1 8 2 5 3 6 9 7 4', 'NA', 'NA', '1 2 5 3 6 9 7 4 8', '1 8 5 2 3 6 9 7 4', '1 8 2 5 4 6 9 7 3', 'NA', 'REFORZAR RAZONAMIENTO LÓGICO (ALEATORIO-PROBABILÍSTICO)', '../../images/preguntas/PREGUNTA33.JPG'),
(779, 9, 5, 3, 19, 'PARA CONSTRUIR UNA PARED DE 12 M DE LARGO Y 5 M DE ALTO SE NECESITAN 400 LADRILLOS. ¿QUÉ ALTURA TENDRÁ LA PARED SI TUVIERA 4 M DE LARGO Y SE CUENTA CON 200 LADRILLOS?', '7.5 M', 'NA', 'NA', '12 M', '4 M', '13 M', 'NA', 'REFORZAR REGLA DE TRES COMPUESTA (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/PREGUNTA39.JPG'),
(780, 9, 5, 3, 32, 'EN LA ILUSTRACIÓN. ¿CUÁL ES EL COSTO DE COMPRA DE LA FRUTA EN LA BÁSCULA SI EL PRECIO POR LIBRA ES DE 155 POR RAÍZ CÚBICA DE 4 POR RAÍZ SEXTA DE 2916?', '3952.5', 'NA', 'NA', '1352.5', '39500', '392.9', 'NA', 'REFORZAR RECONOCE LAS FRACCIONES (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/PREGUNTA53.JPG'),
(781, 9, 5, 3, 32, 'UN CORREDOR DA 80 SALTOS POR MINUTO Y EN CADA SALTO AVANZA 80 CENTÍMETROS (CM). DE ESTA FORMA ESTUVO CORRIENDO DURANTE CINCO CUARTOS DE HORA. ¿QUÉ DISTANCIA AVANZO EN KILÓMETROS (KM)? ', '4.8 KM', 'NA', 'NA', '12 KM', '48 KM', '1 KM', 'NA', 'REFORZAR RECONOCE LAS FRACCIONES (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/PREGUNTA55.JPG'),
(782, 9, 5, 3, 33, 'EN UNA ENCUESTA APLICADA A LAS FAMILIAS QUE VIVEN EN UN CONJUNTO RESIDENCIAL, SE ENCONTRÓ QUE EL 40% DE ELLAS RECICLA VIDRIO, EL 55% PAPEL Y EL 15%, LOS DOS MATERIALES. SI EN EL CONJUNTO RESIDENCIAL VIVEN 380 FAMILIAS, ¿QUÉ PROBABILIDAD EXISTE DE SELECCIONAR UNA FAMILIA Y QUE NO RECICLE NADA?', '20%', 'NA', 'NA', '50%', '0%', '35%', 'NA', 'REFORZAR ANÁLISIS ESTADÍSTICO Y PROBABILIDAD (ALEATORIO-PROBABILÍSTICO)', '../../images/preguntas/PREGUNTA77.JPG'),
(783, 9, 5, 3, 33, 'LOS DATOS DE LA IMAGEN, CORRESPONDEN A LA CANTIDAD DE ARTÍCULOS DEFECTUOSOS, DE UN TOTAL DE 100 ARTÍCULOS, EN 40 TURNOS, DE UNA FÁBRICA DE BALDOSAS. LA EMPRESA OTORGA BONOS A LOS TRABAJADORES SI CADA 40 TURNOS CONSECUTIVOS HAY 5 O MENOS TURNOS CON 18 O MENOS ARTÍCULOS DEFECTUOSOS. ¿QUÉ VALOR DE LA TABLA INDICA SI SE RECIBIRA O NO EL BONO? ', 'FRECUENCIA ABSOLUTA ACUMULADA DE 18', 'NA', 'NA', 'FRECUENCIA ABSOLUTA ACUMULADA DE 20', 'FRECUENCIA ABSOLUTA DE 19', 'FRECUENCIA ABSOLUTA DE 20', 'NA', 'REFORZAR ANÁLISIS ESTADÍSTICO Y PROBABILIDAD (ALEATORIO-PROBABILÍSTICO)', '../../images/preguntas/PREGUNTA78.JPG'),
(784, 9, 5, 3, 30, '¿EN LA FIGURA, EN CUÁLES DE LOS LUGARES SEÑALADOS CON NÚMEROS ROMANOS, SE PUEDEN COLOCAR OTROS RECTÁNGULOS PARA QUE AUMENTE EL ÁREA Y DISMINUYA EL PERÍMETRO? ', 'II, V', 'NA', 'NA', 'II, V', 'I, VI, IV', 'VII, IV', 'NA', 'REFORZAR ÁREAS Y PERÍMETROS (GEOMÉTRICO-MÉTRICO)', '../../images/preguntas/PREGUNTA79.JPG'),
(785, 9, 5, 3, 23, '¿CUÁL SERÍA LA POSICIÓN EN LA RECTA, SI SE PARTE DEL ORIGEN, QUE REPRESENTA EL FLUJO DE DINERO QUE UN VENDEDOR TIENE DESPUÉS DE HACER LAS COMPRAS Y VENTAS DE TELA INDICADAS EN LA IMAGEN?', '- 10/4', 'NA', 'NA', '- 1/4', '5/4', '2/4', 'NA', 'REFORZAR REPRESENTACIÓN DE PUNTOS EN LA RECTA (GEOMÉTRICO-MÉTRICO)', '../../images/preguntas/PREGUNTA90.JPG'),
(786, 9, 5, 3, 19, 'EN 4 DÍAS, 6 IMPRESORAS HAN IMPRESO 100 LIBROS. ¿CUÁNTOS DÍAS TARDARAN EN IMPRIMIR 50 LIBROS SI TENEMOS 4 IMPRESORAS?', '3 DÍAS', 'NA', 'NA', '8 DÍAS', '4 DÍAS', '5 DÍAS', 'NA', 'REFORZAR REGLA DE TRES COMPUESTA (NUMÉRICO-VARIACIONAL)', 'NA'),
(787, 9, 5, 3, 36, 'EN UN ZOOLÓGICO POR CADA 7 AVESTRUCES HAY 8 CEBRAS, SI ENTRE TODOS HAY 92 PATAS. ¿CUÁNTAS AVESTRUCES Y CEBRAS HAY? ', '14 AVESTRUCES Y 16 CEBRAS', 'NA', 'NA', '4 AVESTRUCES Y 10 CEBRAS', '24 AVESTRUCES Y 6 CEBRAS', '10 AVESTRUCES Y 9 CEBRAS', 'NA', 'REFORZAR SOLUCIÓN DE ECUACIONES LINEALES (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/PREGUNTA247.JPG'),
(788, 7, 7, 4, 73, 'LEE EL TEXTO QUE ESTÁ DENTRO DE LA IMAGEN Y SELECCIONA DOS (2) PALABRAS PARA COMPLETAR LOS ESPACIOS. WHICH WEATHER? WHICH PLACE?', 'SUNNY', 'BEACH ', 'NA', 'RAINY', 'FOREST', 'NA', 'NA', 'REFORZAR VOCABULARIO RELACIONADO CON LUGARES Y CLIMA', '../../images/preguntas/.788.jpg'),
(789, 7, 7, 4, 73, 'LEE EL TEXTO QUE ESTÁ DENTRO DE LA IMAGEN Y SELECCIONA DOS (2) PALABRAS PARA COMPLETAR LOS ESPACIOS. WHICH WEATHER? WHICH PLACE?', 'RAINY', 'PARK', 'NA', 'WINDY', 'SCHOOL', 'NA', 'NA', 'REFORZAR VOCABULARIO RELACIONADO CON LUGARES Y CLIMA', '../../images/preguntas/789.jpg'),
(790, 7, 7, 4, 73, 'LEE EL TEXTO QUE ESTÁ DENTRO DE LA IMAGEN Y SELECCIONA DOS (2) PALABRAS PARA COMPLETAR LOS ESPACIOS. WHICH WEATHER? WHICH PLACE?', 'SNOWY', 'HOME', 'NA', 'STORMY', 'BANK', 'NA', 'NA', 'REFORZAR VOCABULARIO RELACIONADO CON LUGARES Y CLIMA', '../../images/preguntas/790.jpg'),
(791, 3, 7, 3, 239, 'ESCOGE LA DESPEDIDA PERTINENTE A LA HORA, DE ACUERDO A LA IMAGEN. TIME: 8:00 PM.', 'GOOD NIGHT ', 'NA', 'NA', 'GOOD AFTERNOON', 'HI', 'GOOD MORNING ', 'NA', 'REFORZAR SALUDOS Y DESPEDIDA', '../../images/preguntas/791.jpg'),
(792, 3, 7, 3, 239, 'ESCOGE EL SALUDO PERTINENTE A LA HORA, DE ACUERDO A LA IMAGEN. TIME: 7:00 AM', 'GOOD MORNING ', 'NA', 'NA', 'GOOD NIGHT ', 'HI', 'GOOD BYE ', 'NA', 'REFORZAR SALUDOS Y DESPEDIDA', '../../images/preguntas/792.jpg'),
(793, 3, 7, 3, 239, 'ESCOGE LOS SALUDOS CORRECTOS TENIENDO EN CUENTA LA IMAGEN. THESE EXPRESSIONS CAN BE USED ALL DAY LONG AND NIGHT, AT ANY TIME. ', 'HI, HELLO, WHATS UP!', 'NA', 'NA', 'BYE', 'SEE YOU!', 'TAKE CARE! ', 'NA', 'REFORZAR SALUDOS Y DESPEDIDA', '../../images/preguntas/793.jpg'),
(794, 3, 7, 3, 240, '¿QUÉ MIEMBROS CONFORMAN ESTA FAMILIA? SELECCIONA LA RESPUESTA CORRECTA TENIENDO EN CUENTA LA IMAGEN. IN THIS FAMILY THERE ARE: ', 'GRANDPA – SON – MOM – DAD – DAUGHTER – GRANDMA ', 'NA', 'NA', 'AUNT - UNCLE', 'MOTHER -  BABY ', 'FATHER - BABY - CAT', 'NA', 'REFORZAR LA FAMILIA', '../../images/preguntas/794.jpg'),
(795, 3, 7, 3, 240, '¿QUÉ MIEMBROS NO CONFORMAN ESTA FAMILIA? SELECCIONA LA RESPUESTA CORRECTA TENIENDO EN CUENTA LA IMAGEN. IN THIS FAMILY THERE ARE NOT: ', 'BABY - CAT', 'NA', 'NA', 'SON - DAD', 'DAD - MOTHER', 'GRANDMOTHER - GRANDFATHER', 'NA', 'REFORZAR LA FAMILIA', '../../images/preguntas/794..jpg'),
(796, 3, 7, 3, 240, '¿QUIÉN ES EL MÁS ALTO DE LA FAMILIA? SELECCIONA LA RESPUESTA CORRECTA TENIENDO EN CUENTA LA IMAGEN. THE TALLEST IN THIS FAMILY IS:', 'DAD', 'NA', 'NA', 'SON', 'GRAND PARENTS ', 'MOTHER ', 'NA', 'REFORZAR LA FAMILIA', '../../images/preguntas/794c.jpg'),
(797, 3, 7, 3, 241, '¿QUÉ PARTE DEL CUERPO NO VES EN LA IMANGEN? SELECCIONA UNA RESPUESTA.  THIS PART OF THE BODY IS NOT SHOWN! ', 'BELLY BUTTON', 'NA', 'NA', 'NOSE', 'LEGS ', 'EAR', 'NA', 'REFORZAR PARTES DEL CUERPO', '../../images/preguntas/797,.jpg'),
(798, 3, 7, 3, 241, '¿CÓMO SE LLAMAN LAS PARTES DEL CUERPO QUE ESTÁN RESALTADAS? SELECCIONA UNA RESPUESTA. THOSE ARE: ', 'TEETH - LEGS ', 'NA', 'NA', 'ARMS', 'EYES', 'HAIR', 'NA', 'REFORZAR PARTES DEL CUERPO', '../../images/preguntas/798,.jpg'),
(799, 3, 7, 3, 241, '¿CÓMO SE LLAMAN LAS PARTES DEL CUERPO QUE ESTÁN RESALTADAS? SELECCIONA UNA RESPUESTA. THOSE ARE: ', 'EAR - ARM', 'NA', 'NA', 'LEGS', 'NOSE', 'HAIR', 'NA', 'REFORZAR PARTES DEL CUERPO', '../../images/preguntas/799,.jpg'),
(800, 3, 7, 3, 242, '¿QUÉ COLOR ESTA SEÑALADO DENTRO DE LA IMAGEN?. WHAT COLOR IS IT? ', 'IT IS BLUE', 'NA', 'NA', 'IT IS GREEN', 'IT IS ', 'FLOWER', 'NA', 'REFORZAR PREGUNTAS SENCILLAS SOBRE EL ENTORNO, USANDO WHAT', '../../images/preguntas/800,.jpg'),
(801, 3, 7, 3, 242, 'RESPONDE LA PREGUNTA QUE ESTÁ DENTRO DE LA IMAGEN, TEN EN CUENTA EL OBJETO SEÑALADO. WHAT IS THIS?', 'THIS IS THE SUN ', 'NA', 'NA', 'THIS IS ', 'IT IS A FLOWER', 'FLOWER', 'NA', 'REFORZAR PREGUNTAS SENCILLAS SOBRE EL ENTORNO, USANDO WHAT', '../../images/preguntas/801,.jpg'),
(802, 4, 7, 3, 243, 'LLENA LOS ESPACIOS EN BLANCO DE LA ORACIÓN, DE ACUERDO A LA IMAGEN. WHICH DAY? WHICH COLOR?', 'TUESDAY - PINK', 'NA', 'NA', 'WEDNESDAY', 'TUESDAY - YELLOW', 'YELLOW', 'NA', 'REFORZAR VOCABULARIO: DÍAS DE LA SEMANA', '../../images/preguntas/802.jpg'),
(803, 4, 7, 3, 243, 'LLENA LOS ESPACIOS EN BLANCO DE LA ORACIÓN, DE ACUERDO A LA IMAGEN. WHICH DAY? WHICH COLOR?', 'MONDAY - YELLOW', 'NA', 'NA', 'MONDAY - RED', 'YELLOW ', 'MONDAY', 'NA', 'REFORZAR VOCABULARIO: DÍAS DE LA SEMANA', '../../images/preguntas/803.jpg'),
(804, 4, 7, 3, 243, 'LLENA LOS ESPACIOS EN BLANCO DE LA ORACIÓN, DE ACUERDO A LA IMAGEN. WHICH DAY? WHICH COLOR?', 'SATURDAY - PURPLE', 'NA', 'NA', 'MONDAY - PURPLE', 'SUNDAY', 'RED', 'NA', 'REFORZAR VOCABULARIO: DÍAS DE LA SEMANA', '../../images/preguntas/804.jpg'),
(805, 4, 7, 3, 244, 'ESCOGE LA EXPRESIÓN CORRECTA SOBRE LA RUTINA DIARIA TENIENDO EN CUENTA LA IMAGEN.  WHAT DO YOU DO?', 'I WAKE UP ', 'NA', 'NA', 'I BRUSH YOUR TEETH ', 'I HAVE BREAKFAST ', 'I GO TO SCHOOL', 'NA', 'REFORZAR RUTINA DIARIA', '../../images/preguntas/805.jpg'),
(806, 4, 7, 3, 244, 'ESCOGE LA EXPRESIÓN CORRECTA SOBRE LA RUTINA DIARIA TENIENDO EN CUENTA LA IMAGEN.  WHAT DO YOU DO?', 'I BRUSH MY TEETH ', 'NA', 'NA', 'I WAKE UP', 'I GO TO SLEEP', 'FATHER - BABY ', 'NA', 'REFORZAR RUTINA DIARIA', '../../images/preguntas/806.jpg'),
(807, 4, 7, 3, 244, 'ESCOGE LA EXPRESIÓN CORRECTA SOBRE LA RUTINA DIARIA TENIENDO EN CUENTA LA IMAGEN.  WHAT DO YOU DO?', 'I HAVE A SHOWER', 'NA', 'NA', 'I WAKE UP', 'I GO TO SLEEP', 'YOU HAVE BREAKFAST ', 'NA', 'REFORZAR RUTINA DIARIA', '../../images/preguntas/807.jpg'),
(808, 4, 7, 3, 244, 'ESCOGE LA EXPRESIÓN CORRECTA SOBRE LA RUTINA DIARIA TENIENDO EN CUENTA LA IMAGEN.  WHAT DO YOU DO?', 'I HAVE BREAKFAST ', 'NA', 'NA', 'I WAKE UP', 'I GO TO SLEEP', 'I GO TO SCHOOL', 'NA', 'REFORZAR RUTINA DIARIA', '../../images/preguntas/808.jpg'),
(809, 4, 7, 3, 245, 'RESPONDE LA PREGUNTA DE ACUERDO A LA IMAGEN. WHERE IS THE DOG?', 'IT IS IN MONDAY', 'NA', 'NA', 'IT IS IN SUNDAY', 'IT IS IN FRIDAY ', 'RED', 'NA', 'REFORZAR PREGUNTAS SENCILLAS USANDO WHAT, WHERE Y WHO CON RELACIÓN A ANIMALES Y SU ENTORNO', '../../images/preguntas/809.jpg'),
(810, 4, 7, 3, 245, 'RESPONDE LA PREGUNTA DE ACUERDO A LA IMAGEN. WHERE IS THE PIG?', 'IT IS IN SATURDAY ', 'NA', 'NA', 'IT IS IN SUNDAY', 'IT IS IN FRIDAY ', 'IS IN MARS', 'NA', 'REFORZAR PREGUNTAS SENCILLAS USANDO WHAT, WHERE Y WHO CON RELACIÓN A ANIMALES Y SU ENTORNO', '../../images/preguntas/810.jpg'),
(811, 4, 7, 3, 245, 'RESPONDE LA PREGUNTA DE ACUERDO A LA IMAGEN. WHO IS NEXT TO THE LION?', 'A GIRL', 'NA', 'NA', 'A BOY ', 'A SNAKE', 'A FROG', 'NA', 'REFORZAR PREGUNTAS SENCILLAS USANDO WHAT, WHERE Y WHO CON RELACIÓN A ANIMALES Y SU ENTORNO', '../../images/preguntas/811.jpg'),
(812, 4, 7, 3, 245, 'RESPONDE LA PREGUNTA DE ACUERDO A LA IMAGEN. WHO IS NEXT TO THE FROG?', 'A BOY', 'NA', 'NA', 'A GIRL', 'A SNAKE', 'A FROG', 'NA', 'REFORZAR PREGUNTAS SENCILLAS USANDO WHAT, WHERE Y WHO CON RELACIÓN A ANIMALES Y SU ENTORNO', '../../images/preguntas/812.jpg'),
(813, 4, 7, 3, 245, 'RESPONDE LA PREGUNTA DE ACUERDO A LA IMAGEN. WHAT IS THIS ANIMAL?', 'A ZEBRA', 'NA', 'NA', 'A LION ', 'A SNAKE', 'A FROG', 'NA', 'REFORZAR PREGUNTAS SENCILLAS USANDO WHAT, WHERE Y WHO CON RELACIÓN A ANIMALES Y SU ENTORNO', '../../images/preguntas/813.jpg'),
(814, 4, 7, 3, 245, 'RESPONDE LA PREGUNTA DE ACUERDO A LA IMAGEN. WHAT IS THIS ANIMAL?', 'A MONKEY', 'NA', 'NA', 'A LION ', 'A SNAKE', 'A FROG', 'NA', 'REFORZAR PREGUNTAS SENCILLAS USANDO WHAT, WHERE Y WHO CON RELACIÓN A ANIMALES Y SU ENTORNO', '../../images/preguntas/814.jpg'),
(815, 5, 5, 3, 60, 'LA SIGUIENTE IMAGEN NOS MUESTRA EL TRAYECTO MEDIDO EN TIEMPO, DE UN ESTUDIANTE DESDE SU CASA HASTA EL COLEGIO.    SI NO SE DETIENE EN EL PARQUE A JUGAR, EL ESTUDIANTE LLEGARÁ A SU COLEGIO A LA SIGUIENTE HORA:', '7:50 AM', 'NA', 'NA', '7: 55 AM', '8:00 AM', '8:05 AM', 'NA', 'REFORZAR TIEMPO (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/cuarto 3.png'),
(816, 5, 5, 3, 60, 'LOS MESES DEL AÑO ESTÁN DIVIDIDOS EN MESES CON 30 DÍAS, MESES CON 31 DÍAS Y FEBRERO QUE CUENTA CON 28 ( O CON 29 SI ES AÑO BISIESTO). \rBUSCA UN CALENDARIO Y OBSERVA CUANTOS DÍAS TIENEN LOS MESES DEL AÑO. \rTENIENDO EN CUENTA ESTOS DATOS, ES CORRECTO AFIRMAR:', 'HAY MAYOR NÚMERO DE MESES CON 31 DÍAS, POR LO TANTO SU PROBABILIDAD SERÁ MAYOR', 'NA', 'NA', 'HAY MAYOR NÚMERO DE MESES CON 30 DÍAS, POR LO TANTO SU PROBABILIDAD SERÁ MAYOR.', 'HAY IGUAL NÚMERO DE MESES CON 30 DÍAS Y CON 31 DÍAS, POR LO TANTO SU PROBABILIDAD ES IGUAL', ' LA PROBABILIDAD MAYOR LA TIENE FEBRERO.', 'NA', 'REFORZAR TIEMPO', '../../images/preguntas/cuarto 5.png'),
(817, 5, 5, 3, 60, 'CÓMO CALCULAR EL ÁREA DEL RECTÁNGULO QUE SE MUESTRA EN LA FIGURA.', 'A= B . H ', 'NA', 'NA', 'A= B', 'A= H', 'A= LADO AL CUADRADO ', 'NA', 'REFORZAR TIEMPO (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/cuarto8.png'),
(818, 5, 7, 3, 246, 'LEE LA PREGUNTA Y ESCOGE LA ORACIÓN MÁS ADECUADA PARA MANTENER LA CONVERSACIÓN. WHAT IS YOUR FULL NAME?', 'MY FULL NAME IS ANA SOFIA JIMENEZ', 'NA', 'NA', 'MY FAVORITE NAME IS JULIETA', 'I DO NOT LIKE ONIONS AND LEMON ', 'HER SURNAME IS TORRES', 'NA', 'REFORZAR SELF INTRODUCCIÓN', '../../images/preguntas/818,.jpg'),
(819, 5, 7, 3, 246, 'LEE LA PREGUNTA Y ESCOGE LA ORACIÓN MÁS ADECUADA PARA MANTENER LA CONVERSACIÓN. WHERE DO YOU LIVE?', 'I LIVE IN A BIG HOUSE', 'NA', 'NA', 'THEY LIVE TWO YEARS AGO', 'SHE LIVES NEXT TO THE SCHOOL', 'I DO NOT LIVE THERE', 'NA', 'REFORZAR SELF INTRODUCCIÓN', '../../images/preguntas/819,.jpg'),
(820, 5, 7, 3, 246, 'LEE LA PREGUNTA Y ESCOGE LA ORACIÓN MÁS ADECUADA PARA MANTENER LA CONVERSACIÓN. WHAT IS YOUR FAVORITE SUBJECT?', 'I LIKE MATH AND ENGLISH', 'NA', 'NA', 'I LIKE DRINK WATER', 'I AM A DOCTOR', 'MY FAVORITE COLOR IS YELLOW', 'NA', 'REFORZAR SELF INTRODUCCIÓN', '../../images/preguntas/820,.jpg'),
(821, 9, 9, 3, 219, 'LA COMUNICACIÓN DE LA INFORMACIÓN ES:', 'INFORMACIÓN O MENSAJE DESDE EL EMISOR AL RECEPTOR.', 'NA', 'NA', 'EL CONJUNTO DE DATOS PARA CONFIGURAR UN MENSAJE.', 'EL CONJUNTO DE DATOS QUE ADQUIEREN UN SENTIDO.', 'LA FLUIDEZ DE LAS PERSONAS EN LAS ACTIVIDADES.', 'NA', 'REFORZAR INFORMACIÓN Y COMUNICACIÓN', 'NA'),
(822, 9, 9, 3, 219, '¿CUÁLES SON LOS ELEMENTOS MÍNIMOS QUE COMPONEN UN SISTEMA DE COMUNICACIÓN DE LA INFORMACIÓN?', 'EMISOR, RECEPTOR, LENGUAJE, MEDIO DE TRANSMISIÓN.', 'NA', 'NA', 'EMISOR, RECEPTOR, MEDIO DE TRANSMISIÓN,  CONOCIMIENTO.', 'RECEPTOR, CONOCIMIENTO, LENGUAJE, EFICIENCIA.', 'CONOCIMIENTO, RECEPTOR, MEDIO DE TRANSMISIÓN, EFICIENCIA.', 'NA', 'REFORZAR INFORMACIÓN Y COMUNICACIÓN', 'NA'),
(823, 9, 9, 3, 219, 'GOOGLE ES UNA GRAN COMPAÑÍA DE SERVICIOS WEB QUE HA TENIDO UN IMPACTO SIGNIFICATIVO EN LA SOCIEDAD DEL CONOCIMIENTO DE LA ACTUALIDAD, UNA DE SUS ESTRATEGIAS MÁS EVIDENTES Y EFECTIVAS QUE LA HAN LOGRARON CONSOLIDAR COMO UNA DE LAS MEJORES COMPAÑÍAS EN:', 'PRODUCTOS Y SERVICIOS RELACIONADOS CON LA WEB', 'NA', 'NA', 'MEDIOS POR DONDE SE TRASMITE TODA LA INFORMACIÓN ', 'LAS NUEVAS TECNOLOGÍAS PARA LA COMUNIDAD', 'PRODUCTOS PARA TRANSMITIR INFORMACIÓN ', 'NA', 'REFORZAR INFORMACIÓN Y COMUNICACIÓN', 'NA'),
(824, 9, 9, 3, 220, 'LOS DELITOS INFORMÁTICOS O CIBERDELITOS SE COMETEN MEDIANTE EL USO DE ENTORNOS DIGITALES Y ENTRE ELLOS ESTÁN ', 'CIBERACOSO, CIBERBULLYING, CIBEREXTORSIÓN PHISHING', 'NA', 'NA', 'INFORMACIÓN, AYUDA, CIBERACOSO, REDES SOCIALES ', 'CIBERBULLYING, AYUDA, ANONIMATOS, CORRUPCIÓN ', 'CORRUPCIÓN, CIBEREXTORSIÓN, INFORMACIÓN  ', 'NA', 'REFORZAR RIESGOS EN EL USO DE LAS TIC', 'NA'),
(825, 9, 9, 3, 220, 'ES IMPORTANTE ACLARAR QUE LAS TECNOLOGÍAS DE LA INFORMACIÓN Y LA COMUNICACIÓN O TIC SON CUALQUIER TIPO DE TECNOLOGÍA CAPAZ DE:', 'ORGANIZAR, GESTIONAR, COMUNICAR INFORMACIÓN ', 'NA', 'NA', 'PRESENTAR, ANALIZAR ORGANIZAR', 'ANALIZAR, INFORMAR, PRESENTAR INFORMACIÓN ', 'COMUNICAR INFORMACIÓN, GESTIONAR, ANALIZAR ', 'NA', 'REFORZAR RIESGOS EN EL USO DE LAS TIC', 'NA'),
(826, 9, 9, 3, 220, 'GOOGLE APPS FOR EDUCATION', 'COMUNICACIONES Y TRABAJO COLABORATIVO EN INTERNET', 'NA', 'NA', 'CONJUNTO DE HERRAMIENTAS DIGITALES ', 'INFORMACIÓN SOBRE LA PRIVACIDAD DE LOS USUARIOS', 'SISTEMA ONLINE, PARA EL TRABAJO EN TIEMPO REAL', 'NA', 'REFORZAR RIESGOS EN EL USO DE LAS TIC', 'NA'),
(827, 9, 9, 3, 218, 'ES UNA HERRAMIENTA PARA HACER DIBUJOS Y ORGANIZAR ARCHIVOS DE MANERA RÁPIDA', 'CONCEPTBOARD', 'NA', 'NA', 'REALTIMEBOARD', 'GOOGLE SITIES', 'GOOGLE MEET', 'NA', 'REFORZAR SOLUCIÓN DE PROBLEMAS CON TECNOLOGÍA', 'NA'),
(828, 9, 9, 3, 218, 'ES UNA HERRAMIENTA DE TRABAJO COLABORATIVO QUE TE PERMITE TRABAJAR CON POSITS E IR AÑADIENDO IDEAS PRESENTADAS EN CUALQUIER TIPO DE FORMATO.', 'REALTIMEBOARD', 'NA', 'NA', 'GOOGLE SITIES', 'WORDPRESS', 'GOOGLE DRIVE', 'NA', 'REFORZAR SOLUCIÓN DE PROBLEMAS CON TECNOLOGÍA', 'NA'),
(829, 9, 9, 3, 218, 'UN PODCAST ES:            ', 'UNA EMISIÓN EPISÓDICA DE ARCHIVOS ', 'NA', 'NA', 'FORMULARIOS WEB EN UNA NUBE', 'ALMACENAMIENTO VIRTUAL GRATUITO', 'HERRAMIENTA PARA DISEÑAR DE FORMA ACCESIBLE ', 'NA', 'REFORZAR SOLUCIÓN DE PROBLEMAS CON TECNOLOGÍA', 'NA'),
(830, 7, 9, 3, 217, 'SI VAS A PRESENTAR O SUSTENTAR UN TEMA EDUCATIVO POR MEDIO DE UN VIDEO, ¿CUÁL PUEDE SER TU MEJOR AYUDA PARA QUE LA PRESENTACIÓN ESTE BIEN ESTRUCTURADA? ', 'HACER UN LIBRETO', 'NA', 'NA', 'SER ESPONTÁNEO', 'IMPROVISAR EL TEMA', 'ANOTAR LOS CONCEPTOS IMPORTANTES. ', 'NA', 'REFORZAR APLICACIONES INFORMÁTICAS', 'NA'),
(831, 9, 9, 3, 218, 'HERRAMIENTA QUE SIRVE PARA CREAR Y ESCUCHAR AUDIOS (PODCAST) ', 'SPREAKER ', 'NA', 'NA', 'AUDACITY ', 'CONCEPTBOARD ', 'CAMTASIA ', 'NA', 'REFORZAR SOLUCIÓN DE PROBLEMAS CON TECNOLOGÍA', 'NA'),
(832, 7, 9, 3, 217, '¿QUÉ PUEDES HACER CON WORD?', 'ELABORAR DOCUMENTOS FORMALES', 'NA', 'NA', 'PERMITE REALIZAR CÁLCULOS CON FÓRMULAS LÓGICAS', 'EDITOR DE PRESENTACIONES E IMÁGENES', 'SIRVE PARA ESCRIBIR', 'NA', 'REFORZAR APLICACIONES INFORMÁTICAS', 'NA'),
(833, 7, 9, 3, 217, 'WORD INCLUYE DOCUMENTACIÓN CON DIVERSA INFORMACIÓN QUE TE AYUDARÁ A COMPRENDER Y UTILIZAR EL PROGRAMA. ¿CÓMO SE ACCEDE A ELLA?  ', 'DESDE EL BOTÓN ¿QUÉ DESEA HACER? O LA TECLA F1.', 'NA', 'NA', 'ÚNICAMENTE DESDE LA PÁGINA WEB DE MICROSOFT.', 'CON LA TECLA F11.', ' WORD NO INCLUYE DOCUMENTACIÓN DE USUARIO.', 'NA', 'REFORZAR APLICACIONES INFORMÁTICAS', 'NA'),
(834, 7, 9, 3, 216, 'LOS MATERIALES SEGÚN SU NATURALEZA SE CLASIFICAN EN:', 'NATURALES Y ARTIFICIALES', 'NA', 'NA', 'ANIMALES, VEGETALES Y MINERALES. ', 'MADERAS, PLÁSTICOS, METALES, CERÁMICAS Y TEXTILES.', 'SOLIDO, LIQUIDO, GASEOSO ', 'NA', 'REFORZAR MATERIALES Y ESTRUCTURAS', 'NA'),
(835, 7, 9, 3, 216, 'LA PROPIEDAD DE LOS MATERIALES QUE TRANSMITEN LA ELECTRICIDAD SE LLAMA: ', 'CONDUCTIVIDAD ELÉCTRICA.', 'NA', 'NA', 'CONDUCCIÓN ELÉCTRICA.  ', 'CONDUCENCIA ELÉCTRICA.  ', 'CONDUCTANCIA ELÉCTRICA.  ', 'NA', 'REFORZAR MATERIALES Y ESTRUCTURAS', 'NA'),
(836, 7, 9, 3, 216, 'LA PROPIEDAD DE LOS MATERIALES DE TRANSMITIR EL CALOR SE LLAMA: ', 'CONDUCTIVIDAD TÉRMICA', 'NA', 'NA', 'CONDUCTIVIDAD ELÉCTRICA', 'RESISTENCIA TÉRMICA', 'RESISTENCIA ELÉCTRICA ', 'NA', 'REFORZAR MATERIALES Y ESTRUCTURAS', 'NA'),
(837, 7, 9, 3, 215, '¿QUÉ ES UNA ESTRUCTURA?', 'CONJUNTO DE ELEMENTOS CAPACES DE AGUANTAR PESOS', 'NA', 'NA', 'PARTE SUPERIOR DE UN EDIFICIO', 'APOYO CILÍNDRICO Y LARGO', 'MADERO LARGO Y GRUESO ', 'NA', 'REFORZAR TECNOLOGIA Y SOCIEDAD', 'NA'),
(838, 7, 9, 3, 215, '¿EN QUÉ DOS GRANDES GRUPOS SE CLASIFICAN LAS ESTRUCTURAS?', 'NATURALES Y ARTIFICIALES', 'NA', 'NA', 'DURAS Y BLANDAS', 'GRANDES Y PEQUEÑAS', 'ESTÁTICAS Y DINÁMICAS', 'NA', 'REFORZAR TECNOLOGIA Y SOCIEDAD', 'NA'),
(839, 7, 9, 3, 216, 'QUE ESTRUCTURA ES LA DE LA IMAGEN. ', 'ESTRUCTURA NATURAL', 'NA', 'NA', 'ESTRUCTURA ARTIFICIAL', 'ESTRUCTURA GRANDE', 'ESTRUCTURA PEQUEÑA', 'NA', 'REFORZAR MATERIALES Y ESTRUCTURAS', '../../images/preguntas/piedra.jpg'),
(840, 7, 9, 3, 215, 'QUE ESTRUCTURA ES LA DE LA IMAGEN. ', 'ESTRUCTURA NATURAL', 'NA', 'NA', 'ESTRUCTURA ARTIFICIAL', 'ESTRUCTURA DINÁMICA', 'ESTRUCTURA BLANDA', 'NA', 'REFORZAR TECNOLOGIA Y SOCIEDAD', '../../images/preguntas/torre.jpg'),
(841, 7, 9, 3, 215, '¿CUÁL  DE LAS SIGUIENTES OPCIONES ES UNA ESTRUCTURA ARTIFICIAL?', 'UN PUENTE COLGANTE.', 'NA', 'NA', 'UN NIDO DE PÁJARO.', 'EL ESQUELETO HUMANO.', 'UNA ESTALACTITA.', 'NA', 'REFORZAR TECNOLOGIA Y SOCIEDAD', 'NA'),
(842, 10, 9, 3, 110, '¿CUÁL ES EL IMPACTO NEGATIVO SOBRE EL MEDIO AMBIENTE CON TECNOLOGÍA QUE ES POCO CONOCIDO PERO EL MÁS UTILIZADO POR LAS PERSONAS?', 'EL CONSUMO ENERGÉTICO DE INTERNET.', 'NA', 'NA', 'CONSUMO DE PAPEL.', 'RESIDUOS DE LOS DISPOSITIVOS.', 'MATERIALES AUDIOVISUALES.', 'NA', 'REFORZAR OPERADORES LÓGICOS', 'NA'),
(843, 10, 9, 3, 110, 'LAS TIC TAMBIÉN TIENEN LA INMENSA CAPACIDAD DE GENERAR UNA CONSIDERABLE REDUCCIÓN DE LAS EMISIONES DE GASES DE EFECTO INVERNADERO MEDIANTE LA CREACIÓN DE', 'CIUDADES, REDES, FABRICACIÓN Y RECICLAJE ', 'NA', 'NA', 'NORMAS Y DIRECTRICES SOBRE EL MEDIO AMBIENTE', 'RECOMENDACIONES Y SUPLEMENTOS EXISTENTES', 'INNOVACIONES COMO EL INTERNET Y LA TECNOLOGÍA', 'NA', 'REFORZAR OPERADORES LÓGICOS', 'NA'),
(844, 10, 9, 3, 110, 'LA REDUCCIÓN DEL CONSUMO DE ENERGÍA Y LA INTEGRACIÓN DE NUEVAS INNOVACIONES TECNOLÓGICAS PERMITEN LA MONITORIZACIÓN DE LAS FUENTES DE CONTAMINACIÓN, PARA ESTE PROCESO ES NECESARIO MEDIR LOS NIVELES:', 'ATMOSFÉRICOS DE GASES DE EFECTO INVERNADERO.', 'NA', 'NA', 'DE FABRICACIÓN Y RECICLAJE INTELIGENTE. ', 'DE MATERIALES AUDIOVISUALES.', 'DE RECURSOS Y PLANIFICACIÓN SOSTENIBLE.', 'NA', 'REFORZAR OPERADORES LÓGICOS', 'NA'),
(845, 10, 9, 3, 110, 'LAS TIC TIENEN UNA HUELLA AMBIENTAL, ES DECIR, TAMBIÉN CAUSAN UN IMPACTO SOBRE EL ENTORNO. AUNQUE TODAVÍA NO SON SUFICIENTEMENTE CONSCIENTES DE ALGUNOS MALOS HÁBITOS EN SU USO COTIDIANO COMO:', 'EXCESO DE MANIPULACIÓN DEL DISPOSITIVO MÓVIL', 'NA', 'NA', 'GASTAR MUCHA ENERGÍA ELÉCTRICA', 'DESARROLLO ECONÓMICO ', 'ARREGLO DEL MEDIO AMBIENTE ', 'NA', 'REFORZAR OPERADORES LÓGICOS', 'NA'),
(846, 5, 7, 3, 247, 'LEE LA PEQUEÑA DESCRIPCIÓN (ORACIÓN) Y SELECCIONA LA RESPUESTA CORRECTA. VEGETABLE: IT IS RED AND ROUND. SOME PEOPLE PUT IT INSIDE HAMBURGERS.', 'TOMATO', 'NA', 'NA', 'GRAPES', 'PINEAPPLE', 'GREEN APPLE', 'NA', 'REFORZAR FRUITS AND VEGETABLES VOCABULARY', '../../images/preguntas/846,.jpg'),
(847, 5, 7, 3, 247, 'LEE LA PEQUEÑA DESCRIPCIÓN (ORACIÓN) Y SELECCIONA LA RESPUESTA CORRECTA. FRUIT: IT IS LONG AND YELLOW. MONKEY LIKES IT. ', 'BANANA', 'NA', 'NA', 'ONION', 'PEAR', 'COCONUT', 'NA', 'REFORZAR FRUITS AND VEGETABLES VOCABULARY', '../../images/preguntas/847,.jpg'),
(848, 5, 7, 3, 247, 'LEE LA PEQUEÑA DESCRIPCIÓN (ORACIÓN) Y SELECCIONA LA RESPUESTA CORRECTA. VEGETABLE: IT IS LONG AND ORANGE. RABBITS LOVE EATING IT.', 'CARROT', 'NA', 'NA', 'BEANS', 'WATERMELON', 'PEACH', 'NA', 'REFORZAR FRUITS AND VEGETABLES VOCABULARY', '../../images/preguntas/846b,.jpg'),
(849, 5, 7, 3, 249, 'LEE LA ORACIÓN Y SELECCIONA LA RESPUESTA CORRECTA. THE WEATHER DURING SUMMER IS: ', 'HOT - SUNNY', 'NA', 'NA', 'RAINY - WINDY', 'SNOWY', 'COLD ', 'NA', 'REFORZAR SEASONS, WEATHER AND CLOTHES', '../../images/preguntas/849,.jpg'),
(850, 5, 7, 3, 249, 'LEE LA ORACIÓN Y SELECCIONA LA RESPUESTA CORRECTA, TEN EN CUENTA LA IMAGEN. WHAT KIND OF CLOTHES DO YOU USE IN THIS WEATHER? (WINTER)', 'COAT, WINTER HAT, GLOVES, SCARF', 'NA', 'NA', 'T SHIRT, SHORTS, FLIP FLOPS', 'JEAN, CAP, TENNIS', 'SHIRT, SKIRT, SANDALS', 'NA', 'REFORZAR SEASONS, WEATHER AND CLOTHES', '../../images/preguntas/850,.jpg'),
(851, 5, 7, 3, 249, 'LEE LA ORACIÓN Y RESPONDE DE ACUERDO A LA IMAGEN. TODAY THE WEATHER IS:', 'STORMY', 'NA', 'NA', 'COLD', 'RAINY', 'SUNNY', 'NA', 'REFORZAR SEASONS, WEATHER AND CLOTHES', '../../images/preguntas/851,.jpg'),
(852, 5, 7, 3, 248, 'LEE LA PREGUNTA Y RESPONDE DE ACUERDO A LA IMAGEN. WHAT ARE WE DOING?', 'WE ARE COOKING', 'NA', 'NA', 'IS COOKING DINNER', 'THEY ARE DANCING', 'WE ARE PLAYING GUITAR', 'NA', 'REFORZAR PRESENT PROGRESSIVE', '../../images/preguntas/852,.jpg'),
(853, 5, 7, 3, 248, 'LEE LA PREGUNTA Y RESPONDE DE ACUERDO A LA IMAGEN. WHAT IS SHE DOING?', 'SHE IS SLEEPING', 'NA', 'NA', 'HE IS READING A BOOK', 'THEY ARE PLAYING PIANO', 'SHE IS COOKING DINNER', 'NA', 'REFORZAR PRESENT PROGRESSIVE', '../../images/preguntas/853,.jpg'),
(854, 5, 7, 3, 248, 'LEE LA PREGUNTA Y RESPONDE DE ACUERDO A LA IMAGEN. WHAT ARE THEY DOING?', 'THEY ARE FLYING A KITE', 'NA', 'NA', 'THEY ARE PLAYING PIANO', 'HE IS STUDYING MATH', 'THEY ARE SWIMMING IN A POOL ', 'NA', 'REFORZAR PRESENT PROGRESSIVE', '../../images/preguntas/854,.jpg'),
(855, 5, 7, 3, 250, 'OBSERVA LA IMAGEN Y SELECCIONA EL NOMBRE CORRECTO DEL DEPORTE. WHAT SPORT IS THIS?', 'SKIING', 'NA', 'NA', 'DIVING', 'SKATEBOARDING', 'TENNIS', 'NA', 'REFORZAR SPORTS VOCABULARY', '../../images/preguntas/855,.jpg');
INSERT INTO `tbl_preguntas` (`id`, `id_grado`, `id_materia`, `id_tipo_pregunta`, `id_tema`, `pregunta`, `r1ok`, `r2ok`, `r3ok`, `r1no`, `r2no`, `r3no`, `r4no`, `retroalimentacion`, `imagen`) VALUES
(856, 5, 7, 3, 250, 'OBSERVA LA IMAGEN Y SELECCIONA EL NOMBRE CORRECTO DEL DEPORTE. WHAT SPORT IS THIS?', 'ROLLER-BLADING', 'NA', 'NA', 'HIKING', 'FISHING', 'RUNNING', 'NA', 'REFORZAR SPORTS VOCABULARY', '../../images/preguntas/856,.jpg'),
(857, 5, 7, 3, 250, 'OBSERVA LA IMAGEN Y SELECCIONA EL NOMBRE CORRECTO DEL DEPORTE. WHAT SPORT IS THIS?', 'DIVING', 'NA', 'NA', 'RUNNING', 'CYCLING', 'BASKETBALL', 'NA', 'REFORZAR SPORTS VOCABULARY', '../../images/preguntas/857,.jpg'),
(859, 6, 7, 3, 251, 'OBSERVA LA IMAGEN, LEE LA DESCRIPCIÓN Y ELIGE LA RESPUESTA CORRECTA. TEN EN CUENTA LA SIGUIENTE PREGUNTA: WHAT IS HIS PROFESSION?', 'HE IS A LAWYER', 'NA', 'NA', 'HE IS A PAINTER', 'HE IS A HAIRDRESSER', 'SHE IS A DOCTOR ', 'NA', 'REFORZAR PROFESIONES Y ACTIVIDADES', '../../images/preguntas/859,.jpg'),
(860, 6, 7, 3, 251, 'OBSERVA LA IMAGEN, LEE LA DESCRIPCIÓN Y ELIGE LA RESPUESTA CORRECTA. TEN EN CUENTA LA SIGUIENTE PREGUNTA: WHAT IS HER PROFESSION?', 'SHE IS A JOURNALIST', 'NA', 'NA', 'SHE IS A DESIGNER', 'SHE IS A TEACHER', 'HE IS A GARDENER', 'NA', 'REFORZAR PROFESIONES Y ACTIVIDADES', '../../images/preguntas/860,.jpg'),
(861, 6, 7, 3, 251, 'OBSERVA LA IMAGEN, LEE LA DESCRIPCIÓN Y ELIGE LA RESPUESTA CORRECTA. TEN EN CUENTA LA SIGUIENTE PREGUNTA: WHAT IS THEIR PROFESSION?', 'THEY ARE FARMERS', 'NA', 'NA', 'SHE IS A SINGER', 'HE IS A DENTIST', 'WE ARE CARPENTERS', 'NA', 'REFORZAR PROFESIONES Y ACTIVIDADES', '../../images/preguntas/861,.jpg'),
(862, 6, 7, 3, 252, 'ELIGE LA EXPRESIÓN (ORACIÓN) MÁS ADECUADA PARA COMPLETAR EL DIALOGO QUE ESTÁ DENTRO DE LA IMAGEN. WHAT DOES SHE SAY?', 'I AM SO SORRY', 'NA', 'NA', 'GOOD MORNING', 'LET’S GO TO THE PARTY', 'SEE YOU TOMORROW', 'NA', 'REFORZAR EXPRESIONES PARA DISCULPARSE', '../../images/preguntas/862,.jpg'),
(863, 6, 7, 3, 252, 'ELIGE LA EXPRESIÓN (ORACIÓN) MÁS ADECUADA PARA COMPLETAR EL DIALOGO QUE ESTÁ DENTRO DE LA IMAGEN. WHAT DOES HE SAY?', 'MRS. I APOLOGIZE FOR BEING LATE', 'NA', 'NA', 'THANK YOU!', 'MY NAME IS PAUL', 'SEE YOU SOON!', 'NA', 'REFORZAR EXPRESIONES PARA DISCULPARSE', '../../images/preguntas/863,.jpg'),
(864, 6, 7, 4, 252, 'ESCOGE DOS (2) EXPRESIONES ADECUADAS PARA DISCULPARSE. WHAT SHOULD YOU SAY TO APOLOGIZE?', 'PLEASE ACCEPT MY APOLOGIZE', 'FORGIVE ME FOR DOING THAT', 'NA', 'IT IS OKAY, BUT DO NOT DO IT AGAIN', 'THAT IS ALRIGHT', 'NA', 'NA', 'REFORZAR EXPRESIONES PARA DISCULPARSE', '../../images/preguntas/864,.jpg'),
(865, 6, 7, 3, 253, 'ELIGE LA PALABRA MÁS ADECUADA PARA COMPLETAR LA PREGUNTA QUE ESTÁ DENTRO DE LA IMAGEN. ANSWER: 4 APPLES ARE ON THE TABLE.', 'MANY', 'NA', 'NA', 'MUCH', 'LITTLE', 'A LOT OF', 'NA', 'REFORZAR EXPRESIONES PARA REFERIRSE A CANTIDADES', '../../images/preguntas/865,.jpg'),
(866, 6, 7, 3, 253, 'ELIGE LA PALABRA MÁS ADECUADA PARA COMPLETAR LA PREGUNTA QUE ESTÁ DENTRO DE LA IMAGEN. ANSWER: WE STILL HAVE 10 MINUTES. ', 'MUCH', 'NA', 'NA', 'MANY', 'LITTLE', 'ANY', 'NA', 'REFORZAR EXPRESIONES PARA REFERIRSE A CANTIDADES', '../../images/preguntas/866,.jpg'),
(867, 6, 7, 3, 253, 'ELIGE LA PALABRA MÁS ADECUADA PARA COMPLETAR EL TEXTO QUE ESTÁ DENTRO DE LA IMAGEN. ', 'MANY', 'NA', 'NA', 'LITTLE', 'FEW', 'A LOT OF', 'NA', 'REFORZAR EXPRESIONES PARA REFERIRSE A CANTIDADES', '../../images/preguntas/question 9.jpg'),
(868, 6, 7, 4, 254, 'LEE EL TEXTO QUE ESTÁ DENTRO DE LA IMAGEN Y ELIGE DOS (2) OPCIONES PARA RESPONDER CORRECTAMENTE LA SIGUIENTE PREGUNTA: WHAT DOES MICHAEL LIKE TO DO?', 'HE LIKES PLAYING SOCCER AND BASKETBALL', 'HE ENJOYS SPENDING TIME WITH HIS FRIENDS', 'NA', 'HE LOVES DOING HOMEWORK', 'HE ADORES PLAYING THE GUITAR', 'NA', 'NA', 'REFORZAR PREFERENCIAS Y GUSTOS', '../../images/preguntas/869b,.jpg'),
(869, 6, 7, 3, 254, 'LEE EL TEXTO QUE ESTÁ DENTRO DE LA IMAGEN Y ELIGE LA OPCIÓN MÁS ADECUADA PARA COMPLETAR LA SIGUIENTE ORACIÓN: MICHAEL DOES NOT LIKE...', 'DOING HIS HOMEWORK', 'NA', 'NA', 'PLAYING BASKETBALL', 'SPENDING TIME WITH HIS FRIENDS', 'PLAYING SOCCER', 'NA', 'REFORZAR PREFERENCIAS Y GUSTOS', '../../images/preguntas/869,.jpg'),
(870, 6, 7, 5, 254, 'ELIGE TRES (3) EXPRESIONES ADECUADAS PARA DECIR QUE ALGO NO TE GUSTA O NO ES DE TU PREFERENCIA. DISLIKES:', 'I DO NOT LIKE VEGETABLES AT ALL', 'I CANNOT STAND THE MUSIC OF MY NEIGHBOR', 'I HATE CROWDED SUPERMARKETS', 'I ENJOY READING FICTION BOOKS', 'NA', 'NA', 'NA', 'REFORZAR PREFERENCIAS Y GUSTOS', '../../images/preguntas/870,.jpg'),
(871, 6, 7, 5, 255, 'OBSERVA LA IMAGEN Y ELIGE TRES (3) PALABRAS ADECUADAS PARA DESCRIBIR LA EMOCIÓN O SENTIMIENTO EXPRESADO.  SHE IS...', 'AFRAID ', 'SCARED', 'WORRIED', 'HAPPY', 'NA', 'NA', 'NA', 'REFORZAR SENTIMIENTOS Y EMOCIONES', '../../images/preguntas/871,.jpg'),
(872, 6, 7, 5, 255, 'OBSERVA LA IMAGEN Y ELIGE TRES (3) PALABRAS ADECUADAS PARA DESCRIBIR LA EMOCIÓN O SENTIMIENTO EXPRESADO.  SHE IS...', 'ANGRY', 'FURIOUS', 'ANNOYED', 'NERVOUS', 'NA', 'NA', 'NA', 'REFORZAR SENTIMIENTOS Y EMOCIONES', '../../images/preguntas/872,.jpg'),
(873, 6, 7, 3, 255, 'OBSERVA LA IMAGEN Y ELIGE LA PALABRA MÁS ADECUADA PARA DESCRIBIR LA EMOCIÓN EXPRESADA.  SHE IS...', 'AMAZED', 'NA', 'NA', 'SAD', 'ANNOYED', 'FRIGHTENED', 'NA', 'REFORZAR SENTIMIENTOS Y EMOCIONES', '../../images/preguntas/873,.jpg'),
(874, 10, 7, 3, 91, 'ELIGE LA OPCIÓN CORRECTA PARA DAR RESPUESTA A LA SIGUIENTE PREGUNTA: HAVE YOU GOT ANY PLANS FOR TOMORROW?', 'YES, I AM GOING TO VISIT MY GRANDPARENTS', 'NA', 'NA', 'YES, I WILL VISIT MY GRANDPARENTS', 'YES, SHE WILL VISIT HER GRANDPARENTS', 'YES, YOU ARE GOING TO VISIT YOUR GRANDPARENTS', 'NA', 'REFORZAR EXPRESAR SUEÑOS O PLANES FUTUROS', '../../images/preguntas/874 (1).jpg'),
(875, 7, 6, 3, 132, 'ESCOGE LA OPCIÓN QUE NO TIENE COHERENCIA CON EL CONTENIDO DEL SIGUIENTE ENUNCIADO : LOS ERIZOS TIENEN EL CUERPO CUBIERTO DE ESPINAS, SE ALIMENTAN DE GUSANOS, INSECTOS, MOLUSCOS Y REPTILES QUE SE CARACTERIZAN PORQUE TIENEN EL CUERPO CUBIERTO DE ESCAMAS.', 'REPTILES QUE SE CARACTERIZAN PORQUE TIENEN EL CUERPO CUBIERTO DE ESCAMAS.', 'NA', 'NA', 'SE ALIMENTAN DE GUSANOS, INSECTOS Y MOLUSCOS.', 'LOS ERIZOS TIENEN EL CUERPO CUBIERTO DE ESPINAS.', 'LOS ERIZOS SON ANIMALES VERTEBRADOS.', 'NA', 'REFORZAR PRODUCCIÓN TEXTUAL', 'NA'),
(876, 7, 6, 3, 132, 'ESCOGE LA OPCIÓN QUE NO TIENE COHERENCIA CON EL CONTENIDO DEL SIGUIENTE ENUNCIADO: EXISTEN ANIMALES QUE UTILIZAN ESTRATEGIAS DE ENGAÑO PARA DEFENDERSE DE OTROS ANIMALES. OTROS POR SER MUY DIFERENTES A LOS DEMÁS SON EXÓTICOS Y CURIOSOS. POR EJEMPLO, LA MARIPOSA TIGRE Y LA SERPIERNTE NARIZ DE CERDO FINGEN ESTAR MUERTAS.', 'OTROS POR SER MUY DIFERENTES A LOS DEMÁS SON EXÓTICOS Y CURIOSOS.', 'NA', 'NA', 'EXISTEN ANIMALES QUE UTILIZAN ESTRATEGIAS DE ENGAÑO PARA DEFENDERSE DE OTROS ANIMALES.', 'POR EJEMPLO, LA MARIPOSA TIGRE Y LA SERPIENTE NARIZ DE CERDO.', 'PORQUE TEMEN A LOS CAZADORES.', 'NA', 'REFORZAR PRODUCCIÓN TEXTUAL', 'NA'),
(877, 8, 6, 3, 133, 'LEE CON ATENCIÓN EL TEXTO DE LA IMAGEN, PARA RESPONDER LA PREGUNTA ¿QUÉ FUNCIÓN CUMPLE LOS DOS PUNTOS EN EL PÁRRAFO?', 'INTRODUCIR UN EJEMPLO.', 'NA', 'NA', 'EXPRESAR UNA IDEA.', 'INDICAR UNA CONCLUSIÓN.', 'PRESENTAR UNA ENUMERACIÓN.', 'NA', 'REFORZAR INTERPRETACIÓN TEXTUAL', '../../images/preguntas/Captura de pantalla (358).png'),
(878, 11, 11, 3, 307, 'EN TODOS LOS FENÓMENOS HAY ALGO EN COMÚN: LA ENERGÍA. LA ENERGÍA SE PUEDE MANIFESTAR DE MUY DIVERSAS FORMAS, TALES COMO:', 'ENERGÍA TÉRMICA, ENERGÍA ELÉCTRICA, ENERGÍA MUSCULAR, ENERGÍA QUÍMICA', 'NA', 'NA', 'ENERGÍA ELÉCTRICA, ENERGÍA DE INVERNADERO, ENERGÍA POTENCIAL, ENERGÍA PROPULSORA', 'ENERGÍA MUSCULAR, ENERGÍA CINÉTICA, ENERGÍA POTENCIAL, ENERGÍA ANIMAL', 'ENERGÍA SOLAR, ENERGÍA EÓLICA, ENERGÍA CEREBRAL', 'NA', 'REFORZAR CONCEPTO DE ENERGÍA Y CLASES', '../../images/preguntas/ELECTRICA.jpg'),
(879, 11, 11, 3, 307, 'DE LA ENERGÍA TÉRMICA SE PUEDE AFIRMAR:', 'TODAS LAS RESPUESTAS SON CORRECTAS', 'NA', 'NA', 'LA ENERGÍA TÉRMICA SE DEBE AL MOVIMIENTO DE LAS PARTÍCULAS QUE CONSTITUYEN LA MATERIA', 'UN CUERPO A BAJA TEMPERATURA TENDRÁ MENOS ENERGÍA TÉRMICA QUE OTRO QUE ESTÉ A MAYOR TEMPERATURA.', 'UN CUERPO POSEE MAYOR CANTIDAD DE ENERGÍA TÉRMICA CUANTO MÁS RÁPIDO ES EL MOVIMIENTO DE SUS PARTÍCULAS', 'NA', 'REFORZAR CONCEPTO DE ENERGÍA Y CLASES', '../../images/preguntas/bonfire-g4a63c64ae_640.jpg'),
(880, 11, 11, 3, 307, 'EL SER HUMANO A TRAVÉS DE LA HISTORIA  HA BUSCADO FORMAS  DE UTILIZAR LA ENERGÍA PARA OBTENER UNA MEJOR CALIDAD DE VIDA.  SON EJEMPLOS DE LA ANTERIORMENTE SEÑALADO:', 'EL FUEGO (ENERGÍA QUÍMICA),  LOS MOLINOS (ENERGÍA DEL VIENTO O EÓLICA)', 'NA', 'NA', 'EL FUEGO (ENERGÍA QUÍMICA), RUEDAS HIDRÁULICAS (ENERGÍA EÓLICA)', 'CARBÓN (ENERGÍA QUÍMICA),  PETRÓLEO (ENERGÍA RENOVABLE)', 'NUCLEAR (ENERGÍA NUCLEAR), RUEDAS HIDRÁULICAS (ENERGÍA DEL VIENTO)', 'NA', 'REFORZAR CONCEPTO DE ENERGÍA Y CLASES', '../../images/preguntas/PETROLEO.jpg'),
(881, 11, 11, 3, 307, 'LA ENERGÍA POTENCIAL ES AQUELLA QUE TIENEN LOS CUERPOS POR OCUPAR UNA DETERMINADA POSICIÓN. LA ENERGÍA POTENCIAL PUEDE SER:', 'ENERGÍA POTENCIAL GRAVITATORIA Y ENERGÍA POTENCIAL ELÁSTICA', 'NA', 'NA', 'ENERGÍA POTENCIAL GRAVITATORIA Y ENERGÍA POTENCIAL ACUÁTICA', 'ENERGÍA POTENCIAL ELÁSTICAS Y ENERGÍA POTENCIAL UNIVERSAL', 'ENERGÍA POTENCIAL GRAVITATORIA Y ENERGÍA POTENCIAL DEL VACÍO', 'NA', 'REFORZAR CONCEPTO DE ENERGÍA Y CLASES', '../../images/preguntas/waterfalls-of-iguacu-gaeb4dc4c8_640.jpg'),
(882, 11, 11, 3, 308, 'EL CONCEPTO DE TRABAJO EN FÍSICA, SEÑALA:                                                                                                                                                                                                           ', 'EL TRABAJO ES UNA DE LAS FORMAS DE TRANSFERENCIA DE ENERGÍA ENTRE LOS CUERPOS.', 'NA', 'NA', 'EL TRABAJO DEPENDE DEL VALOR DE LA FUERZA APLICADA SOBRE EL CUERPO Y DE LA DEFORMACIÓN DEL SISTEMA', 'LA FUERZA DE ROZAMIENTO ES UNA FUERZA QUE AYUDA  SIEMPRE AL MOVIMIENTO', 'EL TRABAJO DEPENDE DE LAS CONDICIONES DEL CLIMA Y SUPONE UN RETO PARA LA HUMANIDAD', 'NA', 'REFORZAR CONCEPTO DE TRABAJO Y POTENCIA', '../../images/preguntas/esfuerzo.jpg'),
(883, 11, 11, 3, 308, 'LA POTENCIA COMO CONCEPTO FÍSICA SE DEFINE COMO:', 'LA MAGNITUD QUE RELACIONA  EL TRABAJO REALIZADO CON EL TIEMPO EMPLEADO EN HACERLO.', 'NA', 'NA', 'LA MAGNITUD QUE RELACIONA LA ENERGÍA POTENCIAL CON LA ENERGÍA NUCLEAR', 'LA MAGNITUD QUE RELACIONA LAS FORMAS DE TRANSFERENCIA DE ENERGÍA', 'LA MAGNITUD QUE RELACIONA LA VARIACIÓN DE ENERGÍA MECÁNICA CON EL PESO EN SENTIDO VERTICAL', 'NA', 'REFORZAR CONCEPTO DE TRABAJO Y POTENCIA', '../../images/preguntas/potencia.jpg'),
(884, 11, 11, 3, 308, 'UN ESCALADOR CON UNA MASA DE 60KG INVIERTE 30S EN ESCALAR UNA PARED DE 10M DE ALTURA.  (LA POTENCIA SE CALCULA REALIZANDO EL COCIENTE ENTRE EL TRABAJO REALIZADO Y EL TIEMPO Y EL VALOR DEL TRABAJO REALIZADO ES DE 5880J). SEGÚN LA INFORMACIÓN SUMINISTRADA, LA  POTENCIA REAL DEL ESCALADOR ES:', '196W', 'NA', 'NA', '196N', '196S', '196M', 'NA', 'REFORZAR CONCEPTO DE TRABAJO Y POTENCIA', '../../images/preguntas/climb-gb2414279a_640.jpg'),
(885, 11, 11, 3, 311, 'EL MOTOR DE UNA LAVADORA TIENE UNA POTENCIA TEÓRICA DE 1500W. SI SU RENDIMIENTO ES DEL 75%, ¿CUÁL ES SU POTENCIA REAL? (LA FÓRMULA DE RENDIMIENTO ES R= (POTENCIA REAL / POTENCIA TEÓRICA)100', '1125W', 'NA', 'NA', '1125 CABALLOS DE POTENCIA', '1125J', '1125°C', 'NA', 'REFORZAR CONVERSIONES DE UNIDADES', '../../images/preguntas/washing-machine-gbac066bd1_640.jpg'),
(886, 11, 11, 3, 311, 'CONVIERTA 7 PIES A METROS', '2.134 METROS', 'NA', 'NA', '1.134 METROS', '3.134 METROS', '4.134 METROS', 'NA', 'REFORZAR CONVERSIONES DE UNIDADES', '../../images/preguntas/carpenter-g3e10cd508_640.jpg'),
(887, 11, 11, 3, 311, 'CONVERTIR 13KM/H A M/S', '3.61M/S', 'NA', 'NA', '3.80M/S', '3.00M/S', '4.61M/S', 'NA', 'REFORZAR CONVERSIONES DE UNIDADES', '../../images/preguntas/speedometer-g1ec3f3726_640.jpg'),
(888, 11, 11, 3, 310, 'UNA FUENTE DE ENERGÍA ES:', 'CUALQUIER MATERIAL O RECURSO NATURAL DEL CUAL SE PUEDE OBTENER ENERGÍA, BIEN PARA UTILIZARLA DIRECTAMENTE O BIEN PARA TRANSFORMARLA', 'NA', 'NA', 'CUALQUIER MATERIAL RENOVABLE QUE NO SE PUEDEN REGENERAR DE MANERA NATURAL O ARTIFICAIL', 'CUALQUIER MATERIAL CONTAMINANTE QUE GENERA RESIDUOS QUE PUEDEN SER UTILIZADOS DIRECTAMENTE', 'ES UNA FUENTE DE ENERGÍA LIMPIA, SIN RESIDUOS Y FÁCIL DE ALMACENAR', 'NA', 'REFORZAR FUENTES DE ENERGÍA', '../../images/preguntas/solar-energy-g08d43e058_640.jpg'),
(889, 11, 11, 3, 310, 'SON EJEMPLOS DE FUENTES ENERGÍAS RENOVABLES:', 'ENERGÍA MAREOMOTRIZ (MAREAS), ENERGÍA HIDRÁULICA (EMBALSES Y REPRESAS), ENERGÍA EÓLICA (VIENTO)', 'NA', 'NA', 'ENERGÍA HIDRÁULICA (EMBALSES Y REPRESAS), COMBUSTIBLES FÓSILES (PETRÓLEO, CARBÓN)', 'ENERGÍA SOLAR (SOL), ENERGÍA DE BIOMASA (VEGETACIÓN),  ENERGÍA NUCLEAR (FISIÓN Y FISIÓN NUCLEAR)', 'ENERGÍA HIDRÁULICA (EMBALSES Y REPRESAS), ENERGÍA FOSILIZADA (PETRÓLEO), ENERGÍA EÓLICA (VIENTO', 'NA', 'REFORZAR FUENTES DE ENERGÍA', '../../images/preguntas/windmill-g53350006e_640.jpg'),
(890, 11, 11, 3, 310, 'DE LOS COMBUSTIBLES FÓSILES SE PUEDE AFIRMAR:', 'EMITEN GASES CONTAMINANTES QUE ACELERAN EL EFECTO INVERNADERO ', 'NA', 'NA', 'ES PROVENIENTE DE FUENTES RENOVABLES', 'SON AQUELLOS QUE TRAS SER UTILIZADOS  SE PUEDEN REGENERAR  DE MANERA NATURAL O ARTIFICIAL', 'ACUMULAN ENERGÍA DE LA BIOMASA PRODUCIDA EN LA VEGETACIÓN ', 'NA', 'REFORZAR FUENTES DE ENERGÍA', '../../images/preguntas/CARBÓN.jpg'),
(891, 11, 11, 3, 309, 'EL PRINCIPIO DE LA CONSERVACIÓN DE LA ENERGÍA INDICA:', 'QUE LA ENERGÍA NO SE CREA NI SE DESTRUYE, SOLO SE TRANSFORMA DE UNAS FORMAS EN OTRAS', 'NA', 'NA', 'QUE LA ENERGÍA SE CREA Y SE DESTRUYE DE ACUERDO CON LAS NECESIDADES INDUSTRIALES', 'QUE LA ENERGÍA NO SE CREA, PERO SE DESTRUYE PRODUCIENDO CALOR Y MOVIMIENTO', 'QUE LA ENERGÍA NO SE CREA Y NO ES POSIBLE  TRANSFORMARSE PUES SE USA DIRECTAMENTE DE LA FUENTE', 'NA', 'REFORZAR TRANSFORMACIONES DE LA ENERGÍA', '../../images/preguntas/crop-ga0024ecb1_640.jpg'),
(892, 11, 11, 3, 309, 'SON PROPIEDADES DE LA ENERGÍA:', 'LA ENERGÍA SE TRANSFIERE, LA ENERGÍA SE ALMACENA Y TRANSPORTA, LA ENERGÍA SE CONSERVA', 'NA', 'NA', 'LA ENERGÍA NO SE CONSERVA, LA ENERGÍA SE MANTIENE CONSTANTE,  LA ENERGÍA ES SOLAMENTE RENOVABLE', 'LA ENERGÍA QUÍMICA CONTENIDA EN LOS ÁTOMOS COMO ÚNICO TIPO DE ENERGÍA', 'LA ENERGÍA SOLAR COMO FUENTE PRINCIPAL DE LAS DEMÁS FUENTES DE ENERGÍA', 'NA', 'REFORZAR TRANSFORMACIONES DE LA ENERGÍA', '../../images/preguntas/NUCLEAR.jpg'),
(893, 11, 11, 3, 309, 'LA ECUACIÓN EM = EC + EP = CONSTANTE. ESTA ECUACIÓN SE CONOCE COMO:', 'PRINCIPIO DE CONSERVACIÓN DE LA ENERGÍA', 'NA', 'NA', 'CAPACIDAD PARA REALIZAR UN TRABAJO', 'ECUACIÓN QUE SEÑALA LA PÉRDIDA DE CALIDAD DE LA ENERGÍA', 'ECUACIÓN PARA VERIFICAR  QUE LA ENERGÍA NO PUEDE TRANSFORMARSE ÍNTEGRAMENTE EN CALOR', 'NA', 'REFORZAR TRANSFORMACIONES DE LA ENERGÍA', '../../images/preguntas/DEPORTES.jpg'),
(894, 12, 11, 3, 211, '¿QUÉ ES LA CAÍDA LIBRE DE UN CUERPO?', 'MOVIMIENTO QUE SE DEBE ÚNICAMENTE A LA INFLUENCIA DE LA GRAVEDAD', 'NA', 'NA', 'MOVIMIENTO LIBRE QUE TIENE EN CUENTA LA RESISTENCIA DEL AIRE', 'MOVIMIENTO DE LOS CUERPOS CON ACELERACIÓN MULTIVECTORIAL', 'MOVIMIENTO BASADO EN LA RESISTENCIA AERODINÁMICA QUE PRESENTA EL AIRE', 'NA', 'REFORZAR CAÍDA LIBRE', '../../images/preguntas/free-fall-g46fed6bc6_640.jpg'),
(895, 12, 11, 3, 211, 'UN CUERPO SE DEJA CAER DESDE UN EDIFICIO.  SEGÚN LA FIGURA ADJUNTA (TOMADA DE FISMAT), ¿CUÁL ES LA ALTURA DEL EDIFICIO? ECUACIÓN SUGERIDA H=GT²/2  ', '490 METROS', 'NA', 'NA', '1490 METROS', '4000 DECÍMETROS', '520 METROS', 'NA', 'REFORZAR CAÍDA LIBRE', '../../images/preguntas/CAÍDA LIBRE.png'),
(896, 5, 5, 3, 60, 'EN LA SIGUIENTE IMAGEN SE MUESTRAN TRES BOLSAS, LAS CUALES TIENEN EN SU INTERIOR CIERTO DE NUMERO DE CANICAS DE COLORES. ¿LA PROBABILIDAD DE  SOLAMENTE LAS CANICAS ROJAS ES?: \n', 'A.  BOLSA A = 3/8  -   BOLSA B = 2/11   -   BOLSA C  =  1/3', 'NA', 'NA', 'B.  BOLSA A = 2/11  -   BOLSA B = 1/3   -   BOLSA C  =  3/8', 'C.  BOLSA A = 8/3  -   BOLSA B = 11/2   -   BOLSA C  =  3/1', 'D.  LAS PROBABILIDADES SON LAS MISMAS.', 'NA', 'REFORZAR TIEMPO (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/cuarto 4.png'),
(897, 5, 5, 3, 63, 'LA SEÑAL QUE SE OBSERVA EN LA FIGURA, ES UNA TÍPICA REPRESENTACIÓN DEL SIGUIENTE TRIANGULO Y SU AFIRMACIÓN:', 'C.  ES UN TRIÁNGULO EQUILÁTERO, POR QUE TODOS SUS LADOS SON IGUALES.', 'NA', 'NA', 'A.  ES UN TRIANGULO ISÓSCELES, POR QUE SOLAMENTE TIENE DOS LADOS IGUALES', 'B.  ES UN TRIANGULO RECTÁNGULO, POR QUE TIENE UN ÁNGULO DE 90 GRADOS.', 'D.  ES UN TRIANGULO ESCALENO, POR QUE TODOS SUS LADOS SON IGUALES.', 'NA', 'REFORZAR SOLUCIÓN DE PROBLEMAS (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/cuarto 6.png'),
(898, 5, 5, 3, 63, 'LOS ARBOLES QUE MUESTRA LA FIGURA Y QUE ESTÁN DETALLADOS CON LAS FECHAS DE COLOR AZUL Y AMARILLO, SE PUEDEN DEFINIR COMO RECTAS:', 'D.  RECTAS PARALELAS', 'NA', 'NA', 'A.  RECTAS PERPENDICULARES', 'B.  RECTAS OBLICUAS', 'C.  RECTAS TANGENTES.', 'NA', 'REFORZAR SOLUCIÓN DE PROBLEMAS (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/cuarto 7.png'),
(899, 10, 4, 5, 319, '1.	LA REVOLUCIÓN INDUSTRIAL FUE UN PROCESO INICIADO EN EL SIGLO XVIII EN INGLATERRA, POR EL CUAL LA HUMANIDAD PASÓ DE UNAS FORMAS DE VIDA TRADICIONALES BASADAS EN LA AGRICULTURA, LA GANADERÍA Y LA PRODUCCIÓN ARTESANAL, A OTRAS FUNDAMENTADAS EN LA PRODUCCIÓN INDUSTRIAL Y LA MECANIZACIÓN. ¿CUÁL CREES QUE FUE UNA CONSECUENCIA ECONÓMICA DE ESTA REVOLUCIÓN?', 'A.	LA ELIMINACIÓN DE LAS FORMAS DE VIDA TRADICIONALES', 'B.	LAS NUEVAS FORMAS DE TRABAJO ', 'C.	LA MECANIZACIÓN DEL TRABAJO Y POR LO TANTO EL DESEMPLEO ', 'D.	REDUCCIÓN DEL CONSUMO', 'NA', 'NA', 'NA', 'REFORZAR REVOLUCIONES, PROCESOS DE CAMBIO Y ESTADOS NACIÓN LATINOAMERICANOS', 'NA'),
(900, 10, 4, 5, 319, '2.	LA REVOLUCIÓN INDUSTRIAL FUE UN PERÍODO DE GRANDES CAMBIOS ECONÓMICOS Y SOCIALES QUE SE CARACTERIZÓ, A NIVEL PRODUCTIVO, POR EL DESARROLLO DE: ', 'B.	EL COMERCIO', 'C.	LAS MAQUINAS', 'D.	PRODUCCIÓN INDUSTRIAL Y MECANIZACIÓN', 'A.	LA AGRICULTURA', 'NA', 'NA', 'NA', 'REFORZAR REVOLUCIONES, PROCESOS DE CAMBIO Y ESTADOS NACIÓN LATINOAMERICANOS', 'NA'),
(901, 10, 4, 5, 320, '3.	EN COLOMBIA A MEDIADOS DEL SIGLO XIX COMENZARON A ESTRUCTURARSE EN LA NUEVA GRANADA, FILOSÓFICA Y DOCTRINARIAMENTE, LOS PARTIDOS LIBERAL Y CONSERVADOR. EN 1848 APARECIÓ EL PRIMER PROGRAMA LIBERAL ELABORADO POR EZEQUIEL ROJAS Y UN AÑO MÁS TARDE JOSÉ EUSEBIO CARO Y MARIANO OSPINA RODRÍGUEZ REDACTARON EL CONSERVADOR. SE HALLAN RELACIONADOS CON EL FEDERALISMO Y CENTRALISMO. DEL PÁRRAFO ANTERIOR PODEMOS DEDUCIR QUE:', 'LOS PARTIDOS TRADICIONALES EN COLOMBIA SON EL LIBERAL Y EL CONSERVADOR', 'QUE EL PARTIDO LIBERAL Y CONSERVADOR, PROVIENEN DEL FEDERALISMO Y CENTRALISMO', 'LOS PROMOTORES PARA EL PARTIDO LIBERAL FUE EZEQUIEL ROJAS Y JOSÉ EUSEBIO CARO Y MARIANO OSPINA RODRÍGUEZ PARA EL CONSERVADOR', 'LOS PARTIDOS POLÍTICOS SON RECIENTES', 'NA', 'NA', 'NA', 'REFORZAR EL PODER POLÍTICO', 'NA'),
(902, 10, 4, 5, 320, 'ES POSIBLE Y CONVENIENTE PARA LA NACIÓN Y PARA EL CONSERVATISMO BUSCAR UN ENTENDIMIENTO CLARO Y FIRME CON EL PARTIDO LIBERAL SOBRE LA ÚNICA BASE QUE ÉSTE SOMETE A SU CONSIDERACIÓN Y A LA DISCUSIÓN DE TODOS LOS COLOMBIANOS: LA DE QUE SE REGRESE A LA NORMALIDAD INSTITUCIONAL MEDIANTE UN ACUERDO DE LOS DOS PARTIDOS TRADICIONALES, QUE AGRUPAN A LA CASI TOTALIDAD DE COLOMBIANOS EN SUS FILAS, POR EL CUAL SE HAGA IMPOSIBLE QUE EL GOBIERNO CIVIL Y NACIONAL QUE HAYA DE SUCEDER AL DE LAS FUERZAS ARMADAS SE CONVIERTA EN UNA HEGEMONÍA DE PARTIDO, Y RECAIGA LA NACIÓN EN LOS PELIGROS Y LAS TRAGEDIAS ANTERIORES. EL ANTERIOR FRAGMENTO ES VERDADERO PORQUE:', 'LOS PARTIDOS TRADICIONALES AGRUPAN CASI LA TOTALIDAD DE COLOMBIANOS EN SUS IDEOLOGÍAS', 'REFLEJA EL ACUERDO REALIZADO POR LOS PARTIDOS TRADICIONALES COMO SALIDA A LA CRISIS SOCIAL PRODUCIDA POR LA VIOLENCIA Y LOS SECTARISMOS BIPARTIDISTAS DE LA DÉCADA DE LOS AÑOS 1950', 'MUESTRA UNA IRREGULARIDAD Y POSTERIORMENTE LA NORMALIDAD INSTITUCIONAL MEDIANTE UN ACUERDO DE LOS DOS PARTIDOS TRADICIONALES', 'LOS PARTIDOS TRADICIONALES SON UNA ALTERNATIVA POLÍTICA ANTE LA AMENAZA DEL FASCISMO, LA DICTADURA MILITAR Y LOS TOTALITARISMOS', 'NA', 'NA', 'NA', 'REFORZAR EL PODER POLÍTICO', 'NA'),
(903, 10, 4, 5, 321, 'LA CREACIÓN DE LA CONSTITUCIÓN DE 1991 NACIÓ NO SOLAMENTE POR LA NECESIDAD DE REESTRUCTURAR EL ESTADO Y EL SISTEMA JURÍDICO COLOMBIANO TRAS 104 AÑOS DE VIGENCIA DE LA CONSTITUCIÓN DE 1886, O COMO INSTRUMENTO DE REIVINDICACIÓN DE LIBERTADES, GARANTÍAS Y DERECHOS HASTA ENTONCES LIMITADOS, SINO COMO RESPUESTA INSTITUCIONAL A LAS VARIAS FORMAS DE VIOLENCIA QUE ASOLABAN AL PAÍS. EL PÁRRAFO ANTERIOR INFIERE QUE:', 'ERA NECESARIO CAMBIAR O REFORMAR LA CONSTITUCIÓN DE 1886 YA QUE NO CUMPLÍA CO LAS NECESIDADES DEL MOMENTO', 'LA CONSTITUCIÓN DE 1991 REESTRUCTURABA EL ESTADO Y REIVINDICABA DERECHOS QUE ESTABAN LIMITADOS EN LA ANTERIOR CONSTITUCIÓN ', 'SE CREA LA NUEVA CONSTITUCIÓN NECESIDAD DE BUSCAR LA PAZ Y RESTABLECER EL ORDEN PÚBLICO, GRAVEMENTE PERTURBADO', 'NINGUNA DE LAS CONSTITUCIONES DEFIENDE LOS DERECHOS Y LIBERTADES DE LOS COLOMBIANOS ', 'NA', 'NA', 'NA', 'REFORZAR CONSTITUCIÓN POLÍTICA COLOMBIANA 1991', 'NA'),
(904, 10, 4, 5, 321, 'LA CONSTITUCIÓN DE 1991 ES UNA UNIDAD JURÍDICA COMPUESTA POR NORMAS Y PRINCIPIOS CONTEMPLADOS EN TRATADOS INTERNACIONALES SOBRE DERECHOS HUMANOS, EN EL DERECHO INTERNACIONAL HUMANITARIO, EN LEYES ESTATUTARIAS Y EN OTRAS DISPOSICIONES INTEGRADAS CON EL PROPÓSITO DE AMPARAR EFECTIVAMENTE LOS DERECHOS FUNDAMENTALES. ESTAS SON REGLAS JURÍDICAS QUE, AUN SIN APARECER FORMALMENTE EN LOS ARTÍCULOS DE LA CARTA, SON UTILIZADAS COMO CRITERIOS Y PARÁMETROS DEL CONTROL DE CONSTITUCIONALIDAD DE LAS LEYES Y DECRETOS CON FUERZA DE LEY. EL PÁRRAFO ANTERIOR NOS INDICA QUE:', 'LA CONSTITUCIÓN DE 1991 POSEE DERECHOS Y GARANTÍAS CONTENIDOS EN CONVENIOS INTERNACIONALES', 'EL DERECHO INTERNACIONAL HUMANITARIO Y LEYES ESTATUTARIAS AMPARAN DERECHOS FUNDAMENTALES DE LA CONSTITUCIÓN ACTUAL. ', 'LA CONSTITUCIÓN DE 1991 TRATA DE PRINCIPIOS Y REGLAS DE VALOR Y JERARQUÍA SUPERIOR, NORMAS SITUADAS EN EL NIVEL CONSTITUCIONAL, AUNQUE NO ESTÉN INCORPORADAS A LA CONSTITUCIÓN EN ESTRICTO SENTIDO.', 'LA CONSTITUCIÓN DE 1991 NO CUMPLE TOTALMENTE LO POSTULADO', 'NA', 'NA', 'NA', 'REFORZAR CONSTITUCIÓN POLÍTICA COLOMBIANA 1991', 'NA'),
(905, 10, 4, 5, 323, 'TENGO SOBRE MI CORAZÓN LA INSURRECCIÓN DE AMÉRICA. NO SON LOS POBRES INDIOS LOS QUE LA PROMUEVEN, SON LOS CRIOLLOS, QUE NO PELEAN POR SACUDIR UN YUGO, SINO POR ARREBATAR UN MANDO QUE ENVIDIAN A LA METRÓPOLI, LA ANTERIOR FRASE DESTACA COMO MÓVIL DE LA INDEPENDENCIA AMERICANA:', 'LAS DIFÍCILES CONDICIONES EN LAS QUE SE ENCONTRABAN LOS INDÍGENAS AMERICANOS, VÍCTIMAS DE MALTRATOS, ABUSOS Y PESADAS CARGAS FISCALES.', 'LA DISCRIMINACIÓN CULTURAL DE LA QUE SE SENTÍAN VÍCTIMAS LOS CRIOLLOS.', 'EL PODER DESPÓTICO QUE EJERCÍA EL REY SOBRE SUS SÚBDITOS.', 'EL DESEO DE PODER QUE EMBARGABA A LAS ÉLITES CRIOLLAS.', 'NA', 'NA', 'NA', 'REFORZAR COLOMBIA SIGLO XIX ESTADO NACIÓN Y EL MUNDO EN EL SIGLO XX', 'NA'),
(906, 10, 4, 5, 322, 'EN EL PERÍODO POSTERIOR AL PROCESO DE INDEPENDENCIA SURGIERON EN AMÉRICA LATINA LÍDERES QUE BUSCARON CONTROLAR EL PODER A PARTIR DE SUS REGLONES ESTOS CAUDILLOS SURGIDOS DE LA GUERRA, GENERALMENTE PROVENIENTES DEL CAMPO, APROVECHABAN LA OPORTUNIDAD DE MEJORAR SU FORTUNA PERSONAL Y EXPANDIR SU RADIO DE INFLUENCIA, REPRESENTANDO LOS INTERESES DE FAMILIAS O REGIONES PARA ASÍ CONTROLAR MÁS CARGOS E INCREMENTAR SUS HACIENDAS. SIN EMBARGO, LA FIGURA DEL CAUDII : FUE IMPORTANTE EN LA MEDIDA QUE ', 'FUE UNA ALTERNATIVA DE COHESIÓN SOCIAL QUE RESPONDÍA A INTERESES NACIONALES', 'LA SOCIEDAD ESTABA FRAGMENTADA SOCIAL Y POLÍTICAMENTE Y HABÍA DIFERENTES IDEALES DE NACIÓN', 'CONCRETÓ EN LAS SOCIEDADES LATINOAMERICANAS LOS IDEALES DE DEMOCRACIA Y JUSTICIA', 'EL PUEBLO APOYÓ AL CAUDILLO PARA CONSTITUIR REALMENTE UNA NACIÓN.', 'NA', 'NA', 'NA', 'REFORZAR IMPERIALIAMO COLONIALISMO', 'NA'),
(907, 10, 4, 5, 322, 'SE CONOCE COMO IMPERIALISMO AL CONTROL POLÍTICO Y ECONÓMICO DE UNA PAÍS SOBRE OTRO. SI BIEN A LO LARGO DE LA HISTORIA HUBO DIVERSOS IMPERIALISMO, SE SUELE RESERVAR EL TÉRMINO IMPERIALISMO PARA REFERIRSE AL DOMINIO EJERCIDO POR EUROPA SOBRE OTROS TERRITORIOS A PARTIR DEL SIGLO XV Y, DE MODO MÁS ESPECÍFICO, AL DOMINIO DE LAS POTENCIAS INDUSTRIALES OCCIDENTALES Y JAPÓN DE FINES DEL SIGLO XIX Y PRINCIPIOS DEL SIGLO XX SOBRE ÁFRICA, OCEANÍA Y ALGUNAS REGIONES DE ASIA. RESPECTO DE ESTE IMPERIALISMO, ENTRE 1873 Y 1896 SE PRODUJO UNA IMPORTANTE CRISIS ECONÓMICA A NIVEL MUNDIAL, QUE SE CONOCE COMO LA “GRAN DEPRESIÓN”. LA EXPANSIÓN IMPERIALISTA SE HA CONSIDERADO:', 'EL SURGIMIENTO DE DE NUEVAS FUENTES DE MATERIAS PRIMAS Y NUEVOS MERCADOS DEBIDO AL AVANCE INDUSTRIAL Y COMERCIAL', 'LA BÚSQUEDA ESTRATÉGICA DE PRESTIGIO INTERNACIONAL POR PARTE DE LOS PAÍSES INDUSTRIALIZADOS.', 'LA NECESIDAD QUE SE LES PLANTEABA A LAS GRANDES POTENCIAS DE TRANSFERIR O LLEVAR A LAS COLONIAS Y A LAS ZONAS DE INFLUENCIA LOS EXCESOS DE LA POBLACIÓN DE LOS PAÍSES POTENCIA', 'IMPOSICIÓN DE TRATADOS', 'NA', 'NA', 'NA', 'REFORZAR IMPERIALIAMO COLONIALISMO', 'NA'),
(908, 10, 4, 5, 323, ' ¿QUÉ ACONTECIMIENTO OCURRIÓ ANTES QUE FINALIZARA LA SEGUNDA GUERRA MUNDIAL? ', 'PRIMERA GUERRA MUNDIAL', 'FORMACIÓN DE LA UNIÓN SOVIÉTICA.', 'PRIMERA GUERRA MUNDIAL Y FORMACIÓN DE LA UNIÓN SOVIÉTICA.', 'CAÍDA DEL MURO DE BERLÍN', 'NA', 'NA', 'NA', 'REFORZAR COLOMBIA SIGLO XIX ESTADO NACIÓN Y EL MUNDO EN EL SIGLO XX', 'NA'),
(909, 10, 4, 5, 323, '¿CUÁL FUE UNA CONSECUENCIA DE LA SEGUNDA GUERRA MUNDIAL? ', 'SE DIERON EXTENSOS Y DEVASTADORES BOMBARDEOS AÉREOS DE LAS PRINCIPALES CIUDADES ', 'LAS POTENCIAS EUROPEAS TANTO ALIADAS COMO DEL EJE QUEDARON, AL FINAL DEL CONFLICTO, TAN DEBILITADAS ECONÓMICA Y POLÍTICAMENTE QUE LA CONDUCCIÓN DE LA POLÍTICA MUNDIAL PASÓ A LAS DOS NUEVAS SUPERPOTENCIAS', 'LA PÉRDIDA DE PODER POLÍTICO Y ECONÓMICO DE EUROPA LLEVÓ A LA PÉRDIDA DE CONTROL DE SUS COLONIAS EN EL TERCER MUNDO, PERMITIENDO ASÍ NUMEROSOS PROCESOS DE INDEPENDENCIA. ', 'EL SURGIMIENTO DEL FASCISMO', 'NA', 'NA', 'NA', 'REFORZAR COLOMBIA SIGLO XIX ESTADO NACIÓN Y EL MUNDO EN EL SIGLO XX', 'NA'),
(910, 8, 6, 3, 134, 'EN EL PÁRRAFO DE LA IMAGEN, SE UTILIZAN LAS COMILLAS PARA:', 'REPRODUCIR LA INTENCIÓN DE OTRA PERSONA DIFERENTE AL AUTOR.', 'NA', 'NA', 'RESALTAR UNA OPINIÓN O REFLEXIÓN DIFERENTE AL AUTOR.', 'INTRODUCIR UNA EXPLICACIÓN SOBRE UNOS DE LOS CONCEPTOS ABORDADOS EN EL TEXTO.', 'CONTRADECIR LA OPINIÓN DEL AUTOR.', 'NA', 'REFORZAR EXPRESIÓN GRAMATICAL', '../../images/preguntas/Captura de pantalla (364).png'),
(911, 8, 6, 3, 134, 'EN LA EXPRESIÓN : CON UNA VOZ SEDANTE QUE NO HABÍA DE ALTERARSE ANTE NADA. UN ANTÓNIMO DE LA PALABRA SEDANTE ES:', 'INTOLERABLE.', 'NA', 'NA', 'ESTIMULANTE.', 'HINÓPTICA.', 'TRANQUILIZANTE.', 'NA', 'REFORZAR EXPRESIÓN GRAMATICAL', 'NA'),
(912, 9, 4, 5, 324, 'LLAMAMOS EDAD MEDIA AL PERÍODO HISTÓRICO QUE VA DESDE LA CAÍDA DEL IMPERIO ROMANO DE OCCIDENTE (476) HASTA EL DESCUBRIMIENTO DE AMÉRICA (1492). ESTE LARGO PERÍODO HISTÓRICO, CONOCIDO TAMBIÉN COMO FEUDALISMO, ERA UNA ORGANIZACIÓN SOCIAL, POLÍTICA Y ECONÓMICA BASADA EN LA TIERRA Y EN EL VASALLAJE. ¿CUÁLES CREES QUE FUERON LOS CAMBIOS CULTURALES, POLÍTICOS, SOCIALES Y ECONÓMICOS DE ESTA ÉPOCA?', 'LA CAÍDA DEL IMPERIO ROMANO, LA APARICIÓN DEL FEUDALISMO.', 'LA CAÍDA DEL IMPERIO ROMANO, EL DESCUBRIMIENTO DE AMÉRICA Y EL FEUDALISMO', 'EL FEUDALISMO ', 'EL CONJUNTO DE DATOS DIVIDIDO ', 'NA', 'NA', 'NA', 'REFORZAR ANTROPOLOGÍA', 'NA'),
(913, 9, 4, 5, 326, 'EL IMPERIO ROMANO FUE LA ÚLTIMA DE LAS TRES ETAPAS DE DESARROLLO DE GOBIERNO DE LA CIVILIZACIÓN ROMANA, SE CARACTERIZÓ POR UN GOBIERNO AUTÓCRATA EN EL QUE LOS PODERES, ADMINISTRATIVO, POLÍTICO, MILITAR Y RELIGIOSO, ESTABAN EN MANOS DE UNA SOLA PERSONA, EL EMPERADOR, QUE NO ERA REGULADO POR NINGUNA OTRA AUTORIDAD. ¿POR QUÉ CREES QUE EL IMPERIO ROMANO TENÍA UN GOBIERNO AUTÓCRATA?', 'PORQUE SU SISTEMA DE GOBIERNO CONCENTRABA EL PODER EN UNA SOLA FIGURA ', 'PORQUE TODOS LOS PODERES LOS MANEJABA UNA SOLA PERSONA Y EJERCÍA EL PODER ', 'PORQUE NINGUNA AUTORIDAD REGULABA A QUIEN MANEJABA EL PODER', 'PORQUE EL EMPERADOR NO SABÍA GOBERNAR', 'NA', 'NA', 'NA', 'REFORZAR HISTORIA', 'NA'),
(914, 9, 4, 5, 326, 'EL MOVIMIENTO DEL RENACIMIENTO ERA EL NOMBRE DADO AL AUGE CULTURAL SUCEDIDO DURANTE LOS SIGLOS XIV, XV Y XVI EN EUROPA, LAS PRINCIPALES CARACTERÍSTICAS DEL RENACIMIENTO FUERON EL RACIONALISMO, EL EXPERIMENTALISMO, EL INDIVIDUALISMO Y EL ANTROPOCENTRISMO. UNA GRAN CARACTERÍSTICA DEL RENACIMIENTO FUE EL HUMANISMO TENIENDO COMO PROTAGONISTA EN ESCENA AL PROPIO HOMBRE QUE A PARTIR DE ENTONCES COMENZÓ A SER TRATADO COMO SER RACIONAL Y CENTRO DEL UNIVERSO. SEGÚN EL TEXTO ANTERIOR AL RENACIMIENTO LE SE LE ATRIBUYE:', 'EL RACIONALISMO', 'EL RACIONALISMO, EL EXPERIMENTALISMO, EL INDIVIDUALISMO Y EL ANTROPOCENTRISMO.', 'EL HECHO DE QUE EL HOMBRE FUERA TRATADO COMO SER RACIONAL.', 'EL PROTAGONISMO DEL SER HUMANO EN EL MUNDO ', 'NA', 'NA', 'NA', 'REFORZAR HISTORIA', 'NA'),
(915, 9, 4, 5, 326, 'EL HUMANISMO SE INFUNDIÓ EN LA CULTURA Y LOS PENSAMIENTOS CLÁSICOS DE LA ANTIGUA GRECIA Y ROMA, PREVALECIÓ LA RAZÓN HUMANA POR ENCIMA DE LA FE Y SE INTERESÓ POR EL CONCEPTO DEL HOMBRE COMO CENTRO DEL UNIVERSO, EN OPOSICIÓN A IDEAS TRADICIONALES Y CREENCIAS DE LA RELIGIÓN ORTODOXA. ¿CUÁL ES EL PROPÓSITO DEL HUMANISMO?', 'DESESTIMAR AL HOMBRE Y SU ENTORNO.', 'EL HOMBRE COMO IMAGEN CENTRAL DE LA EXISTENCIA DE LA CONCIENCIA Y DEL PODER DEL CONOCIMIENTO', 'TRASMITIR LOS PENSAMIENTOS CLÁSICOS DE GRECIA Y ROMA.', 'DARLE MAYOR IMPORTANCIA A LA RAZÓN DEL HOMBRE, POR ENCIMA DE LA FE. ', 'NA', 'NA', 'NA', 'REFORZAR HISTORIA', 'NA'),
(916, 9, 4, 5, 326, 'LA CIVILIZACIÓN MAYA FUE UNA DE LAS PRINCIPALES CIVILIZACIONES, SE DESARROLLÓ EN LA ANTIGUA MESOAMÉRICA SU CULTURA SE DESTACÓ POR SUS SISTEMAS DE ESCRITURA, NUMÉRICOS Y POR EL USO DEL CALENDARIO, ASÍ COMO POR SU IMPRESIONANTE ARTE Y ARQUITECTURA. DE LO ANTERIORMENTE LEÍDO PODEMOS DETERMINAR QUE:', 'LA CIVILIZACIÓN MAYA TENÍA VARIOS SISTEMAS DE ESCRITURA', 'LOS MAYAS USABAN CALENDARIO', 'FUERON UNO DE LAS CIVILIZACIONES MÁS IMPORTANTES EN AMÉRICA POR SU DESARROLLO CULTURAL E INTELECTUAL', 'TENÍAN CONOCIMIENTOS BÁSICOS Y SU CULTURA FUE POCO DESARROLLADA', 'NA', 'NA', 'NA', 'REFORZAR HISTORIA', 'NA'),
(917, 9, 4, 5, 326, 'EN AMÉRICA, ÁFRICA Y OTROS CONTINENTES LA ÉPOCA COLONIAL ES EL PERÍODO HISTÓRICO EN EL CUAL SUS SOCIEDADES FUERON CONTROLADAS DESDE LAS METRÓPOLIS EUROPEAS. ERAN SOMETIDAS A UN PROCESO DE DOMINACIÓN POLÍTICA, SOCIAL Y CULTURAL POR PARTE DE LOS PRINCIPALES IMPERIOS DE LA ÉPOCA, COMO EL ESPAÑOL, FRANCÉS Y EL INGLÉS. ¿SEGÚN EL ANTERIOR PÁRRAFO LA ÉPOCA COLONIAL FUE?', 'FUE LA ÉPOCA EN LA QUE AMÉRICA, ÁFRICA Y OTROS CONTINENTES FUERON SOMETIDOS A LA ESCLAVITUD.', 'FUE LA ÉPOCA EN LA QUE LAS SOCIEDADES FUERON CONTROLADAS DESDE EUROPA', 'FUE LA ÉPOCA EN LA QUE AMÉRICA, ÁFRICA Y OTROS CONTINENTES FUERON DOMINADOS POLÍTICA, SOCIAL Y CULTURALMENTE. ', 'FUE LA ÉPOCA DONDE LOS ESPAÑOLES ', 'NA', 'NA', 'NA', 'REFORZAR HISTORIA', 'NA'),
(918, 9, 4, 5, 325, 'EL DESCUBRIMIENTO DE AMÉRICA SE DIO EL 12 DE OCTUBRE DE 1492, FUE UN ACONTECIMIENTO DE MAGNITUD MUNDIAL, EUROPA DESCUBRE AMÉRICA, A TRAVÉS DE UNA EXPEDICIÓN DIRIGIDA POR CRISTÓBAL COLÓN POR MANDATO DE LOS REYES ISABEL Y FERNANDO DE CASTILLA Y ARAGÓN. ¿DEL TEXTO ANTERIOR, PODEMOS DECIR QUE CRISTÓBAL COLON FUE RESPALDADO POR?', 'EUROPA', 'LOS ESPAÑOLES', 'LOS REYES ISABEL Y FERNANDO DE CASTILLA Y ARAGÓN', 'LA CORONA ESPAÑOLA Y AMÉRICA', 'NA', 'NA', 'NA', 'REFORZAR SOCIOLOGÍA', 'NA'),
(919, 9, 4, 5, 325, 'LAS CAPITULACIÓN DE SANTA FE FUE UN DOCUMENTO FIRMADO POR LOS REYES CATÓLICOS EL 17 DE ABRIL DE 1492 EN LA LOCALIDAD DE SANTA FE, DONDE SE FORMALIZABA LA INVASIÓN Y SAQUEO DE LA INDIA. ADEMÁS DE ELLO PLASMABAN LOS ACUERDOS Y BENEFICIOS QUE RECIBIRÍA CRISTÓBAL COLÓN, POR LA EXPEDICIÓN QUE SE PLANEABA REALIZAR POR EL MAR HACIA OCCIDENTE. ¿LAS CAPITULACIONES DE SANTA FE SE CREARON PARA?', 'INVADIR Y SAQUEAR LA INDIA', 'ACORDAR LOS BENEFICIOS DE CRISTÓBAL COLON ', 'LA PLANEACIÓN DE LA EXPEDICIÓN ', 'ACORDAR LOS BENEFICIOS DE CRISTÓBAL COLON E INVADIR LAS INDIAS  ', 'NA', 'NA', 'NA', 'REFORZAR SOCIOLOGÍA', 'NA'),
(920, 9, 4, 5, 325, 'AMÉRICO VESPUCIO (AMERIGO VESPUCCI), NAVEGANTE PROCEDENTE DE FLORENCIA, ITALIA QUE LLEGÓ AL NUEVO MUNDO EN DOS OPORTUNIDADES, VESPUCIO SOSTUVO QUE LAS TIERRAS DESCUBIERTAS POR CRISTÓBAL COLÓN NO CORRESPONDÍAN AL ASIA SINO A UN NUEVO CONTINENTE. A AMÉRICO VESPUCIO, SE LE ATRIBUYE:', 'EL NOMBRE DE AMÉRICA ', 'EL DESCUBRIMIENTO DE UN NUEVO CONTINENTE. ', 'EL DESCUBRIR QUE LAS TIERRAS DESCUBIERTAS POR CRISTÓBAL COLÓN NO CORRESPONDÍAN AL ASIA SINO A UN NUEVO CONTINENTE.', 'LOS VIAJES DE COLON ', 'NA', 'NA', 'NA', 'REFORZAR SOCIOLOGÍA', 'NA'),
(921, 9, 4, 5, 325, 'UN RESGUARDO INDÍGENA ES UNA DIVISIÓN TERRITORIAL DE CARÁCTER LEGAL QUE, POR MEDIO DE UN TÍTULO, GARANTIZA A DETERMINADO GRUPO INDÍGENA LA PROPIEDAD SOBRE UN TERRITORIO POSEÍDO EN COMÚN Y TRADICIONALMENTE HABITADO POR ÉL. LA RESERVA INDÍGENA CORRESPONDE A UNA SECCIÓN TERRITORIAL DE PROPIEDAD DEL ESTADO, QUE SE ASIGNA PROVISIONALMENTE A UNA COMUNIDAD INDÍGENA, PERO EN LA CALIDAD USUFRUCTUARIA YA QUE EL ESTADO CONTINÚA SIENDO DUEÑO DEL SUELO Y EL SUBSUELO. LO ANTERIORMENTE LEÍDO, NOS INDICA QUE:', 'LOS RESGUARDOS SON TERRITORIOS LEGALMENTE CONSTITUIDOS Y GARANTIZAN LA POSESIÓN DE ESTE POR PARTE DE INDÍGENAS', 'EL ESTADO ASIGNA POR DETERMINADO TIEMPO UNA PROPIEDAD DE TIERRAS A LOS INDÍGENAS', 'EL ESTADO ASIGNA UNAS TIERRAS A LOS INDÍGENAS, CON EL FIN DE QUE ESTOS LAS APROVECHEN, PERO EL ESTADO SIGUE SIENDO EL DUEÑO. ', 'LOS RESGUARDOS SON VIVIENDAS DE LOS INDÍGENAS', 'NA', 'NA', 'NA', 'REFORZAR SOCIOLOGÍA', 'NA'),
(922, 11, 12, 3, 334, 'LA SIGUIENTE ES UNA ESTROFA DE LA CANCIÓN DE DINOSAURIOS, COMPUESTA E INTERPRETADA POR EL MÚSICO ARGENTINO CHARLIE GARCÍA EN 1985:  LOS AMIGOS DEL BARRIO PUEDEN DESAPARECER  LOS CANTORES DE RADIO PUEDEN DESAPARECER LOS QUE ESTÁN EN LOS DIARIOS PUEDEN DESAPARECER  LA PERSONA QUE AMAS PUEDE DESAPARECER.  PUEDE AFIRMARSE QUE LA LETRA DE ESTA CANCIÓN', 'TIENE RELACIÓN CON LA DICTADURA ARGENTINA, EN TANTO DESCRIBE LA PERSECUCIÓN SOCIAL Y POLÍTICA CARACTERÍSTICA DE LOS REGÍMENES DICTATORIALES.', 'NA', 'NA', 'NO TIENE RELACIÓN CON LA DICTADURA, EN TANTO EN ESTE TIPO DE GOBIERNO SE RESPETAN LOS DERECHOS CIVILES Y POLÍTICOS', 'TIENE RELACIÓN CON LA ÉPOCA DE LA DICTADURA ARGENTINA, PORQUE CHARLIE GARCÍA TIENE ESA NACIONALIDAD. ', 'NO TIENE RELACIÓN CON LA DICTADURA ARGENTINA, DADO QUE EL ARTE Y LA POLÍTICA SON ÁMBITOS INDEPENDIENTES DE LA VIDA SOCIAL.', 'NA', 'REFORZAR AMÉRICA LATINA EN EL SIGLO XX Y MOVIMIENTOS POPULARES EN LATINOAMERICANOS', '../../images/preguntas/images.jpeg'),
(923, 11, 12, 3, 335, 'DE LOS SIGUIENTES FACTORES, ¿CUÁLES SE RELACIONAN, DE MANERA DIRECTA, CON EL SURGIMIENTO DE MOVIMIENTOS GUERRILLEROS EN COLOMBIA EN LA DÉCADA DE LOS AÑOS 1960?   1.	EL AUGE DEL NEGOCIO DEL NARCOTRAFICO EN EL SUR DEL PAÍS. 2.	LA DIFUSIÓN DE LAS IDEAS QUE ORIENTARON LA REVOLUCIÓN CUBANA. 3.	EL ASESINATO DE INTEGRANTES DE LA UNIÓN PATRIÓTICA. 4.	LOS PROBLEMAS DE DISTRIBUCIÓN DE LA TIERRA EN EL SECTOR RURAL. ', '2 Y 4', 'NA', 'NA', '1 Y 2', '2 Y 3', '3 Y 1', 'NA', 'REFORZAR COLOMBIA EN EL SIGLO XX', '../../images/preguntas/descarga.jpeg'),
(924, 11, 12, 3, 334, 'EL ESCRITOR EDUARDO GALEANO AFIRMÓ LO SIGUIENTE EN 1970:   “AMÉRICA LATINA CONTINÚA EXISTIENDO AL SERVICIO DE LAS NECESIDADES AJENAS, COMO FUENTES Y RESERVAS DEL PETRÓLEO, HIERRO Y COBRE (…)”.   SEGÚN ESTOS PLANTEAMIENTOS, EL MODELO ECONÓMICO DE AMÉRICA LATINA SE CONCENTRA EN LA PRODUCCIÓN Y COMERCIALIZACIÓN DE:', 'MATERIAS PRIMAS ', 'NA', 'NA', 'SERVICIOS ', 'BIENES MANUFACTURADOS ', 'RECURSOS RENOVABLES ', 'NA', 'REFORZAR AMÉRICA LATINA EN EL SIGLO XX Y MOVIMIENTOS POPULARES EN LATINOAMERICANOS', '../../images/preguntas/descggarga (1).jpeg'),
(925, 11, 12, 3, 337, 'LA CONSTITUCIÓN DE 1991 ESTABLECIÓ QUE LOS GOBERNADORES Y LOS ALCALDES CONTRAEN CON SUS ELECTORES LA OBLIGACIÓN DE CUMPLIR EL PROGRAMA DE GOBIERNO QUE PRESENTARON AL INSCRIBIRSE COMO CANDIDATOS.   EL INCUMPLIMIENTO DEL PROGRAMA PUEDE DAR LUGAR A QUE:', 'LA ELECCIÓN DE LOS GOBERNANTES SEA REVOCADA POR DECISIÓN POPULAR. ', 'NA', 'NA', 'LOS GOBERNANTES LE CONSULTEN AL PUEBLO QUÉ DEBEN HACER.', 'SE CONVOQUE AL PUEBLO PARA QUE APRUEBEN O RECHACEN LAS NORMAS DEL PAÍS.', 'EL PRESIDENTE DECIDA SI SE APRUEBAN O NO LAS DECISIONES DE LOS GOBERNANTES.', 'NA', 'REFORZAR DERECHOS HUMANOS Y PARTICIPACIÓN CIUDADANA EN COLOMBIA', '../../images/preguntas/descarga (1).jpeg'),
(926, 9, 6, 3, 137, 'LIMPIAR ES A ENSUCIAR COMO RECOGER ES:', 'ARROJAR.', 'NA', 'NA', 'COLECCIONAR.', 'EXPULSAR.', 'VOTAR.', 'NA', 'REFORZAR EXPRESIÓN GRAMATICAL', 'NA'),
(927, 9, 6, 3, 137, 'PIRATA ES A TRIPULACIÓN COMO SOLDADO ES A:', 'PELOTÓN.', 'NA', 'NA', 'SEGURIDAD.', 'EJÉRCITO.', 'BATALLA.', 'NA', 'REFORZAR EXPRESIÓN GRAMATICAL', 'NA'),
(928, 3, 5, 3, 52, 'SELECCIONA EL NÚMERO QUE ESTA EN MEDIO DE 502 Y 504', '503', 'NA', 'NA', '504', '502', '505', 'NA', 'REFORZAR NÚMEROS DE 100 EN 100 HASTA 1000 (NUMÉRICO-VARIACIONAL)', 'NA'),
(929, 11, 12, 3, 333, '“EL PROPÓSITO ECONÓMICO QUE INSPIRÓ LA GLOBALIZACIÓN ES EL DE CRECIMIENTO ECONÓMICO DE LA CLASE EMPRESARIAL, PERO NO HAY EVIDENCIA DE QUE LA CUESTIÓN DE DESARROLLO DEL SER HUMANO TENGA PARTE IMPORTANTE EN EL MOVIMIENTO, AHORA PRECIPITADAMENTE A ﬂOTE EN TODAS PARTES DEL MUNDO. LA GLOBALIZACIÓN PUEDE SER UNA BUENA ESTRATEGIA PARA LA ACUMULACIÓN DE RIQUEZAS, PERO ESAS RIQUEZAS SON ANTE TODO PARA UNOS POCOS Y NO INTEGRA NINGUNA POLÍTICA PROYECTADA PARA EL DESARROLLO INTEGRAL DE UNA COMUNIDAD O UNA POBLACIÓN”.  TOMADO DE: JUAN CARLOS: “EDUCACIÓN Y SOCIEDAD DEL CONOCIMIENTO Y DE LA INFORMACIÓN” EN REVISTA COLOMBIANA DE LA EDUCACIÓN 06/2000.  ¿CUÁL DE LAS SIGUIENTES EVIDENCIAS APOYARÍA LA TESIS PLANTEADA POR EL AUTOR EN ESTA CITA?', 'UN ESTUDIO DONDE SE CONSTARA QUE LAS DESIGUALDADES SOCIALES HAN AUMENTADO EN PAÍSES DONDE, CON LA PRESENCIA DE MULTINACIONALES, HA CRECIDO LA ECONOMÍA.', 'NA', 'NA', 'UN INFORME EN EL QUE SE AﬁRMA QUE, EN LAS EMPRESAS MULTINACIONALES, LAS MUJERES RECIBEN MEJORES SALARIOS Y ACCEDEN A MEJORES CARGOS QUE LOS HOMBRES. ', 'UN ESTUDIO EN EL QUE SE CONSTATA QUE LOS IMPUESTOS PAGADOS POR LAS MULTINACIONALES SE PIERDEN POR FALTA DE PLANEACIÓN Y POR ACTOS DE CORRUPCIÓN.', 'UN ARTÍCULO DE PRENSA QUE MUESTRA CÓMO SE HA INCREMENTADO PROGRESIVAMENTE LA PRESENCIA DE EMPRESAS MULTINACIONALES EN LOS PAÍSES MÁS POBRES DEL MUNDO.', 'NA', 'REFORZAR EL MUNDO EN EL SIGLO XX', '../../images/preguntas/descarga (2).jpeg'),
(930, 11, 12, 3, 335, 'MORGENTTILAU (S.F) AFIRMA :   LA INCLINACIÓN QUE INDUCE A LAS DEMOCRACIAS A OBEDECER IMPULSOS ANTES QUE A LA PRUDENCIA, Y A ABANDONAR EL DESIGNIO MADURO POR LA GRATIFICACIÓN DE UNA PASIÓN MOMENTÁNEA, FUE CLARAMENTE VISIBLE EN ESTADOS UNIDOS AL ESTALLAR LA REVOLUCIÓN FRANCESA.  NO OBSTANTE EL CARÁCTER INFLEXIBLE DEL PRESIDENTE WASHINGTON Y LA INMENSA POPULARIDAD DE QUE GOZABA, PUDO EVITAR QUE LOS NORTEAMERICANOS DECLARARAN LA GUERRA A INGLATERRA.  TOMADO DE: HANS J. MORGENTLIAU. POLÍTICA ENTRE LAS NACIONES, PÁG. 184.  AL REVISAR ESTA INFORMACIÓN, UN ESTUDIANTE CONCLUYE QUE LOS GOBIERNOS DEMOCRÁTICOS RESULTAN INCONVENIENTES. ¿ESTA CONCLUSIÓN PUEDE SACARSE DE LA INFORMACIÓN PRESENTADA?', 'NO, PORQUE UN ÚNICO CASO NO PERMITE PROBAR QUE, EN LA GENERALIDAD DE LAS SITUACIONES, LAS MAYORÍAS DEMOCRÁTICAS TOMAN DECISIONES POLÍTICAS ERRÓNEAS.', 'NA', 'NA', 'SÍ, PORQUE DEMUESTRA QUE EN LAS DEMOCRACIAS QUIENES DECIDEN SON LAS MAYORÍAS, EN GENERAL GUIADAS POR INTERESES IRRACIONALES.', 'SÍ, PORQUE SE MUESTRA QUE LOS GOBIERNOS DEMOCRÁTICOS SON INEﬁCIENTES PARA REPRESENTAR LOS INTERESES DE LAS MINORÍAS QUE SUELEN TENER MAYOR CLARIDAD POLÍTICA. ', 'NO, PORQUE EL CARÁCTER INﬂEXIBLE DEL PRESIDENTE NO PUEDE SER EL ÚNICO FUNDAMENTO PARA QUE SE MANTENGA LA DEMOCRACIA.', 'NA', 'REFORZAR COLOMBIA EN EL SIGLO XX', '../../images/preguntas/descarga (3).jpeg'),
(931, 11, 12, 3, 333, 'EL SOCIÓLOGO ALEMÁN ULRICH BECK, AL CARACTERIZAR LA GLOBALIZACIÓN, USA UNA CITA QUE RESALTA QUE LOS EMPRESARIOS MÁS RICOS “HAN TRASPASADO LAS FRONTERAS PARA CONQUISTAR NUEVOS MERCADOS. CUÁNTOS MÁS PAÍSES HAY, MAYORES SON LOS BENEﬁCIOS”.   BECK SOSTIENE QUE EL MODELO DE LA GLOBALIZACIÓN REQUIERE, COMO PARTE DE SU FUNCIONAMIENTO, EL DESARROLLO DE CANALES DE COMUNICACIÓN RÁPIDOS Y EﬁCACES ENTRE PAÍSES, LA PROMOCIÓN DE TRATADOS INTERNACIONALES QUE PERMITAN ENTABLAR RELACIONES COMERCIALES DE NIVEL INTERNACIONAL Y EL DESARROLLO DE POLÍTICAS TENDIENTES A UNIﬁCAR LAS DINÁMICAS DE LOS MERCADOS.  TOMADO DE: BECK, ULRICH. ¿QUÉ ES LA GLOBALIZACIÓN? FALACIAS DEL GLOBALISMO, RESPUESTAS A LA GLOBALIZACIÓN.  SEGÚN LO ANTERIOR, ¿CUÁL DE LOS SIGUIENTES NO ES UN SUPUESTO DE UN MODELO DE GLOBALIZACIÓN?', 'EL FOMENTO A LA PROTECCIÓN DE LAS FRONTERAS NACIONALES.', 'NA', 'NA', 'EL FOMENTO DE MODOS DE PRODUCCIÓN TRANSACCIONALES. ', 'EL FOMENTO AL DESARROLLO DE TECNOLOGÍAS DE COMUNICACIÓN.', 'EL FOMENTO A LA GENERACIÓN DE MAYORES BENEﬁCIOS.', 'NA', 'REFORZAR EL MUNDO EN EL SIGLO XX', '../../images/preguntas/descarga (4).jpeg'),
(932, 4, 4, 3, 341, '¿QUÉ TIPO DE PERSONAS CONFORMAN TU COMUNIDAD EN EL LUGAR DONDE VIVES? SELECCIONA LA RESPUESTA CORRECTA: ', 'TODAS LAS ANTERIORES.', 'NA', 'NA', 'COMUNIDAD ESCOLAR.', 'COMUNIDAD DE VECINOS.', 'COMUNIDAD FAMILIAR.', 'NA', 'REFORZAR SOCIOLOGÍA', '../../images/preguntas/klipartz.com (1).png'),
(933, 11, 12, 3, 336, 'LA DENOMINADA ÉPOCA MEDIEVAL SE CARACTERIZÓ POR UNA ECONOMÍA EMINENTEMENTE AGRÍCOLA Y UN GOBIERNO DESCENTRALIZADO. TODO PERTENECÍA AL REY, QUIEN HABÍA ENTREGADO EL PODER POLÍTICO Y ECONÓMICO A LOS NOBLES Y SEÑORES EN LAS REGIONES, QUIENES DIRIGÍAN SUS EJÉRCITOS PERSONALES, POR ELLO SE CONSIDERA QUE AÚN NO SE PUEDE HABLAR DE ESTADO.  MÁS ADELANTE, EL PODER POLÍTICO SE FORTALECIÓ Y ORIGINÓ LAS MONARQUÍAS ABSOLUTAS Y CON ELLAS AL ESTADO MODERNO CARACTERIZADO POR:', 'UN PODER POLÍTICO ECONÓMICO Y MILITAR CENTRALIZADO Y UN TERRITORIO DELIMITADO.', 'NA', 'NA', 'UN PODER POLÍTICO DIVIDIDO ENTRE LA IGLESIA Y LOS GOBERNANTES.', 'UNA FORMA DE ORGANIZACIÓN DIVIDIDA EN FEUDOS Y BURGOS.', 'UNA FORMA DE ORGANIZACIÓN REGIDA POR LA LEY NATURAL QUE PROVENÍA DE DIOS.', 'NA', 'REFORZAR COLOMBIA COMO PAÍS Y ESTADO', '../../images/preguntas/descarga (5).jpeg'),
(934, 11, 12, 3, 336, 'LA COYUNTURA DE LA GUERRA DE LOS MIL DÍAS (1899- 1902) FUE APROVECHADA POR LAS ÉLITES DE LA PROVINCIA DE PANAMÁ PARA DECLARAR INDEPENDENCIA DEL ESTADO COLOMBIANO Y CONFORMAR LA NUEVA REPÚBLICA.  ESTE MOVIMIENTO SEPARATISTA FUE POSIBLE GRACIAS A QUE LAS ELITES PANAMEÑAS RECIBIERON APOYO MILITAR DE ESTADOS UNIDOS. A CAMBIO DE ESTE APOYO, LOS PANAMEÑOS LES CEDIERON A LOS NORTEAMERICANOS UNA ZONA DEL ISTMO PARA LA POSTERIOR CONSTRUCCIÓN DEL CANAL, FUNDAMENTAL EN EL COMERCIO MARÍTIMO INTERNACIONAL.  EN EL MAPA GEOPOLÍTICO INTERNACIONAL, LA SEPARACIÓN DE PANAMÁ PUSO EN EVIDENCIA:', 'LA ESTRATEGIA ESTADOUNIDENSE PARA ALCANZAR OBJETIVOS ECONÓMICOS, A PARTIR DE SU PODER MILITAR.', 'NA', 'NA', 'EL COMPROMISO POLÍTICO DE ESTADOS UNIDOS EN LA INDEPENDENCIA DE LOS PAÍSES LATINOAMERICANOS.', 'EL DESINTERÉS DEL GOBIERNO RESPECTO A LAS POTENCIALIDADES ECONÓMICAS DEL TERRITORIO PANAMEÑO.', 'LA APERTURA ECONÓMICA DE LOS MERCADOS AMERICANOS A LAS POTENCIAS EUROPEAS.', 'NA', 'REFORZAR COLOMBIA COMO PAÍS Y ESTADO', '../../images/preguntas/descarga (6).jpeg'),
(935, 11, 12, 3, 335, 'CUANDO SALÍ DEL HOSPITAL A LOS CUARENTA DÍAS DE HABER ENTRADO, LA COSA YA SE HABÍA PRENDIDO. LOS MUERTOS ABUNDABAN Y ERAN CONOCIDOS. LOS ASESINOS NO...  POR ESO FUE QUE TOCÓ PONERNOS SOBRE LAS ARMAS PORQUE NADIE RESPONDÍA. EL ALCALDE SE ALZABA DE HOMBROS COMO DICIENDO, MIREN A VER...  MANDÉ LA FAMILIA PARA CHAPARRAL Y ME FUI A FRENTEAR PERO ERA POCO LO QUE PODÍAMOS HACER PORQUE LOS ATROPELLOS RESULTABAN MUCHOS...  LOS ELEMENTOS INCLUIDOS EN ESTE FRAGMENTO SOBRE LA VIOLENCIA EN COLOMBIA EN LA DÉCADA DE 1950 PERMITEN INFERIR QUE LOS HECHOS MENCIONADOS FUERON RELATADOS POR:', 'UN GUERRILLERO LIBERAL ', 'NA', 'NA', 'UN MILITAR ', 'UN PARAMILITAR', 'UN LATIFUNDISTA DEL TOLIMA ', 'NA', 'REFORZAR COLOMBIA EN EL SIGLO XX', '../../images/preguntas/descarga (7).jpeg'),
(936, 4, 4, 3, 341, 'LAS COMUNIDADES COMPARTEN NORMAS DE CONVIVENCIA Y TRABAJAN UNIDAS PARA LOGRAR UN OBJETIVO EN COMÚN. ENCONTRAMOS COMUNIDADES EN EL CAMPO, PUEBLOS O CIUDADES, CADA COMUNIDAD ES ÚNICA Y DIFERENTE DE OTRAS POR SUS TRADICIONES Y SUS COSTUMBRES.  ¿CÓMO SE LES CONOCE A ESTOS TIPOS DE COMUNIDADES? SELECCIONA LA RESPUESTA CORRECTA: ', 'COMUNIDADES RURALES Y COMUNIDADES URBANAS', 'NA', 'NA', 'COMUNIDADES CÍVICAS Y RURALES', 'COMUNIDADES DEL CAMPO Y LA CIUDAD', 'COMUNIDADES UNIDAS', 'NA', 'REFORZAR SOCIOLOGÍA', '../../images/preguntas/Presentación2.jpg'),
(937, 11, 12, 3, 337, '¿CUÁL DE LAS SIGUIENTES SITUACIONES REQUIEREN UNA ACCIÓN SOLIDARIA, CONSIGNADA EN LOS DEBERES DE LOS CIUDADANOS DE LA CONSTITUCIÓN DE COLOMBIA?', 'HUBO UN DESLIZAMIENTO DE TIERRAS QUE DEJÓ VARIOS HERIDOS GRAVES. LAS FAMILIAS NO HAN SIDO EVACUADAS DE LA ZONA QUE PODRÍA PRESENTAR MÁS DESLIZAMIENTO.  ', 'NA', 'NA', 'EL 46% DE LA POBLACIÓN RURAL TRABAJA EN CONDICIONES QUE HACEN QUE SU CAPACIDAD ADQUISITIVA HAYA DISMINUIDO EN LOS ÚLTIMOS AÑOS.  ', 'UN GRUPO NUMEROSO DE CIUDADANOS Y CIUDADANAS HOMOSEXUALES RECLAMAN SU DERECHO A CASARSE, PERO LOS ORGANISMOS PERTINENTES NO HAN RESPONDIDO..', 'LOS ESTUDIANTES DE UN COLEGIO RECLAMAN PODER IR AL COLEGIO CON EL PELO LARGO O TINTURADO, ANTE LO CUAL LAS DIRECTIVAS HAN RESPONDIDO CON UN NO ROTUNDO.', 'NA', 'REFORZAR DERECHOS HUMANOS Y PARTICIPACIÓN CIUDADANA EN COLOMBIA', '../../images/preguntas/descarga (8).jpeg'),
(938, 4, 4, 3, 341, 'DE ACUERDO CON LA IMAGEN Y EL LUGAR DONDE VIVES CIUDAD O MUNICIPIO ¿CUÁL ES LA MÁXIMA AUTORIDAD DE TU CIUDAD O MUNICIPIO? SELECCIONA LA RESPUESTA CORRECTA: ', 'EL ALCALDE.', 'NA', 'NA', 'LA POLICÍA NACIONAL.', 'EL CONCEJAL. ', 'EL GOBERNADOR.', 'NA', 'REFORZAR SOCIOLOGÍA', '../../images/preguntas/003.jpg'),
(939, 7, 4, 5, 330, 'EN ALGUNOS PUEBLOS ANTIGUOS Y PRIMITIVOS SURGIÓ LA NECESIDAD DE ASOCIARSE ENTRE PERSONAS QUE AL CONVIVIR EN UN ENTORNO SE APOYABAN Y COMPARTÍAN DISTINTAS CARACTERÍSTICAS. LOS CLANES ES UNO DE LOS GRUPOS SOCIALES QUE APARECIERON, Y HASTA HOY EN DÍA, TIENEN EL FIN DE AYUDAR Y PRESENTAR SOLIDARIDAD CON AQUELLOS QUE HACEN PARTE DEL GRUPO. UNA DE LAS CARACTERÍSTICAS QUE CARACTERIZA A LOS CLANES ES', 'ES UN CONJUNTO DE FAMILIAS DONDE SE TIENE LA CREENCIA DE UN PARENTESCO EN COMÚN ', 'PERSONAS QUE SE UNEN POR UN PARENTESCO O ANCESTRO ', 'SON SUBGRUPOS DE LAS TRIBUS DONDE COMPARTEN CARACTERÍSTICAS FAMILIARES Y DE PARENTESCO', 'SON ANIMALES, ARBOLES, CASAS DONDE HABITAN ALGUNAS PERSONAS SIN NINGUNA CARACTERÍSTICA EN COMÚN', 'NA', 'NA', 'NA', 'REFORZAR ANTROPOLOGÍA', '../../images/preguntas/clan-g82687e587_640.jpg'),
(940, 7, 4, 5, 330, 'UNA DE LAS FORMAS MÁS CONOCIDAS DE ORGANIZACIÓN SOCIAL SON LAS TRIBUS, ESTA SE CARACTERIZA POR AGRUPAR UN GRUPO DE PERSONAS QUE TIENEN UNA CULTURA, LENGUAJE Y CREENCIAS EN COMÚN. ¿CUÁL CREES QUE PUEDE SER OTRA CARACTERÍSTICA QUE HACE PARTE DE LAS TRIBUS?', 'COMPARTEN COSTUMBRES Y TRADICIONES', 'LA FORMA DE GOBIERNO EMPIEZA POR UN LÍDER', 'SU SOCIEDAD ESTÁ BASADA EN UN MISMO TERRITORIO', 'SON NÓMADAS Y POR LO TANTO NO TIENEN DOMINIO DE NINGUNA TIERRA  ', 'NA', 'NA', 'NA', 'REFORZAR ANTROPOLOGÍA', '../../images/preguntas/maasai-men-ga1c2b6d6b_640.jpg'),
(941, 4, 4, 3, 341, 'ANALIZA LA IMAGEN Y RESPONDE ¿QUÉ PASA CUANDO NO CUMPLIMOS LAS NORMAS DE CONVIVENCIA EN NUESTRA FAMILIA, NUESTRO HOGAR? ', 'HARÍAMOS ENOJAR A NUESTROS PADRES Y NUESTRA HABITACIÓN ESTARÍA DESORDENADA.', 'NA', 'NA', 'AYUDARÍAMOS Y COLABORARÍAMOS EN EL HOGAR.', 'SERIAMOS MUY CUMPLIDOS CON NUESTROS HORARIOS.', 'SERIAMOS RESPONSABLES DE NUESTRAS TAREAS Y LECCIONES.', 'NA', 'REFORZAR SOCIOLOGÍA', '../../images/preguntas/klipartz.com (6).png'),
(942, 11, 12, 3, 335, 'SEGÚN EL INFORME BASTA YA DE 2013. SOBRE EL CONFLICTO ARMADO, EN COLOMBIA HA PREDOMINADO UNA CONCEPCIÓN DE LA POLÍTICA EN LA CUAL LA OPOSICIÓN SE VE COMO UNA AMENAZA Y NO COMO UN RASGO CONSTITUTIVO DE LA DEMOCRACIA. SE TRATA DE UNA CULTURA POLÍTICA QUE NO HA PERMITIDO SUPERAR LA EXCLUSIÓN PORQUE NO HA LOGRADO LA COEXISTENCIA DE CONCEPCIONES POLÍTICAS OPUESTAS EN UN CONTEXTO DE TOLERANCIA Y RESPETO.  LA CONFRONTACIÓN POLÍTICA TIENE EXPRESIONES VIOLENTAS DE TODO TIPO. EN COLOMBIA, SE CONFORMAN GRUPOS QUE SIGUEN RADICALMENTE A UN PARTIDO POLÍTICO HASTA EL PUNTO DE LLEGAR A CONFRONTACIONES ARMADAS. ESTAS CONFRONTACIONES ENTRE GRUPOS ARMADOS, A SU VEZ EXACERBAN LAS CONFRONTACIONES POLÍTICAS.ADAPTADO DE BASTA YA COLOMBIA: MEMORIAS DE GUERRA Y DIGNIDAD. INFORME GENERAL - GRUPO DE MEMORIA HISTÓRICA. CENTRO NACIONAL DEMEMORIA (2013)CON BASE EN LO ANTERIOR, DE LA AFIRMACIÓN: EN COLOMBIA HA HABIDO UNA LARGA GUERRA POLÍTICA EN UN CONTEX', 'LA INFORMACIÓN DE BASTA YA EXPLICA QUE LA EXCLUSIÓN Y LA VIOLENCIA POLÍTICA HAN RESTRINGIDO LA DEMOCRACIA.', 'NA', 'NA', 'LA INFORMACIÓN DE BASTA YA MUESTRA QUE NO EXISTE RELACIÓN ENTRE LOS HECHOS VIOLENTOS Y LA CULTURA POLÍTICA.', 'LA INFORMACIÓN DE BASTA YA EXPONE QUE EL CONﬂICTO SE BASA EN LA EXCLUSIÓN Y NO EN ASUNTOS ELECTORALES. ', 'LA INFORMACIÓN DE BASTA YA SOSTIENE QUE LA VIOLENCIA HA DESTRUIDO LAS CONDICIONES BÁSICAS DE UNA DEMOCRACIA.', 'NA', 'REFORZAR COLOMBIA EN EL SIGLO XX', '../../images/preguntas/descarga (9).jpeg'),
(943, 7, 4, 3, 330, 'CUÁLES CREES QUE FUERON LAS CONDICIONES QUE HICIERON POSIBLE LA VIDA EN NUESTRO PLANETA TIERRA, TENIENDO EN CUENTA LAS CARACTERÍSTICAS NECESARIAS PARA LA EXISTENCIA DE LOS SERES QUE HABITAN NUESTRO MUNDO', 'EL AGUA EN ESTADO LÍQUIDO, ATMOSFERA, LA DISTANCIA ENTRE LA TIERRA Y EL SOL', 'NA', 'NA', 'EL FUEGO, LAS MONTAÑAS Y EL VIENTO', 'LAS VACAS, OVEJAS Y PECES', 'EL ORO, PLATA Y COBRE ', 'NA', 'REFORZAR ANTROPOLOGÍA', '../../images/preguntas/solaris-g491c7e422_640.jpg'),
(944, 4, 4, 3, 342, 'LA DEMOCRACIA ES UNA FORMA DE GOBIERNO, QUE NACIÓ HACE MUCHOS SIGLOS, EN UN PAÍS LLAMADO GRECIA. ¿CUÁL ERA LA ACCIÓN PRINCIPAL DE LOS ANTIGUOS GRIEGOS AL REUNIRSE EN LA PLAZA PÚBLICA?', 'TOMAR DECISIONES. ', 'NA', 'NA', 'CELEBRAR SUS FESTIVIDADES.', 'SOLUCIONAR PROBLEMAS.', 'ELABORAR LOS TARJETONES.', 'NA', 'REFORZAR HISTORIA', '../../images/preguntas/klipartz.com (7).png');
INSERT INTO `tbl_preguntas` (`id`, `id_grado`, `id_materia`, `id_tipo_pregunta`, `id_tema`, `pregunta`, `r1ok`, `r2ok`, `r3ok`, `r1no`, `r2no`, `r3no`, `r4no`, `retroalimentacion`, `imagen`) VALUES
(945, 11, 12, 3, 337, 'LEA EL SIGUIENTE FRAGMENTO QUE DESCRIBE EL PROPÓSITO DE UNA POLÍTICA CULTURAL:    ... EL ESTADO DEBE ADOPTAR POLÍTICAS PÚBLICAS DESTINADAS A QUE LOS MIEMBROS DE LOS DIVERSOS GRUPOS ÉTNICOS Y NACIONALES PUEDAN EXPRESAR Y PROMOVER SU PROPIA CULTURA E IDENTIDAD, PERO RECHAZANDO AQUELLAS QUE BUSQUEN IMPONERLA.  TOMADO DE: VILLAVICENCIO, LUIS. (2012, DICIEMBRE) UN DIALOGO INTERCULTURAL MÁS ALLÁ DEL MULTICULTURALISMO. OPINIÓN JURÍDICA, 11(22), 31-44  ESTA FUENTE SE RELACIONA CON EL MULTICULTURALISMO, PORQUE ESTE.', 'BUSCA UNA SOCIEDAD EN LA QUE COEXISTAN DIVERSAS CULTURAS Y SE RECONOZCA Y EXALTE POSITIVAMENTE LA DIFERENCIA Y LA DIVERSIDAD.', 'NA', 'NA', 'PROMUEVE UNA SOCIEDAD REGIDA POR UNA CULTURA DOMINANTE, QUE DEBE PREVALECER SOBRE LAS DEMÁS, AUNQUE SE RECONOZCA QUE EXISTEN OTRAS CULTURAS. ', 'PERSIGUE UNA SOCIEDAD EN LA QUE LAS CULTURAS DEBEN SEGREGARSE ESPACIALMENTE PARA GARANTIZAR LA CONVIVENCIA PACÍﬁCA. ', 'SEÑALA QUE LA PROTECCIÓN DE LAS CULTURAS ANCESTRALES ES MÁS IMPORTANTE QUE LA PROTECCIÓN DE LAS CULTURAS DE APARICIÓN RECIENTE.', 'NA', 'REFORZAR DERECHOS HUMANOS Y PARTICIPACIÓN CIUDADANA EN COLOMBIA', '../../images/preguntas/descarga (10).jpeg'),
(946, 4, 4, 3, 343, 'ANALIZANDO LA IMAGEN Y LOS TIPOS DE PAISAJES EN NUESTRO PAÍS, ¿QUÉ RELACIÓN TIENEN EL PAISAJE DONDE VIVES CON TU FORMA DE VESTIR Y CON TU ALIMENTACIÓN?', 'EN CADA REGIÓN DE NUESTRO PAÍS HAY CLIMAS DIFERENTES LO QUE DETERMINA NUESTRA VIVIENDA, LA ALIMENTACIÓN, NUESTRA FORMA DE VESTIR Y LAS ACTIVIDADES QUE REALIZAN LAS PERSONAS.', 'NA', 'NA', 'SI ES UN PAISAJE DE CLIMA FRIO, DEBEMOS VESTIR ROPA ABRIGADA Y CASAS ACONDICIONADAS CON CALEFACCIÓN.', 'CADA PAISAJE EN COLOMBIA ES MUY DIFERENTE, ENCONTRAMOS DIFERENTES ACTIVIDADES ECONÓMICAS Y  DIFERENTES FORMAS DE VESTIR.', 'NINGUNA DE LAS ANTERIORES.', 'NA', 'REFORZAR GEOGRAFÍA', '../../images/preguntas/006.jpg'),
(947, 7, 4, 5, 332, 'EL SER HUMANO NECESITA DE DIFERENTES ELEMENTOS QUE EL PLANETA LE OTORGA PARA SU SUPERVIVENCIA, LA TIERRA ES UNO DE ESTOS RECURSOS NECESARIO PARA PODER VIVIR, ASÍ COMO OTROS ELEMENTOS. DE ACUERDO A TU CONOCIMIENTO, ¿CUÁL DE LAS SIGUIENTES OPCIONES CREES QUE ES VITAL PARA LA VIDA DE LOS HUMANOS?  ', 'AGUA COMO ELEMENTO VITAL DE LA VIDA ', 'OXIGENO PARA PODER RESPIRAR ', 'ALIMENTO PARA COMER Y PODER REALIZAR LAS ACTIVIDADES FÍSICAS NECESARIAS PARA LA VIDA ', 'HIERRO PARA CONSTRUIR UTENSILIOS PARA DIFERENTES ACTIVIDADES DIARIAS', 'NA', 'NA', 'NA', 'REFORZAR SOCIOLOGÍA', '../../images/preguntas/hands-g609005405_640.jpg'),
(948, 4, 4, 3, 343, 'EL AGUA Y EL AIRE SON ELEMENTOS NECESARIOS PARA LA VIDA… DE LAS PLANTAS Y LOS ANIMALES OBTENEMOS ALIMENTOS Y MATERIAS PRIMAS PARA ELABORAR PRODUCTOS NUEVOS… POR ESO DEBEMOS VALORAR Y CUIDAR LOS RECURSOS DE LA NATURALEZA. ¿CUÁLES SON LOS RECURSOS QUE LA NATURALEZA NOS BRINDA PARA PODER VIVIR? SELECCIONA LA RESPUESTA CORRECTA: ', 'ANIMALES, PLANTAS, AGUA, SUELO. AIRE. ALIMENTOS.', 'NA', 'NA', 'ANIMALES Y PLANTAS.', 'AGUA, CARBÓN.', 'PETRÓLEO, CARBÓN, AGUA.', 'NA', 'REFORZAR GEOGRAFÍA', '../../images/preguntas/008.jpg'),
(949, 7, 4, 5, 332, 'NUESTRO PLANETA HA ESTADO BAJO UN CONSTANTE CONSUMO DE LOS ELEMENTOS QUE PRODUCE PARA GARANTIZAR LA VIDA, ESTOS ELEMENTOS TAMBIÉN HAN CONSTITUIDO UNA GRAVE EXPLOTACIÓN PARA TODO RECURSO QUE SUPLA LAS NECESIDADES DE CONSUMO DE LAS PERSONAS QUE HABITAMOS LA TIERRA, ENTRE LAS MUCHAS CAUSAS QUE ESTÁN DETERIORANDO EL PLANETA, ¿CUÁL CREES QUE ES UNA CAUSA POR LA CUAL SE ESTÁN AGOTANDO LOS RECURSOS NATURALES EN NUESTRO PLANETA?', 'SOBREEXPLOTACIÓN DE LOS RECURSOS POR PARTE DE LAS GRANDES INDUSTRIAS  ', 'CONTAMINACIÓN DE LOS OCÉANOS POR DESECHOS Y RESIDUOS ', 'MAL MANEJO DE LOS RECURSOS NATURALES Y DEFORESTACIÓN SIN CONTROL POR PARTE DEL HUMANO ', 'POR PLANTAR ÁRBOLES EN LUGARES INADECUADOS ', 'NA', 'NA', 'NA', 'REFORZAR SOCIOLOGÍA', '../../images/preguntas/landscape-gc263528d5_640.jpg'),
(950, 4, 4, 3, 343, '¿CREES QUE ES IMPORTANTE CUIDAR LA NATURALEZA Y NUESTROS RECURSOS NATURALES? SELECCIONA LA RESPUESTA CORRECTA:', 'DEBEMOS CUIDAR LA NATURALEZA PORQUE DE ELLA OBTENEMOS ALIMENTOS Y MATERIAS PRIMAS.ES FUENTE DE RESIDUOS QUE CONTAMINAN EL AMBIENTE, NOS BRINDA RECURSO COMO EL AGUA, AIRE, SUELO ANIMALES Y PLANTAS, Y GRACIAS A LOS RECURSOS NATURALES SATISFACEMOS NUESTRAS NECESIDADES BÁSICAS.', 'NA', 'NA', 'DEBEMOS CUIDAR LA NATURALEZA Y LOS RECURSOS NATURALES PORQUE TODOS LOS ANIMALES Y PLANTAS NECESITAN PROTECCIÓN Y ALIMENTO.', 'DEBEMOS CUIDAR NUESTROS RECURSOS NATURALES PARA PROTEGER LOS RECURSOS HÍDRICOS Y LAS PLANTAS.', 'NINGUNA DE LAS ANTERIORES.', 'NA', 'REFORZAR GEOGRAFÍA', '../../images/preguntas/009.jpg'),
(951, 7, 4, 3, 331, 'CON LA CONSTITUCIÓN DE 1991 EN COLOMBIA, SE DEFINIÓ LA ESTRUCTURA DEL ESTADO EN TRES RAMAS DE PODER, ESTO PARA PODER PROTEGER A LOS CIUDADANOS Y GARANTIZAR SUS DERECHOS FUNDAMENTALES, DE ESTE MODO LAS RAMAS DEL PODER PÚBLICO DE ESTADO COLOMBIANO SON:', 'RAMA EJECUTIVA, RAMA LEGISLATIVA, RAMA JUDICIAL  ', 'NA', 'NA', 'EL BANCO DE LA REPÚBLICA, JUECES Y PRESIDENTE', 'RAMA SOCIAL, RAMA ESTATAL, RAMA ELECTORAL', 'ALCALDE, GOBERNADOS, PRESIDENTE ', 'NA', 'REFORZAR HISTORIA', '../../images/preguntas/national-holidays-ge88d1dd6a_640.jpg'),
(952, 7, 4, 3, 332, 'LAS PERSONAS INTERACTÚAN ENTRE SÍ PARA PODER CREAR DETERMINADAS RELACIONES SOCIALES, EN TU COMUNIDAD ESTAS RELACIONES ESTÁN HECHAS PARA OBTENER CIERTOS BENEFICIOS Y A ESTO SE LE LLAMA ORGANIZACIÓN SOCIAL. ¿CUÁL CREES QUE SERÍA UNA RAZÓN POR LA QUE ES NECESARIO LA ORGANIZACIÓN SOCIAL? ', 'PARA CONTROLAR LOS RECURSOS VITALES Y DISTRIBUIRLOS DE FORMA ADECUADA ENTRE SU POBLACIÓN', 'NA', 'NA', 'PARA INCENTIVAR A LAS PERSONAS A LEER Y SER LETRADOS ', 'PARA COMUNICARSE ENTRE PERSONAS', 'PARA CONSUMIR LOS RECURSOS QUE EXISTEN EN EL ENTORNO ', 'NA', 'REFORZAR SOCIOLOGÍA', '../../images/preguntas/family-g099c9a6fd_640.jpg'),
(953, 4, 4, 3, 343, '¿CÓMO CONTRIBUIR AL CUIDADO DEL MEDIO AMBIENTE? SELECCIONA UNA DE LAS SIGUIENTES ALTERNATIVAS PARA AYUDAR A MANTENER EL MEDIO AMBIENTE LIBRE DE CONTAMINACIÓN:', 'TODAS SON CORRECTAS.', 'NA', 'NA', 'LAS VIVIENDAS ECOLÓGICAS. ', 'LA ENERGÍA EÓLICA.', 'LOS BIOCOMBUSTIBLES, EL RECICLAJE.', 'NA', 'REFORZAR GEOGRAFÍA', '../../images/preguntas/0010.jpg'),
(954, 7, 4, 3, 332, 'LOS SERES HUMANOS, SIN DIFERENCIA ALGUNA DE NACIONALIDAD, LUGAR DE RESIDENCIA, SEXO, ORIGEN NACIONAL O ÉTNICO, COLOR, RELIGIÓN, LENGUA, O CUALQUIER OTRA CONDICIÓN, TIENEN DERECHOS UNIVERSALES QUE GARANTIZAN LA IGUALDAD. POR NOMBRAR ALGUNOS DERECHOS SON LA EDUCACIÓN, LA IGUALDAD Y EL TRABAJO. LO ANTERIORMENTE EXPLICADO HACE PARTE DE:', 'LOS DERECHOS HUMANOS ', 'NA', 'NA', 'DERECHO AL MEDIO AMBIENTE ', 'EL DEPORTE', 'EL DERECHO A LA LIBRE EXPRESIÓN ', 'NA', 'REFORZAR SOCIOLOGÍA', '../../images/preguntas/human-rights-g42fd2bdb7_640.jpg'),
(955, 7, 4, 5, 330, 'LAS AGRUPACIONES HUMANAS SE CREAN TENIENDO EN CUENTA CARACTERÍSTICAS QUE LAS PERSONAS TIENEN EN COMÚN CON OTRAS, EN TU CIUDAD O COMUNIDAD ENCUENTRAS FORMAS DE PENSAR, DE VIVIR Y NECESIDADES QUE SE COMPARTEN Y SE BUSCAN COMPLEMENTAR, ESTO HA SUCEDIDO DESDE TIEMPO PRIMITIVOS Y ANTIGUOS, POR LO QUE SE LE DENOMINA ORGANIZACIÓN, EN ESTE SENTIDO ¿CUÁL CREES QUE DE LAS SIGUIENTES ES UNA FORMA DE ORGANIZACIÓN HUMANA?', 'CLANES', 'LA FAMILIA', 'TRIBU ', 'LA TIERRA', 'NA', 'NA', 'NA', 'REFORZAR ANTROPOLOGÍA', '../../images/preguntas/team-g07d1449fb_640.jpg'),
(956, 7, 4, 5, 332, 'LA NACIONALIDAD ES UN DERECHO QUE SE ADQUIERE CON EL ESTADO DEL PAÍS DONDE NACEMOS, LAS PERSONAS TIENEN LA CONDICIÓN DE CREAR UN VÍNCULO CON SU NACIÓN, ACEPTANDO QUE TAMBIÉN HACEN PARTE DE UNA SOCIEDAD. SEGÚN LO QUE HAS LEÍDO, PARA TI QUE ES LA NACIONALIDAD', 'UN DERECHO FUNDAMENTAL', 'EL VÍNCULO ENTRE LA PERSONA Y EL ESTADO O PAÍS ', 'UN ATRIBUTO DE LA PERSONALIDAD ', 'UN EQUIPO DEPORTIVO ', 'NA', 'NA', 'NA', 'REFORZAR SOCIOLOGÍA', '../../images/preguntas/smile-gd3727fecb_640.jpg'),
(957, 8, 4, 3, 338, 'LA CIENCIA HA PERMITIDO CONOCER EL PROCESO EVOLUTIVO DE LAS ESPECIES, TENIENDO EN CUENTA ESTUDIOS QUE REVELAN ANTEPASADOS QUE PERMITIERON ESCALAR ESTA CADENA EVOLUTIVA HASTA LLEGAR A NUESTROS DÍAS JUNTO CON LOS SERES QUE CONOCEMOS Y NOS RODENA, CUANDO SE HABLA DE HOMO SAPIENS SE REFIERE A:', 'EL SER HUMANO ', 'NA', 'NA', 'LOS SIMIOS ', 'LOS PECES ', 'LOS CABALLOS ', 'NA', 'REFORZAR ANTROPOLOGÍA', 'NA'),
(958, 8, 4, 5, 338, 'EN LA EVOLUCIÓN DE LOS SERES HUMANOS SE HA PODIDO IDENTIFICAR ALGUNAS CARACTERÍSTICAS QUE HAN SERVIDO PARA EVIDENCIAR RASGOS QUE SE TIENE CON NUESTROS ANTEPASADOS MÁS CERCANOS, QUE, SEGÚN ESTUDIOS, SON LOS SIMIOS. DE ESTA MANERA, LOS SERES HUMANOS TIENEN DIFERENCIAS NOTABLES CON ESTOS ANTEPASADOS. DE ACUERDO A LO DICHO ¿CUÁL CREES QUE DE LOS SIGUIENTES ES UN RASGO DESTACADO DEL PROCESO EVOLUTIVO QUE DIFERENCIA AL SER HUMANO?', 'EL CEREBRO, PUES ES UN RASGO QUE DIFERENCIAS AL HUMANO CON OTRAS ESPECIES DE MANERA ESPECIAL ', 'PULGARES, PUESTO QUE PARA EL HUMANO ES UN RASGO QUE SE DIFERENCIA DE OTRAS ESPECIES Y LE OTORGA FACILIDAD PARA LA CONSTRUCCIÓN Y MANIPULACIÓN DE OBJETOS ', 'LENGUAJE, YA QUE ESTE HA SIDO UNA DE LAS CARACTERÍSTICAS QUE MAYOR INFLUENCIA TIENE EN LA EVOLUCIÓN HUMANA ', 'EL CABELLO, PUES ES COMÚN ENTRE LOS SERES QUE HAN HABITADO Y EVOLUCIONADO EN ESTE PLANETA  ', 'NA', 'NA', 'NA', 'REFORZAR ANTROPOLOGÍA', 'NA'),
(959, 8, 4, 3, 340, 'EN LOS PROCESOS CIENTÍFICOS PARA ENCONTRAR LA RESPUESTA A LOS INICIOS DE LA EVOLUCIÓN DE LAS ESPECIES, MÁS EXACTAMENTE DEL SER HUMANO, HAN LLEVADO A QUE ESTOS ESTUDIOS LLEGUEN A ENCONTRARSE EN UN CONTINENTE DE NUESTRO PLANETA EN ESPECÍFICO. LOS PRIMEROS INDICIOS DE LA EVOLUCIÓN HUMANA SE HAN ENCONTRADO HASTA EL DÍA DE HOY EN EL CONTINENTE DE: ', 'ÁFRICA', 'NA', 'NA', 'ASIA ', 'AMÉRICA', 'OCEANÍA', 'NA', 'REFORZAR GEOGRAFÍA', 'NA'),
(960, 8, 4, 5, 340, 'EL SISTEMA SOLAR ABARCA UNA GRAN CANTIDAD DE ELEMENTOS QUE CONSTITUYEN LA FORMA DE GARANTIZAR LA VIDA. ¿CUÁL DE LOS SIGUIENTES ES UN ELEMENTO QUE HAGA PARTE DEL SISTEMA SOLAR?:', 'PLANETAS', 'ASTEROIDES ', 'ESTRELLAS', 'PLANTAS', 'NA', 'NA', 'NA', 'REFORZAR GEOGRAFÍA', 'NA'),
(961, 8, 4, 3, 338, 'EN LA EVOLUCIÓN HUMANA SE HAN IDENTIFICADO ALGUNOS CAMBIOS QUE CARACTERIZAN Y DIFERENCIAN AL HUMANO DE LAS OTRAS ESPECIES, LA CARACTERÍSTICA MÁS DESTACABLE HA SIDO LA EVOLUCIÓN DEL PENSAMIENTO Y EL JUICIO, DE ESTA MANERA LOS HUMANOS HAN ENCONTRADO DIVERSAS SOLUCIONES A LAS NECESIDADES DE SU ENTORNO.  UNA DE LAS NUEVAS HABILIDADES DEL HOMO SAPIENS FUE:', 'LA FABRICACIÓN DE UTENSILIOS DE PIEDRA', 'NA', 'NA', 'LEER', 'ALIMENTARSE', 'DORMIR', 'NA', 'REFORZAR ANTROPOLOGÍA', 'NA'),
(962, 8, 4, 5, 339, 'LA AGRICULTURA FUE UNO DE LOS PRIMEROS MEDIOS QUE SE UTILIZARON PARA LA COMERCIALIZACIÓN DE PRODUCTOS HACE MAS DE DIEZ MIL AÑOS. ¿CUÁLES DE ESTOS ELEMENTOS, HASTA EL DÍA DE HOY, HAS PODIDO EVIDENCIAR QUE HACEN PARTE DE TU ENTORNO EN LOS TRABAJOS DE AGRICULTURA?:', 'CANALES DE RIEGO', 'LADRILLO ', 'HERRAMIENTAS DE MADERA Y METAL', 'LA RUEDA ', 'NA', 'NA', 'NA', 'REFORZAR HISTORIA', 'NA'),
(963, 8, 4, 3, 340, 'LAS SOCIEDADES PREHISPÁNICAS DIERON GRANDES E IMPORTANTES AVANCES PARA LA EVOLUCIÓN SOCIAL EN AMÉRICA. LOS MAYAS Y AZTECAS SE SITUABAN MAYORMENTE DONDE AHORA ESTÁ EL PAÍS DE: ', 'MÉXICO ', 'NA', 'NA', 'ESTADOS UNIDOS', 'HONDURAS ', 'CUBA ', 'NA', 'REFORZAR GEOGRAFÍA', 'NA'),
(964, 8, 4, 5, 339, 'LAS SOCIEDADES PREHISPÁNICAS HICIERON IMPORTANTES CONTRIBUCIONES AL DESARROLLO SOCIAL Y CULTURAL DE LAS SOCIEDADES DONDE HABITABAN, ANTES DE LA LLEGADA DE LOS EUROPEOS A AMÉRICA, SE PUDO EVIDENCIAR LOS AVANCES DE LA FORMA DE VIDA DE ESTAS COMUNIDADES. DE LOS SIGUIENTES APORTES TECNOLÓGICOS Y CULTURALES, CUAL CREES QUE PERTENECE A LAS SOCIEDADES PREHISPÁNICAS: ', 'ARQUITECTURA', 'ASTRONOMÍA', 'TÉCNICAS DE CULTIVO ', 'LAS IGLESIAS ', 'NA', 'NA', 'NA', 'REFORZAR HISTORIA', 'NA'),
(965, 8, 4, 3, 339, 'LAS SOCIEDADES ANTIGUAS SE CARACTERIZABAN POR TENER FORMAS DE GOBIERNO DIFERENTES A LAS ACTUALES, DONDE LOS REYES Y LA IGLESIA TENÍAN EL PODER ABSOLUTO SOBRE LAS DECISIONES DE ADMINISTRACIÓN DE LAS NACIONES Y LA DIRECCIÓN DE SUS CIUDADANOS. DE ESTE MODO ¿CUÁL CREES QUE FUE LA FORMA MÁS DESTACABLE DE GOBIERNO EN LA ANTIGÜEDAD?  ', 'TIRANÍA, MONARQUÍA, TEOCRACIA ', 'NA', 'NA', 'DICTADURA, COMUNISMO, DEMOCRACIA ', 'PARLAMENTO, PRESIDENCIA, SENADO', 'OLIGARQUÍA, DEMOCRACIA, TOTALITARISMO  ', 'NA', 'REFORZAR HISTORIA', 'NA'),
(966, 8, 4, 5, 339, 'LA DEMOCRACIA HA PERMITIDO QUE LAS SOCIEDADES TENGAN GARANTÍAS DE PARTICIPACIÓN EN LAS DECISIONES GUBERNAMENTALES, LOS ESTADOS SON MÁS FLEXIBLES Y OTORGAN MECANISMOS PARA CUMPLIR CON LOS DERECHOS Y DEBERES DE SUS CIUDADANOS DE FORMA IGUALITARIA. EN UNA SOCIEDAD DEMOCRÁTICA HACE PARTE:', 'DERECHO Y DEBERES DE LOS CIUDADANOS ', 'EL BIENESTAR DE LAS PERSONAS', 'PARTICIPAR EN LAS DECISIONES QUE INCLUYEN DE FORMA COLECTIVA A LOS CIUDADANOS ', 'LA TIRANÍA ', 'NA', 'NA', 'NA', 'REFORZAR HISTORIA', 'NA'),
(967, 10, 6, 3, 139, '¿CUÁL DE LAS SIGUIENTES OPCIONES CORRESPONDE AL CONCEPTO DE PUBLICIDAD?', 'VEN POR TU AUTO Y SENTIRÁS CÓMO ELLAS TE MIRAN DISTINTO.', 'NA', 'NA', '24 DE JULIO: DÍA MUNDIAL SIN FUMAR.', 'INSCRÍBETE: VOTA YA.', 'EN LA NUEVA REFORMA PROCESAL PENAL TODOS TIENEN UN JUICIO JUSTO.', 'NA', 'REFORZAR INTERPRETACIÓN TEXTUAL', 'NA'),
(968, 10, 6, 3, 139, 'ESCOGE AQUELLA PALABRA QUE TIENE EL SIGNIFICADO OPUESTO DE LA PALABRA IDÓNEO', 'INEPTO', 'NA', 'NA', 'CAPAZ', 'ASEQUIBLE', 'ACCESIBLE', 'NA', 'REFORZAR INTERPRETACIÓN TEXTUAL', 'NA'),
(969, 5, 5, 3, 75, '¿EN QUÉ COLOR ES MENOS PROBABLE QUE SE DETENGA LA RULETA?', 'BLANCO', 'NA', 'NA', 'AMARILLO ', 'NEGRO', 'AZUL ', 'NA', 'REFORZAR PROBABILIDAD (ALEATORIO-PROBABILÍSTICO)', '../../images/preguntas/ruleta.jpg'),
(970, 5, 4, 5, 345, 'DESDE HACE MUCHO TIEMPO, LOS SERES HUMANOS NO HAN DESARROLLADO TÉCNICAS PARA ORIENTARSE Y REPRESENTAR SU TERRITORIO. ESTAS TÉCNICAS HAN PERMITIDO CONOCER EL PLANETA TIERRA EN SU FORMA REAL. ¿PARA QUÉ CREES QUE SIRVEN INVENTOS COMO LA ROSA DE LOS VIENTOS Y LA BRÚJULA? SELECCIONA LA RESPUESTA CORRECTA:', 'LA ROSA DE LOS VIENTOS UBICA LOS PUNTOS CARDINALES: EL NOROESTE, NOROCCIDENTE, NORESTE, NORORIENTE, EL SURESTE, SUROCCIDENTE, SURESTE Y SURORIENTE, LA PODEMOS ENCONTRAR EN LOS MAPAS ANTIGUOS, LA BRÚJULA PUEDE ORIENTARTE CON PRECISIÓN EN CUALQUIER MOMENTO Y LUGAR ESTÁ FORMADA POR UNA AGUJA IMANTADA INSTALADA SOBRE UN EJE QUE NOS SEÑALA EN NORTE MAGNÉTICO.', 'LA ROSA DE LOS VIENTOS UBICA LOS PUNTOS CARDINALES. LA BRÚJULA PUEDE ORIENTARTE CON PRECISIÓN EN CUALQUIER MOMENTO Y LUGAR ESTÁ FORMADA POR UNA AGUJA IMANTADA INSTALADA SOBRE UN EJE QUE NOS SEÑALA EN NORTE MAGNÉTICO.', 'LA ROSA DE LOS VIENTOS UBICA LOS PUNTOS CARDINALES: EL NOROESTE, NOROCCIDENTE, NORESTE, NORORIENTE, EL SURESTE, SUROCCIDENTE, SURESTE Y SURORIENTE, LA PODEMOS ENCONTRAR EN LOS MAPAS ANTIGUOS, LA BRÚJULA PUEDE ORIENTARTE CON PRECISIÓN EN CUALQUIER MOMENTO Y LUGAR ESTÁ FORMADA POR UNA AGUJA IMANTADA QUE NOS SEÑALA EN NORTE MAGNÉTICO.', 'LA ROSA DE LOS VIENTOS UBICA EL NORTE MAGNÉTICO, LA PODEMOS ENCONTRAR EN LOS MAPAS ANTIGUOS, LA BRÚJULA ESTÁ FORMADA POR UNA AGUJA IMANTADA INSTALADA SOBRE UN EJE QUE NOS SEÑALA EL SUR.', 'NA', 'NA', 'NA', 'REFORZAR GEOGRAFÍA', '../../images/preguntas/0011.jpg'),
(971, 5, 4, 5, 345, '¿COMO CREES QUE PUEDES REPRESENTAR GRÁFICAMENTE LA CASA O APARTAMENTO DONDE VIVES? SELECCIONA LA RESPUESTA CORRECTA:', 'DIBUJOS DE PAISAJES Y TERRITORIOS, EL CROQUIS, LA FOTOGRAFÍA, EL PLANO Y EL MAPA.', 'DIBUJOS REPRESENTANDO LAS FIGURAS, EL CROQUIS, LA FOTOGRAFÍA, EL PLANO Y EL MAPA.', 'DIBUJOS, EL CROQUIS, LA FOTOGRAFÍA, EL PLANO Y EL MAPA.', 'DIBUJOS Y FOTOGRAFÍAS.', 'NA', 'NA', 'NA', 'REFORZAR GEOGRAFÍA', '../../images/preguntas/0012.jpg'),
(972, 5, 4, 5, 345, 'HAY LUGARES DONDE ABUNDAN ANIMALES, PLANTAS Y AGUA, EN LOS CUALES ENCONTRAMOS LA PRESENCIA DE LOS SERES HUMANOS, HAY OTROS LUGARES QUE HAN SIDO ADAPTADOS POR EL SER HUMANO PARA SU PROPIO BENEFICIO, COMO CAMPOS DE CULTIVO, CARRETERAS O CAMINOS. ¿QUÉ PAISAJES CREES QUE NO HAN SIDO CAMBIADOS POR EL SER HUMANO? SELECCIONA LA RESPUESTA CORRECTA:', 'LOS PAISAJES NATURALES COMO LOS PÁRAMOS, SELVAS, SIERRAS NEVADAS, MANGLARES NO HAN SIDO MODIFICADOS POR EL SER HUMANO. LOS PAISAJES CULTURALES ESTÁN EN LAS ZONAS RURALES, PUEBLOS, CIUDADES, ESTOS LUGARES HAN SIDO TRANSFORMADOS POR EL SER HUMANO.', 'LOS PAISAJES NATURALES NO HAN SIDO MODIFICADOS POR EL SER HUMANO, COMO LOS PARQUE O RESERVAS NATURALES. LOS PAISAJES CULTURALES ESTÁN EN LAS ZONAS RURALES, PUEBLOS, CIUDADES, ESTOS LUGARES HAN SIDO TRANSFORMADOS POR EL SER HUMANO.', 'LOS PÁRAMOS, SELVAS, SIERRAS NEVADAS, MANGLARES NO HAN SIDO MODIFICADOS POR EL SER HUMANO SE CONOCEN COMO PAISAJES NATURALES. LOS PAISAJES CULTURALES ESTÁN EN LAS ZONAS RURALES, PUEBLOS, CIUDADES, ESTOS LUGARES HAN SIDO TRANSFORMADOS POR EL SER HUMANO.', 'TODOS LOS PAISAJES HAN SIDO TRANSFORMADOS POR EL HOMBRE INCLUIDOS LOS PARQUE Y RESERVAS NATURALES. ', 'NA', 'NA', 'NA', 'REFORZAR GEOGRAFÍA', '../../images/preguntas/0013.jpg'),
(973, 5, 4, 3, 345, 'EN LAS CIUDADES O PUEBLOS DONDE VIVEN MUCHAS PERSONAS ENCUENTRAS DIFERENTES CARACTERÍSTICAS. ESTOS LUGARES SON DIFERENTES SEGÚN SUS PARTICULARIDADES LO QUE HACEN DIFERENTE EL PAISAJE. ¿LOS PAISAJES MÁS CONOCIDOS EN NUESTRAS REGIONES SEGÚN SUS CARACTERÍSTICAS PUEDEN SER? SELECCIONA LA RESPUESTA CORRECTA:', 'PAISAJES NATURALES NO INTERVENIDOS POR EL SER HUMANO, PAÍSES RURALES, Y PAISAJES URBANOS.', 'NA', 'NA', 'PAISAJES NATURALES, PAISAJES RURALES ', 'PAISAJES HÍDRICOS Y NATURALES.', 'PAISAJES NATURALES Y URBANOS.', 'NA', 'REFORZAR GEOGRAFÍA', '../../images/preguntas/1113.jpg'),
(974, 5, 4, 5, 345, 'EN LAS ZONAS RURALES LAS PERSONAS CULTIVAN VEGETALES Y FRUTAS. TAMBIÉN CRÍAN ANIMALES PARA EL CONSUMO DE CARNE. ADEMÁS, EN LAS ZONAS RURALES SE EXTRAEN RECURSOS NATURALES COMO LA MADERA, QUE SIRVE PARA ELABORAR MUEBLES. ¿QUÉ CARACTERÍSTICAS TIENEN LAS ZONAS RURALES? SELECCIONA LA RESPUESTA CORRECTA:  ', 'PEQUEÑAS PROPIEDADES, GRANDES TERRENOS LLENOS DE PLANTACIONES AGRÍCOLAS O GANADO, CAMINOS QUE NO HAN SIDO PAVIMENTADOS, EMBALSES O DEPÓSITOS DE AGUA ALMACENADA, MINAS DE CARBÓN, HIERRO Y OTROS MINERALES.', 'MINIFUNDIOS, LATIFUNDIOS DE PLANTACIONES AGRÍCOLAS O GANADO, CAMINOS QUE NO HAN SIDO PAVIMENTADOS, EMBALSES O DEPÓSITOS DE AGUA ALMACENADA, MINAS DE CARBÓN, HIERRO Y OTROS MINERALES.', 'PEQUEÑAS PROPIEDADES DE CAMPESINOS LABRADORES DE LA TIERRA, GRANDES TERRENOS LLENOS DE PLANTACIONES AGRÍCOLAS O GANADO, CAMINOS QUE NO HAN SIDO PAVIMENTADOS, EMBALSES O DEPÓSITOS DE AGUA ALMACENADA, MINAS DE CARBÓN, HIERRO Y OTROS MINERALES.', 'BOSQUES, LAGOS, CENTROS COMERCIALES, AUTOPISTAS, MONTAÑAS.', 'NA', 'NA', 'NA', 'REFORZAR GEOGRAFÍA', 'NA'),
(975, 5, 4, 5, 345, 'CADA PAISAJE Y CADA FORMA SON DIFERENTES, NECESITAMOS ADAPTARNOS A SUS CONDICIONES PARTICULARES, POR EJEMPLO, LA ALTURA, EL CLIMA, LA EXISTENCIA DE RÍOS, PLAYAS O MONTAÑAS, DETERMINANDO NUESTRO TIPO DE VESTUARIO, EL CONSUMO DE DIFERENTES TIPOS DE ALIMENTOS Y LA CONSTRUCCIÓN DE LAS VIVIENDAS. ¿CUÁLES SON LOS FACTORES QUE INTERVIENEN EN LA FORMACIÓN DEL RELIEVE? SELECCIONA LA RESPUESTA CORRECTA:', 'LAS FUERZAS INTERNAS Y EXTERNAS DE LA TIERRA.', 'LAS FUERZAS INTERNAS DE LA TIERRA COMO LAS PLACAS TECTÓNICAS, TERREMOTOS, MAREMOTOS Y VOLCANES. LAS FUERZAS EXTERNAS DE LA TIERRA.', 'LAS FUERZAS INTERNAS DE LA TIERRA COMO LAS PLACAS TECTÓNICAS, TERREMOTOS, MAREMOTOS Y VOLCANES. LAS FUERZAS EXTERNAS DE LA TIERRA COMO EL DESGASTE DEL SUELO Y LA EROSIÓN.', 'LOS TERREMOTOS Y LA EROSIÓN DE LOS SUELOS', 'NA', 'NA', 'NA', 'REFORZAR GEOGRAFÍA', '../../images/preguntas/1115.jpg'),
(976, 12, 11, 3, 211, 'EN EL MOVIMIENTO DE CAÍDA LIBRE CUANDO LA BOLA BAJA POR CADA SEGUNDO Y APROXIMANDO LA GRAVEDAD A 10M/S², LA VELOCIDAD AUMENTA:', 'AUMENTA 10M', 'NA', 'NA', 'DISMINUYE 10M', 'AUMENTA 5M', 'DISMINUYE 20M', 'NA', 'REFORZAR CAÍDA LIBRE', '../../images/preguntas/caida libre.jpg'),
(977, 5, 4, 5, 345, '¿QUÉ RIESGOS CORREN LOS HABITANTES DE UNA POBLACIÓN A LA ORILLA DE UN RIO, Y LOS HABITANTES DE UN BARRIO UBICADOS EN UNA ZONA MONTAÑOSA? SELECCIONA LA RESPUESTA CORRECTA:', 'LOS HABITANTES DE UNA POBLACIÓN A LA ORILLA DEL RIO PUEDEN CORRER EL RIESGO DE DESBORDAMIENTO DEL RIO. LOS HABITANTES DE UN BARRIO EN LA MONTAÑA CORREN EL RIESGO DE DERRUMBE DE MONTAÑA Y DESLIZAMIENTOS.', 'LOS HABITANTES DE UNA POBLACIÓN A LA ORILLA DEL RIO PUEDEN CORRER EL RIESGO DE DESBORDAMIENTO DEL RIO. LOS HABITANTES DE UN BARRIO EN LA MONTAÑA CORREN EL RIESGO DE DERRUMBE DE MONTAÑA Y DESLIZAMIENTOS DEBIDO AL EFECTO DE GRAVEDAD.', 'LOS HABITANTES DE UNA POBLACIÓN A LA ORILLA DEL RIO, PUEDEN CORRER EL RIESGO DE DESBORDAMIENTO DEL RIO. LOS HABITANTES DE UN BARRIO EN LA MONTAÑA CORREN EL RIESGO DE DERRUMBE DE MONTAÑA Y DESLIZAMIENTOS PERDIENDO ESTABILIDAD CAUSANDO MOVIMIENTO DESCENDENTE DEL SUELO.', 'LOS HABITANTES DE UNA POBLACIÓN A LA ORILLA DEL RIO NO CORREN NINGÚN RIESGO. LOS HABITANTES DE UN BARRIO EN LA MONTAÑA ESTÁN EN RIESGO DE DERRUMBE.', 'NA', 'NA', 'NA', 'REFORZAR GEOGRAFÍA', '../../images/preguntas/1116.jpg'),
(978, 12, 11, 3, 211, 'EN EL MOVIMIENTO DE CAÍDA LIBRE ¿CÓMO VARÍA EL ESPACIO, POR CADA SEGUNDO, CUANDO EL AGUA BAJA?', 'PERMANECE IGUAL', 'NA', 'NA', 'AUMENTA', 'DISMINUYE', 'SE DUPLICA', 'NA', 'REFORZAR CAÍDA LIBRE', '../../images/preguntas/caida libre2.jpg'),
(979, 12, 11, 3, 210, 'UN AUTO CIRCULA POR UNA CARRETERA A 20M/S. EN 5S, SU VELOCIDAD PASA A SER DE 25M/S. ¿CUÁL HA SIDO SU ACELERACIÓN? VF= VO + AT', '1M/S²', 'NA', 'NA', '2M/S²', '1M/S', '2M/S', 'NA', 'REFORZAR MOVIMIENTO ACELERADO', '../../images/preguntas/mov acelerado1.jpg'),
(980, 5, 4, 5, 345, 'EN NUESTRO PAÍS PODEMOS ENCONTRAR ELEMENTOS INDISPENSABLES PARA LA VIDA, COMO EL AGUA, LAS PLANTAS Y LA ENERGÍA DEL SOL, QUE NOS BRINDA ALIMENTOS Y RECURSOS VITALES PARA NUESTRA SUPERVIVENCIA. ¿CUÁLES CREES QUE SON LOS PRINCIPALES RECURSOS NATURALES RENOVABLES Y NO RENOVABLES DE NUESTRO PAÍS?', 'DENTRO DE LOS RECURSOS RENOVABLES TENEMOS: LA ENERGÍA SOLAR, EL AIRE, EL AGUA, EL SUELO LA FAUNA Y LA FLORA. EN EL GRUPO DE RECURSOS NO RENOVABLES TENEMOS: EL PETRÓLEO, GAS NATURAL, CARBÓN, HIERRO, ORO, PLATINO.', 'LOS RECURSOS RENOVABLES DE NUESTRO PAÍS SON: LA ENERGÍA SOLAR, EL AIRE, EL AGUA, EL SUELO LA FAUNA Y LA FLORA. EN EL GRUPO DE RECURSOS NO RENOVABLES TENEMOS: EL PETRÓLEO, GAS NATURAL, CARBÓN, HIERRO, ORO, PLATINO.', 'EN EL GRUPO DE RECURSOS NO RENOVABLES TENEMOS: EL PETRÓLEO, GAS NATURAL, CARBÓN, HIERRO, ORO, PLATINO. DENTRO DE LOS RECURSOS RENOVABLES TENEMOS: LA ENERGÍA SOLAR, EL AIRE, EL AGUA, EL SUELO LA FAUNA Y LA FLORA. ', 'EN EL GRUPO DE RECURSOS NO RENOVABLES TENEMOS: EL PETRÓLEO, GAS NATURAL. DENTRO DE LOS RECURSOS RENOVABLES TENEMOS: LA ENERGÍA SOLAR, EL AIRE, EL AGUA.', 'NA', 'NA', 'NA', 'REFORZAR GEOGRAFÍA', '../../images/preguntas/1117.jpg'),
(981, 12, 11, 3, 210, 'UN DEPORTISTA DE CICLISMO EN PISTA POSEE UNA VELOCIDAD EN COMPETENCIA DE ATLETISMO DE 12M/S Y UNA ACELERACIÓN DE 2M/S². CUÁNTO TIEMPO TARDARÁ EN ADQUIRIR UNA VELOCIDAD DE 144KM/H?  VF= VO +AT', '14S', 'NA', 'NA', '15S', '16S', '17S', 'NA', 'REFORZAR MOVIMIENTO ACELERADO', '../../images/preguntas/ciclista pista.jpg'),
(982, 12, 11, 3, 210, 'UN MOTOCICLISTA QUE PARTE DEL REPOSO ALCANZA UNA VELOCIDAD DE 216KM/H EN 10S. CALCULA SU ACELERACIÓN. VF= VO+AT', '6M/S²', 'NA', 'NA', '6M/S', '12M/S²', '12M/S', 'NA', 'REFORZAR MOVIMIENTO ACELERADO', '../../images/preguntas/motorbike-gdc319ae39_640.jpg'),
(983, 5, 4, 3, 345, '¿CUÁL DE LAS SIGUIENTES PROBLEMÁTICAS CREES QUE AFECTAN MÁS AL MEDIO AMBIENTE?', 'TODAS LAS RESPUESTAS SON CORRECTAS.', 'NA', 'NA', 'LA DEFORESTACIÓN, LOS DESECHOS.', 'EL CALENTAMIENTO GLOBAL.', 'LA CONTAMINACIÓN AMBIENTAL, EROSIÓN O DESGASTE DEL SUELO. ', 'NA', 'REFORZAR GEOGRAFÍA', '../../images/preguntas/1118.jpg'),
(984, 12, 11, 3, 209, 'LA VELOCIDAD DE LA LUZ EN EL VACÍO ES C=300.000KM/S. LA LUZ DEL SOL TARDA EN LLEGAR A LA TIERRA 8MINUTOS Y 19 SEGUNDOS. CALCULAR LA DISTANCIA ENTRE EL SOL Y LA TIERRA. V=X/T', '149700000KM', 'NA', 'NA', '14970000KM', '149000000KM', '140700000M', 'NA', 'REFORZAR MOVIMIENTO UNIFORME', '../../images/preguntas/lake-g8d4f73b63_640.jpg'),
(985, 5, 4, 3, 344, '¿QUIÉNES FUERON LOS PRIMEROS POBLADORES DE AMÉRICA Y QUE LABORES DESARROLLABAN PARA SOBREVIVIR?', 'FUERON LOS NÓMADAS, PERSONAS QUE SE DESPLAZABAN DE UN LUGAR A OTRO, SE REFUGIABAN EN CUEVAS, FABRICABAN HERRAMIENTAS EN PIEDRA, CAZABAN ANIMALES, RECOLECTABAN FRUTOS Y RAÍCES. USABAN EL FUEGO PARA CALENTARSEN Y COCINAR LOS ALIMENTOS. ', 'NA', 'NA', 'LOS INDÍGENAS FUERON LOS PRIMEROS POBLADORES DE AMÉRICA.', 'LOS NÓMADAS, QUIENES PERMANECÍAN EN UN SOLO LUGAR CULTIVANDO LA TIERRA Y CAZANDO ANIMALES PARA SOBREVIVIR.', 'FUERON LOS SEDENTARIOS, QUIENES CAZABAN SU PROPIO ALIMENTO Y LABRABAN LA TIERRA.', 'NA', 'REFORZAR ANTROPOLOGÍA', '../../images/preguntas/1119.jpg'),
(986, 12, 11, 3, 209, 'UN ATLETA CORRE A VELOCIDAD CONSTANTE DE 90KM/H POR UNA PISTA RECTA. ¿QUÉ DISTANCIA RECORRE EN 2 HORAS? V=X/T', '180KM', 'NA', 'NA', '280KM', '180M', '280M', 'NA', 'REFORZAR MOVIMIENTO UNIFORME', '../../images/preguntas/jogging-g3b7d94048_640.jpg'),
(987, 12, 11, 3, 209, 'UN ATLETA SE MUEVE A VELOCIDAD CONSTANTE DE 90KM/H EN UNA PISTA RECTA. ¿CUÁNTO TARDARÁ EN RECORRER 10KM? V=X/T', 'APROXIMADAMENTE 6 MINUTOS 40 SEGUNDOS', 'NA', 'NA', 'APROXIMADAMENTE 6 MINUTOS', 'APROXIMADAMENTE 6 MINUTOS 55 SEGUNDOS', 'APROXIMADAMENTE 16 MINUTOS 40 SEGUNDOS', 'NA', 'REFORZAR MOVIMIENTO UNIFORME', '../../images/preguntas/action-gf651d16bd_640.jpg'),
(988, 10, 5, 3, 13, 'EL NÚMERO DE MESAS (M) EN UN SALÓN ES EL DOBLE DEL NÚMERO DE SILLAS (S) MAS 6.  \rSI EN EL SALÓN HAY 36 MUEBLES ENTRE MESAS Y SILLAS.  \r¿CUÁL ES LA ECUACIÓN PARA ENCONTRAR EL NÚMERO DE SILLAS?  \rSILLAS = S \rMESAS = M \r', '2S + 6 + S = 36	', 'NA', 'NA', '2S + 6 = 36', 'S + M = 6', '2M +2S = 36', 'NA', 'REFORZAR SOLUCION ECUACIONES 1ER GRADO (NUMÉRICO-VARIACIONAL)', 'NA'),
(989, 10, 5, 3, 13, 'UN JOVEN LE DIJO A OTRO: ADIVINA CUÁNTOS AÑOS TENGO SI LAS DOS TERCERAS PARTES DE ELLOS MENOS 1 ES IGUAL  A  MI EDAD ACTUAL  MENOS  6. \rNÚMERO DE AÑOS = X \r', 'X = 15 AÑOS', 'NA', 'NA', 'X=  30 AÑOS', 'X= 6 AÑOS', 'X = 16 AÑOS', 'NA', 'REFORZAR SOLUCION ECUACIONES 1ER GRADO (NUMÉRICO-VARIACIONAL)', 'NA'),
(990, 10, 5, 3, 13, 'UNA RUEDA GIGANTE TIENE 27 CABINAS ENTRE DOBLES (D) Y TRIPLES (T). PLANTEA LA ECUACIÓN PARA OBTENER D, SABIENDO QUE CABEN 66 PERSONAS. \rCABINAS DOBLES= D \rCABINAS TRIPLES = T \r', '2D + 3(27 - D) = 66', 'NA', 'NA', '2D + 27 – D = 66', '27 – D = 66', '3( 27 – D ) = 66', 'NA', 'REFORZAR SOLUCION ECUACIONES 1ER GRADO (NUMÉRICO-VARIACIONAL)', 'NA'),
(991, 10, 5, 3, 20, 'RELACIONA LAS LETRAS DE LOS POLINOMIOS DE LA IZQUIERDA CON LOS NÚMEROS DE LA FACTORIZACIÓN DE LA DERECHA. ', '(A – 3) (B – 1) (C – 4 ) ( D- 2)', 'NA', 'NA', '(A – 1) (B – 2) (C – 3 ) ( D- 4)', '(A – 1) (B – 4) (C – 3 ) ( D- 2)', '(A – 3) (B – 2) (C – 3 ) ( D - 4)', 'NA', 'REFORZAR FACTORIZACIÓN (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/noveno2.png'),
(992, 10, 5, 3, 18, '¿INDICA EL PRODUCTO NOTABLE CUYO RESULTADO ES LO QUE SE MUESTRA EN LA FIGURA?  ', 'A^6 - 〖49B〗^4', 'NA', 'NA', 'A^3 - 〖49B〗^2', 'A^6 + 〖49B〗^4', 'A^3 + 〖49B〗^2', 'NA', 'REFORZAR PRODUCTOS Y COCIENTES NOTABLES (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/noveno3.png'),
(993, 10, 5, 3, 20, 'SIMPLIFICA LA EXPRESIÓN ALGEBRAICA DE LA FIGURA', '2X – 11', 'NA', 'NA', '2X + 11', '4X -121', '4X + 121', 'NA', 'REFORZAR FACTORIZACIÓN (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/noveno4.png'),
(994, 12, 12, 5, 317, 'A PARTIR DE LA CARICATURA PRESENTADA Y DE LA SITUACIÓN DESCRITA, RESPONDA LA SIGUIENTE PREGUNTA:  \r \rLA LEY DE OFERTA Y DEMANDA ESTABLECE QUE EL PRECIO DE UN PRODUCTO AUMENTA A MEDIDA QUE LA OFERTA SE REDUCE Y QUE, POR EL CONTRARIO, EL PRECIO DEL MISMO DISMINUYE EN CUANTO LA OFERTA SE INCREMENTA. EN ESTE SENTIDO, ¿CUÁL CONSIDERAS QUE ES EL PAPEL QUE JUEGA EL MERCADO EN LA RELACIÓN DE LOS PRECIOS DE LOS PRODUCTOS?', 'EL MERCADO PRODUCE UN EFECTO DE REGULADOR EN LOS PRECIOS DEL PRODUCTO, POR CUANTO EXISTEN MAYORES OFERENTES DEL MISMO PRODUCTO.', 'EL MERCADO IMPULSA LA COMPETENCIA DE PRECIOS, LO CUAL FAVORECE EN GRAN MEDIDA LOS INTERESES DEL CONSUMIDOR.', 'LA EXISTENCIA DE UN MERCADO AMPLIO DE BIENES Y SERVICIOS PRODUCE EN EL CONSUMIDOR FINAL UN ESTADO DE BIENESTAR, LO CUAL, INEVITABLEMENTE, PRODUCE UN AUMENTO EN LA NECESIDAD DE CONSUMO Y POR ENDE AUMENTO EN LA DEMANDA DE PRODUCTOS. ', 'LA ECONOMÍA Y EL MERCADO NADA TIENEN QUE VER CON LOS PRECIOS DE LOS PRODUCTOS, DADO QUE NO SON ELEMENTOS COMPATIBLES. ', 'NA', 'NA', 'NA', 'REFORZAR ECONOMÍA', '../../images/preguntas/Oferta y Demanda_.jpg'),
(995, 10, 5, 3, 21, 'UNA FÁBRICA DE CHOCOLATES UTILIZA EL EMPAQUE EN CARTON DE LA FIGURA PARA UNA DE SUS REFERENCIAS. ¿CUÁNTO CARTON NECESITA POR CADA EMPAQUE Y QUE VOLUMEN OCUPA CADA EMPAQUE?', 'CARTÓN = 1617.76 CM² Y V = 2880 CM³', 'NA', 'NA', 'CARTÓN = 90 CM² Y V = 1980 CM³', 'CARTÓN = 1600 CM² Y V = 2800 CM³', 'CARTÓN = 2000 CM² Y V = 3000 CM³', 'NA', 'REFORZAR ÁREAS Y VOLÚMENES (GEOMÉTRICO-MÉTRICO)', '../../images/preguntas/n1.png'),
(996, 10, 5, 3, 21, '¿CUÁNTA MIEL (EN CENTÍMETROS CÚBICOS CM³ \r) SE PUEDE EXTRAER DE UN PANAL, SI TIENE 1230 CONTENEDORES HEXAGONALES QUE TIENEN 4 MM POR CADA LADO HEXAGONAL Y 3CM DE ALTO?  \r', '1992.6 CM³', 'NA', 'NA', '2992.6 CM³', '999.6 CM³', '3999.6 CM³', 'NA', 'REFORZAR ÁREAS Y VOLÚMENES (GEOMÉTRICO-MÉTRICO)', '../../images/preguntas/noven06.png'),
(997, 10, 5, 3, 24, 'EL DUEÑO DE UN TERRENO IRREGULAR HIZO UN PLANO SOBRE CUADRADOS QUE REPRESENTAN 8100 M².  QUIERE CERCAR SU TERRENO Y NECESITA HALLAR EL PERÍMETRO PARA SABER EL NÚMERO DE POSTES QUE TIENE QUE COMPRAR. ', '1483.68 M', 'NA', 'NA', '8100 M', '900 M', '337.5 M', 'NA', 'REFORZAR TEOREMA DE PITÁGORAS (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/noveno6.png'),
(998, 12, 12, 5, 317, 'DESDE EL PUNTO DE VISTA DE LA ECONOMÍA, LA PRODUCCIÓN ES LA ACTIVIDAD QUE APORTA VALOR AGREGADO POR CREACIÓN Y SUMINISTRO DE BIENES Y SERVICIOS, ES DECIR, CONSISTE EN LA CREACIÓN DE PRODUCTOS O SERVICIOS Y, AL MISMO TIEMPO, LA CREACIÓN DE VALOR. ES LA ACTIVIDAD, PRODUCIDA Y GENERADA POR EL HOMBRE, QUE SE DESARROLLA DENTRO DE UN SISTEMA ECONÓMICO. A LO LARGO DE LA HISTORIA, EL HOMBRE LE HA DADO EL VALOR AGREGADO A LOS PRODUCTOS Y BIENES QUE HOY ENCONTRAMOS EN EL MERCADO. A PARTIR DE TU ANÁLISIS, RESPONDE LA SIGUIENTE PREGUNTA: ¿CUÁL CREES QUE EL EFECTO NEGATIVO QUE HA PRODUCIDO LA TECNIFICACIÓN DE LA PRODUCCIÓN EN LOS PROCESOS DE CREACIÓN DE BIENES Y SERVICIOS?', 'LA EXCESIVA TECNIFICACIÓN DE LOS PROCESOS DE PRODUCCIÓN HAN DESENCADENADO UNA DISMINUCIÓN DE LA OFERTA LABORAL, LO CUAL PRODUCE DESEMPLEO Y POBREZA. ', 'POCO A POCO SE HA IDO PERDIENDO LA CAPACIDAD CREATIVA DE LOS SERES HUMANOS, LO CUAL TAMBIÉN HA FAVORECIDO LOS PROCESOS DE TECNIFICACIÓN. ', 'LAS MANUALIDADES, LAS ARTESANÍAS Y LAS MANUFACTURAS PARECIERA QUE HAN PERDIDO SU VALOR, TODA VEZ QUE YA NO SON LOS HOMBRES Y LAS MUJERES LOS QUE PRODUCEN Y FABRICAN ESTOS ELEMENTOS. ', 'LAS MÁQUINAS Y LOS MISMOS SERES HUMANOS HAN LOGRADO UNA SIMBIOSIS, LO CUAL HA FACILITADO EL TRABAJO MANUAL Y PERMITIDO EL AUMENTO DE LA OFERTA LABORAL. ', 'NA', 'NA', 'NA', 'REFORZAR ECONOMÍA', 'NA'),
(999, 10, 5, 3, 24, 'EL PLANO MUESTRA LA DISTRIBUCIÓN DE UN CONJUNTO DE EDIFICIOS (BLOQUES AMARILLOS, AZULES, CAFES Y MORADOS) Y UNA ZONA VERDE EN MEDIO. EL PLANO ESTA CONFORMADO POR 33 SEGMENTOS CUADRADOS, CADA UNO CON UN ÁREA DE 64 M CUADRADOS. ¿QUÉ DISTANCIA EN METROS HAY ENTRE LOS EXTREMOS A Y B DEL TERRENO? ', '79.19 M', 'NA', 'NA', '89.19 M', '64 M', '33 M', 'NA', 'REFORZAR TEOREMA DE PITÁGORAS (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/noveno7.png'),
(1000, 10, 5, 3, 39, '¿CON CUÁLES FIGURAS SE PUEDE ARMAR UN RECTÁNGULO SIN GIRAR NINGUNA FIGURA?', 'B, D, E, F', 'NA', 'NA', 'A,B,C,D', 'A Y E', 'C, E , F , A', 'NA', 'REFORZAR RAZONAMIENTO LÓGICO (ALEATORIO-PROBABILÍSTICO)', '../../images/preguntas/noveno8.png'),
(1001, 12, 12, 5, 318, 'A PARTIR DE LA IMAGEN Y LA SITUACIÓN DESCRITA, RESPONDA LA SIGUIENTE PREGUNTA: EL CONSUMISMO ES UNA TENDENCIA DEL MUNDO CONTEMPORÁNEO QUE CONSISTE EN COMPRAR Y/O ACUMULAR BIENES Y SERVICIOS POR ENCIMA DE LO QUE SE CONSIDERA DE PRIMERA NECESIDAD. EL CONSUMISMO ES UNA PRÁCTICA POR LA CUAL UNA PERSONA COMPRA MÁS ALLÁ DE LO INDISPENSABLE. ¿CUÁL CONSIDERA QUE SON LAS IMPLICACIONES SOCIALES Y MEDIOAMBIENTALES DE ESTE FENÓMENO?', 'UN DEGASTE EXCESIVO EN LOS RECURSOS NATURALES NO RENOVABLES Y LAS COMUNIDADES QUE SE ENCUENTRAN EN SU ALREDEDOR. ', 'ESTIMULACIÓN DE LA ECONOMÍA DE LOS PAÍSES CON GRAN POTENCIAL INDUSTRIAL, GENERANDO POBREZA ENTRE LOS PAÍSES MENOS INDUSTRIALIZADOS. ', 'DIFÍCIL ACCESO DE CIERTOS BIENES Y SERVICIOS EN SECTORES MENOS FAVORECIDOS DE LA SOCIEDAD, PRODUCIDO POR EL ELEVADO PRECIO DE ESTOS. ', 'UN AUMENTO EN LA PRODUCTIVIDAD TECNOLÓGICA Y COMERCIAL DE LOS PRODUCTOS DE PRIMERA NECESIDAD.', 'NA', 'NA', 'NA', 'REFORZAR POLÍTICA', '../../images/preguntas/Consumismo.jpg'),
(1002, 10, 5, 3, 20, 'ANTONIO CONSTRUIRÁ UN RECTÁNGULO CON LAS PIEZAS QUE SE MUESTRAN EN LA IMAGEN. ¿CUÁL SERÍA EL ÁREA EXPRESADA EN FACTORIZACIÓN?', 'X(2X + 3)', 'NA', 'NA', 'X²( X + 1)', 'X²( 2X + 3)', 'X( X + 1)', 'NA', 'REFORZAR FACTORIZACIÓN (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/noveno 12.png'),
(1003, 10, 5, 3, 11, 'EN MI BARRIO, EL CAMIÓN QUE RECOGE LOS ENVASES DE PLÁSTICO VIENE CADA 3 DÍAS, EL QUE RECOGE EL PAPEL DE RECICLAJE CADA 8 DÍAS Y EL QUE RECOGE LAS PILAS USADAS CADA DOS SEMANAS. ¿CADA CUÁNTOS DÍAS COINCIDEN LOS TRES CAMIONES? \rNOTA IMPORTANTE: CONVIERTE LAS SEMANAS A DÍAS. \r', '168 DÍAS', 'NA', 'NA', '336 DÍAS', '112 DÍAS', '24 DÍAS', 'NA', 'REFORZAR MCM Y MCD (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/noveno9.png'),
(1004, 12, 12, 3, 317, 'A PARTIR DE LA SITUACIÓN DESCRITA A CONTINUACIÓN, ANALICE Y RESPONDA: UN ESTUDIO DE 2012 REVELÓ QUE EN COLOMBIA, LOS MEDICAMENTOS PUEDEN VALER HASTA UN 240% MÁS QUE EN OTROS PAÍSES. SEGÚN LOS EXPERTOS, ESTO SE DEBE A UNA ELEVADA CONCENTRACIÓN DEL MERCADO FARMACÉUTICO EN POCOS LABORATORIOS. ESTOS AL NO TENER COMPETENCIA, NI REGULACIÓN POR PARTE DEL ESTADO, PUEDEN FIJAR ARBITRARIAMENTE LOS PRECIOS DE LOS MEDICAMENTOS. EL CONCEPTO QUE MEJOR DESCRIBE ESTA SITUACIÓN SE DENOMINA COMO:', 'MONOPOLIO DEL MERCADO.', 'NA', 'NA', 'CAPITALISMO.', 'PROTECCIONISMO ECONÓMICO.', 'NEOLIBERALISMO.  ', 'NA', 'REFORZAR ECONOMÍA', 'NA'),
(1005, 10, 5, 3, 11, 'EN UN ALMACÉN SE DISPONE DE 180 BOTELLAS DE JUGO DE NARANJA, 576 DE JUGO DE MARACUYA Y OTRAS 72 DE JUGO DE UVA. SE QUIEREN COMPRAR CAJAS IGUALES PARA GUARDAR LOS JUGOS Y QUE QUEPA EL MAYOR NÚMERO DE BOTELLAS. ¿CUÁNTAS BOTELLAS CABRAN EN CADA CAJA?', '12 BOTELLAS', 'NA', 'NA', '18 BOTELLAS', '15 BOTELLAS', '24 BOTELLAS', 'NA', 'REFORZAR MCM Y MCD (NUMÉRICO-VARIACIONAL)', 'NA'),
(1006, 10, 5, 3, 39, 'UN COLEGIO HA DECIDIDO TENER 4 ACTIVIDADES EN SIMULTÁNEO PARA LOS DOS GRUPOS DE GRADO SEXTO (6A Y 6B), COMO SE MUESTRA EN LA FIGURA. ENCUENTRA LA MANERA DE DIVIDIR A LOS ESTUDIANTES EN GRUPOS DE TAMAÑO SIMILAR PARA QUE TODOS PARTICIPEN DE LAS CUATRO ACTIVIDADES Y QUE HAYAN ESTUDIANTES DE A Y B AL MISMO TIEMPO EN CADA ACTIVIDAD. ', '12 DE A Y 11 DE B', 'NA', 'NA', '11 DE A Y 12 DE B', '10 DE A Y 15 DE B', '15 DE A Y 10 DE B', 'NA', 'REFORZAR RAZONAMIENTO LÓGICO (ALEATORIO-PROBABILÍSTICO)', '../../images/preguntas/noveno11.png'),
(1007, 12, 12, 3, 317, 'EL CONGRESO DE LA REPÚBLICA LLAMA A UNA SESIÓN EXTRAORDINARIA PARA ANALIZAR LOS SUBSIDIOS QUE EL GOBIERNO LE OTORGA A LOS CAMPESINOS Y AL SECTOR AGRÍCOLA, CON EL FIN DE ANALIZAR LA CONTINUIDAD O NO DE ESTE BENEFICIO. A PARTIR DE LA SITUACIÓN ANTERIORMENTE DESCRITA, RESPONDA LA SIGUIENTE PREGUNTA: ¿CUÁL DE LOS SIGUIENTES ARGUMENTOS APOYA LA EXISTENCIA DE SUBSIDIOS?', 'LOS SUBSIDIOS A LOS CAMPESINOS Y PRODUCTORES PERMITEN QUE EL COSTO DE PRODUCCIÓN SEAN MUCHO MENOR Y POR LO TANTO, PUEDAN COMPETIR CON OTROS PRODUCTOS PRODUCIDOS EN EL EXTERIOR.', 'NA', 'NA', 'UNA VEZ ESTABLECIDOS LOS SUBSIDIOS SON DIFÍCILES DE ELIMINAR.', 'LOS SUBSIDIOS NO SIRVEN DE MUCHO, YA QUE ESTE DINERO POR LO GENERAL SE UTILIZA PARA PAGAR LOS SALARIOS DE LOS FUNCIONARIOS DEL ESTADO. ', 'LOS SUBSIDIOS SE QUEDAN EN MANOS DE UNOS POCOS PRODUCTORES DE GANADO, LO CUAL NO AUMENTA LA COMPETITIVIDAD DE LOS PRODUCTOS AGRÍCOLAS. ', 'NA', 'REFORZAR ECONOMÍA', 'NA'),
(1008, 12, 12, 3, 318, 'DENTRO DE LA ESTRUCTURA DEL ESTADO COLOMBIANO, EXISTEN UNA SERIE DE ORGANISMOS DE CONTROL QUE BUSCAN VIGILAR Y SANCIONAR A LAS PERSONAS QUE EJERCEN ALGUNOS CARGOS PÚBLICOS DENTRO DEL ESTADO. ESTA FUNCIÓN ESTÁ A CARGO DE', 'LA PROCURADURÍA GENERAL DE LA NACIÓN. ', 'NA', 'NA', 'LA FISCALÍA GENERAL DE LA NACIÓN. ', 'LA DEFENSORÍA DEL PUEBLO. ', 'EL MINISTERIO DEL INTERIOR. ', 'NA', 'REFORZAR POLÍTICA', 'NA'),
(1009, 12, 12, 3, 317, 'LEA CUIDADOSAMENTE LA SIGUIENTE SITUACIÓN, POSTERIORMENTE CONTESTE LA PREGUNTA. DENTRO DE LA CONSTITUCIÓN POLÍTICA DE 1991 SE CREÓ EN COLOMBIA, LOS MECANISMOS DE PARTICIPACIÓN CIUDADANA, LOS CUALES BUSCAN DARLE A LA CIUDADANÍA UNA SERIE DE HERRAMIENTAS PARA GARANTIZAR EL CUMPLIMIENTO DE LA CONSTITUCIÓN, LA PARTICIPACIÓN POLÍTICA DE LA CIUDADANÍA, ASÍ COMO EL PODER PARA REVOCAR EL MANDATO DE ALGUNOS FUNCIONARIOS DEL ESTADO. A PARTIR DE ESTO, LOS GOBERNADORES Y ALCALDES ELECTOS A TRAVÉS DEL VOTO, CONTRAEN CON LA CIUDADANÍA Y SUS ELECTORES LA OBLIGACIÓN DE CUMPLIR CON EL PROGRAMA DE GOBIERNO QUE PRESENTARON AL INSCRIBIRSE COMO CANDIDATOS. EL INCUMPLIMIENTO DE ESTOS DEBERES Y DEL PROGRAMA DE GOBIERNO, ¿A QUE PUEDE DAR LUGAR?', 'LA ELECCIÓN DE LOS GOBERNANTES SEA REVOCADA POR LA CIUDADANÍA A TRAVÉS DE UN MECANISMO DE PARTICIPACIÓN CIUDADANA: LA REVOCATORIA DEL MANDATO.', 'NA', 'NA', 'LA FISCALÍA INVESTIGUE A ESTOS GOBERNANTES Y DE ESTA MANERA SEAN DESTITUIDOS DE SU CARGO ', 'LOS GOBERNANTES JUNTO CON LA CIUDADANÍA LE EXIJAN AL PRESIDENTE DE LA CORTE CONSTITUCIONAL LA APLICACIÓN DE LA LEY Y SUS DEBERES. ', 'LA CIUDADANÍA CONVOQUE A UN PLANTÓN PARA QUE EL PRESIDENTE DE LA REPUBLICA CUMPLA CON EL PLAN DE GOBIERNO DEL ALCALDE O DEL GOBERNADOR EN CUESTIÓN. ', 'NA', 'REFORZAR ECONOMÍA', 'NA'),
(1010, 12, 12, 3, 318, 'EL FILÓSOFO FRANCISCO FERNÁNDEZ BUEY SEÑALA QUE: UNA PROPUESTA POLÍTICA PUEDE DENOMINARSE MULTICULTURALISTA CUANDO, ADEMÁS DE ABOGAR POR EL RECONOCIMIENTO, LA TOLERANCIA Y EL RESPETO DE LOS GRUPOS CULTURALES HISTÓRICAMENTE EXCLUIDOS, MATERIALIZA EL RECONOCIMIENTO DE ESTOS GRUPOS EN LAS LEYES Y NORMAS DE UNA NACIÓN. DE ACUERDO CON LO ANTERIOR, ¿CUÁL DE LAS SIGUIENTES PROPUESTAS ES MÁS AFÍN CON LOS PLANTEAMIENTOS DEL AUTOR?', 'LA PROTECCIÓN CONSTITUCIONAL DE LA DIVERSIDAD ÉTNICA Y CULTURAL EXISTENTE EN TODO EL TERRITORIO NACIONAL, A TRAVÉS DE LEYES Y FALLOS QUE RECONOZCAN SUS RAÍCES, TRADICIONES Y COSTUMBRES. ', 'NA', 'NA', 'LA ELABORACIÓN DE CARTILLAS Y DOCUMENTALES PARA PRESENTAR LAS TRADICIONES DE ALGUNOS GRUPOS INDÍGENAS. ', 'LA INCLUSIÓN DE ALGUNOS AFRODESCENDIENTES EN CARGOS PÚBLICOS, CON EL FIN DE VISIBILIZAR A LAS COMUNIDADES AFRO EN EL PAÍS. ', 'COMPRAR LAS ARTESANÍAS QUE ELABORAN LAS COMUNIDADES INDÍGENAS Y AFRODESCENDIENTES DEL PAÍS Y EXHIBIRLAS EN OTROS PAÍSES. ', 'NA', 'REFORZAR POLÍTICA', 'NA'),
(1011, 12, 12, 3, 318, 'EN POLÍTICA, EL SOCIALISMO ES  UNA DOCTRINA POLÍTICA Y ECONÓMICA QUE PROPUGNA LA PROPIEDAD Y LA ADMINISTRACIÓN DE LOS MEDIOS DE PRODUCCIÓN POR PARTE DE LAS CLASES TRABAJADORAS CON EL FIN DE LOGRAR UNA ORGANIZACIÓN DE LA SOCIEDAD EN LA CUAL EXISTA UNA IGUALDAD POLÍTICA, SOCIAL Y ECONÓMICA DE TODAS LAS PERSONAS. EN ESTE SENTIDO, UNA DE LAS CARACTERÍSTICAS DENTRO DE ESTE SISTEMA ES, EL CONTROL QUE EJERCE EL ESTADO SOBRE LOS MEDIOS DE PRODUCCIÓN Y DE LAS DIFERENTES FUERZAS DE TRABAJO.  \r \rA PARTIR DE ESTE PLANTEAMIENTO, ¿CUÁL DE LAS SIGUIENTES SITUACIONES PUEDE EXPLICAR ESTE CONCEPTO? \r', 'QUE EL GOBIERNO NACIONALICE LAS EMPRESAS Y LAS INDUSTRIAS DEL PAÍS, DE ESTA MANERA LA RIQUEZA QUE ESTAS CREAN, NO SERÁN DE LOS DUEÑOS SINO DEL ESTADO Y PODRÁN SER REPARTIDAS ENTRE TODOS. ', 'NA', 'NA', 'QUE EL CARGO DE PRESIDENTE PUEDA SER HEREDADO O ASIGNADO DE MANERA INDIVIDUAL. ', 'QUE EL CONGRESO CREE NORMAS Y LEYES DE MANERA DEMOCRÁTICA, SIN PERJUDICAR AL PUEBLO.', 'QUE EL PRESIDENTE PUEDA DECIDIR DE MANERA UNILATERAL Y AUTORITARIA LA EXISTENCIA Y APLICACIÓN DE LAS LEYES EXISTENTES EN EL PAÍS.', 'NA', 'REFORZAR POLÍTICA', 'NA'),
(1012, 12, 12, 5, 318, 'A PARTIR DE LA SITUACIÓN DESCRITA POR EL INSTITUTO INTERAMERICANO DE DERECHOS HUMANOS, REALICE UN ANÁLISIS Y RESPONDA LA PREGUNTA: EL PROFESOR DAVID ROLL PLANTEA QUE UNA DE LAS PRINCIPALES FUNCIONES DE UN PARTIDO POLÍTICO ES SERVIR DE ENLACE ENTRE EL ESTADO Y LOS CIUDADANOS. EN UN PAÍS COMO EL NUESTRO, EN EL CUAL EXISTE UNA GRAN DIVERSIDAD DE PARTIDOS QUE, A SU VEZ, REPRESENTAN A DIFERENTES SECTORES Y GRUPOS DE PERSONAS DE LA SOCIEDAD. PERO QUE TAMBIÉN, EN EL ÚLTIMO TIEMPO PARA MUCHAS PERSONAS, HAN SIGNIFICADO CORRUPCIÓN, CLIENTELISMO Y DESCONEXIÓN CON LA CIUDADANÍA. ESTA SITUACIÓN HA LLEVADO A QUE LAS PERSONAS, DEJEN DE CREER EN LA IMPORTANCIA DE LA DEMOCRACIA REPRESENTATIVA Y POR LO TANTO DEJEN EN MANOS DE UNOS POCOS LAS DECISIONES IMPORTANTES PARA EL PAÍS. ¿CUÁLES CREES QUE DEBEN SER LAS ACCIONES Y TAREAS QUE DEBEN EMPRENDER LOS PARTIDOS PARA QUE LA ESENCIA DE LA DEMOCRACIA REPRESENTATIVA NO SE PIERDA?  ', 'GENERAR UNA MAYOR PARTICIPACIÓN DE LOS CIUDADANOS EN LA TOMA DE DECISIONES POR PARTE DEL ESTADO, A TRAVÉS DEL USO DE LOS MECANISMOS DE PARTICIPACIÓN CIUDADANA. ', 'RENDIR CUENTAS CLARAS A LOS CIUDADANOS ACERCA DE LAS LEYES QUE CADA UNO DE LOS PARTIDOS PRESENTAN, ESTO CON EL FIN DE VELAR POR EL CUMPLIMIENTO DE LA CONSTITUCIÓN Y GARANTIZAS LOS DERECHOS FUNDAMENTALES. ', 'ACOMPAÑAR A LOS CIUDADANOS Y COMUNIDADES CUANDO SE PRESENTE ALGUNA VULNERACIÓN DE DERECHOS POR PARTE DEL ESTADO, DE ESTA MANERA SE VISIBILIZA LA PROBLEMÁTICA Y SE BUSCAN SOLUCIONES DESDE LAS ENTIDADES CORRESPONDIENTES. ', 'INCREMENTAR LA DISTANCIA ENTRE LAS DECISIONES POLÍTICAS DEL GOBIERNO Y LAS NECESIDADES DEL PUEBLO. ', 'NA', 'NA', 'NA', 'REFORZAR POLÍTICA', 'NA'),
(1013, 5, 5, 3, 62, 'SE DESEA CONOCER EL VALOR TOTAL DE UNA CANTIDAD  DE BILLETES DE LAS SIGUIENTES DENOMINACIONES: \r23 BILLETES DE 50000 PESOS, 17 BILLETES DE 20000 PESOS, 19 BILLETES DE 10000 PESOS Y 9 BILLETES DE 5000 PESOS.', 'TOTAL DE DINERO: 1 725 000 PESOS', 'NA', 'NA', 'TOTAL DE DINERO: 1 625 000 PESOS', 'TOTAL DE DINERO: 1 680 000 PESOS', 'TOTAL DE DINERO: 1 340 000 PESOS', 'NA', 'REFORZAR OPERACIONES CON NÚMEROS NATURALES (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/cuarto9.png'),
(1014, 5, 5, 3, 63, 'EN UN MERCADO DE FRUTAS SE TIENEN LOS SIGUIENTES VALORES POR KILO DE CIERTOS PRODUCTOS.  690 EL KILO DE NARANJAS Y A 875 EL KILO DE MANDARINAS.  SI UNA PERSONA LLEVA 8 KILOS DE NARANJAS Y 6 KILOS DE MANDARINAS. ¿EN CUÁL FRUTA HA PAGADO MAYOR CANTIDAD DE DINERO?', 'POR LAS NARANJAS HA PAGADO 5 520 PESOS Y POR LAS MANDARINAS 5 250 PESOS, POR LO TANTO ES MAYOR EL PRECIO DE LOS 8 KILOS DE NARANJA.', 'NA', 'NA', 'POR LAS MANDARINAS HA PAGADO 5 520 PESOS Y POR LAS NARANJAS 5 250 PESOS, POR LO TANTO ES MAYOR EL PRECIO DE LOS 6 KILOS DE MANDARINA.', 'POR AMBAS FRUTAS HA PAGADO EL MISMO PRECIO.', 'NO ES POSIBLE REALIZAR LA OPERACIÓN POR QUE HACEN FALTA DATOS PARA CALCULAR LOS PRECIOS TOTALES.', 'NA', 'REFORZAR SOLUCIÓN DE PROBLEMAS (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/cuarto10.png'),
(1015, 3, 4, 5, 346, '¿QUIÉN SOY?', 'UNA PERSONA VALIOSA, ÚNICA Y ESPECIAL, NO HAY OTRA PERSONA IGUAL A TI, TE DIFERENCIA TUS CARACTERÍSTICAS FÍSICAS DE OTROS NIÑOS, ADEMÁS, LA ESTATURA, PESO COLOR DE OJOS, COLOR DE PIEL, CABELLO Y TU FORMA DE SER.', 'UNA PERSONA VALIOSA, ÚNICA Y ESPECIAL, NO HAY OTRA PERSONA IGUAL A TI, TE DIFERENCIA TUS CARACTERÍSTICAS FÍSICAS DE OTROS NIÑOS, ADEMÁS, LA ESTATURA, PESO COLOR DE OJOS, COLOR DE PIEL, CABELLO Y TU FORMA DE SER Y TUS ACTITUDES.', 'UNA PERSONA VALIOSA, ÚNICA Y ESPECIAL, NO EXISTO OTRO NIÑO IDÉNTICO A TI, TE DIFERENCIA TUS CARACTERÍSTICAS FÍSICAS DE OTROS NIÑOS, ADEMÁS, LA ESTATURA, PESO COLOR DE OJOS, COLOR DE PIEL, CABELLO Y TU FORMA DE SER Y TUS ACTITUDES.', 'UNA PERSONA IDÉNTICA A LAS DEMÁS, ACTUÓ Y TENGO ACTITUDES IGUALES A LOS DEMÁS NIÑOS.', 'NA', 'NA', 'NA', 'REFORZAR SOCIOLOGÍA', '../../images/preguntas/klipartz.com (22).png'),
(1016, 5, 5, 3, 61, 'EN LA IMAGEN SE MUESTRAN UNA SERIE DE NÚMEROS. \rLOS ÚNICOS NÚMEROS QUE SON NATURALES SON LOS SIGUIENTES:', 'A Y C', 'NA', 'NA', 'B Y  E', 'D Y E', 'SOLAMENTE F', 'NA', 'REFORZAR NÚMEROS NATURALES (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/cuarto11.png'),
(1017, 5, 5, 3, 62, 'EL RESULTADO DE LA SUMA QUE SE MUESTRA EN LA IMAGEN ES LA SIGUIENTE:', '1 381 200', 'NA', 'NA', '1 081 200', '1 369 100', '1 369 000', 'NA', 'REFORZAR OPERACIONES CON NÚMEROS NATURALES (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/cuarto12.png'),
(1018, 5, 5, 3, 62, 'EL RESULTADO DE LA MULTIPLICACIÓN QUE SE MUESTRA EN LA IMAGEN ES EL SIGUIENTE:', '44 776 172', 'NA', 'NA', '35 408 772', '37 282 252', '41 965 952', 'NA', 'REFORZAR OPERACIONES CON NÚMEROS NATURALES (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/cuarto13.png'),
(1019, 3, 4, 3, 346, 'LOS GRUPOS ÉTNICOS TIENEN COSTUMBRES Y TRADICIONES DISTINTAS COMO JUEGOS, MITOS, LEYENDAS, Y FOLCLOR QUE DEBEMOS CONOCER Y VALORAR. ¿CONOCES QUE GRUPOS ÉTNICOS TENEMOS EN COLOMBIA? SELECCIONA LA RESPUESTA CORRECTA:', 'LOS BLANCOS, LOS MESTIZOS, LOS AFROCOLOMBIANOS, LOS INDÍGENAS.', 'NA', 'NA', 'LOS AFROCOLOMBIANOS Y LOS BLANCOS', 'LOS BLANCOS Y LOS MESTIZOS', 'LA COMUNIDAD INDÍGENA', 'NA', 'REFORZAR SOCIOLOGÍA', '../../images/preguntas/0020.jpg'),
(1020, 5, 5, 3, 62, 'EL RESULTADO DE LA DIVISIÓN QUE SE MUESTRA EN LA FIGURA ES LA SIGUIENTE:', '177.4', 'NA', 'NA', '177', '1 774', '1 774.4', 'NA', 'REFORZAR OPERACIONES CON NÚMEROS NATURALES (NUMÉRICO-VARIACIONAL)', '../../images/preguntas/cuarto14.png'),
(1021, 5, 5, 3, 75, 'JOHANNA NECESITA ORGANIZAR LOS DATOS DE LA TABLA AZUL EN EL SIGUIENTE DIAGRAMA DE BARRAS, LA OPCIÓN CORRECTA LA PODEMOS DETERMINAR CON LA SIGUIENTE LETRA:', 'DIAGRAMA A, ES LA CORRECTA', 'NA', 'NA', 'DIAGRAMA B, ES LA CORRECTA', 'CUALQUIER DIAGRAMA ES CORRECTO', 'NINGUNO DE LOS DIAGRAMAS REPRESENTA LA INFORMACIÓN DE LA TABLA AZUL', 'NA', 'REFORZAR PROBABILIDAD (ALEATORIO-PROBABILÍSTICO)', '../../images/preguntas/Captura.PNG'),
(1022, 3, 4, 5, 346, 'LA FAMILIA ES LA PRIMERA COMUNIDAD A LA QUE PERTENECES, DESDE TU NACIMIENTO. ¿CREES QUE LA FAMILIA ES UNA COMUNIDAD DE AMOR? SELECCIONA LA RESPUESTA CORRECTA:  ', 'TODOS LOS NIÑOS DEL MUNDO TIENEN DERECHO A UNA FAMILIA, Y SI ES UNA COMUNIDAD DE AMOR EN LA QUE APRENDEMOS A CONVIVIR. NUESTROS PADRES NOS BRINDAN PROTECCIÓN, CUIDADO, RESPETO Y AMOR', 'TODOS TENEMOS DERECHO A UNA FAMILIA.  NUESTROS PADRES NOS BRINDAN PROTECCIÓN, CUIDADO, RESPETO Y AMOR. NUESTRA FAMILIA, ES UNA COMUNIDAD DE AMOR EN LA QUE APRENDEMOS A CONVIVIR. ', 'LOS NIÑOS DEL MUNDO TIENEN DERECHO A UNA FAMILIA. LA FAMILIA ES UNA COMUNIDAD DE AMOR EN LA QUE APRENDEMOS A CONVIVIR. DESDE NIÑOS NUESTROS PADRES NOS BRINDAN PROTECCIÓN, CUIDADO, RESPETO Y AMOR.', '4.	LA FAMILIA ES NUESTRA PRIMERA COMUNIDAD, NUESTRA CUNA DE APRENDIZAJE Y AFECTO.', 'NA', 'NA', 'NA', 'REFORZAR SOCIOLOGÍA', '../../images/preguntas/0021.jpg'),
(1023, 3, 4, 5, 346, '¿CUÁLES SON LAS CARACTERÍSTICAS DE LA COMUNIDAD DE TU BARRIO O LOS VECINOS DE LA COMUNIDAD DONDE VIVES? SELECCIONA LA MEJOR RESPUESTA:', 'EL BARRIO ES DIVERTIDO Y APRENDES A VIVIR COMO PARTE DE UNA COMUNIDAD, TUS VECINOS SON PERSONAS ESPECIALES, COLABORADORES, SOLIDARIOS, ENTRE TODOS LOS VECINOS APORTAN UN GRANITO DE ARENA PARA EL BIENESTAR DE TODOS.', 'EL BARRIO DONDE VIVES ES DIVERTIDO, AGRADABLE Y APRENDES A VIVIR COMO PARTE DE UNA COMUNIDAD, TUS VECINOS SON PERSONAS ESPECIALES, COLABORADORES, SOLIDARIOS, ENTRE TODOS LOS VECINOS SE AYUDAN PARA EL BIENESTAR DE TODOS.', 'EN EL BARRIO O COMUNIDAD APRENDES A VIVIR COMO PARTE DE UNA COMUNIDAD, TUS VECINOS SON PERSONAS ESPECIALES, COLABORADORES, SOLIDARIOS, ENTRE TODOS LOS VECINOS APORTAN DE FORMA SOCIAL Y COMUNITARIA PARA EL BIENESTAR DE TODOS.', 'NINGUNA DE LAS RESPUESTAS ES CORRECTA. ', 'NA', 'NA', 'NA', 'REFORZAR SOCIOLOGÍA', '../../images/preguntas/0022.jpg'),
(1024, 3, 4, 5, 347, '¿COMO TE ORIENTAS EN TU BARRIO O LUGAR DONDE VIVES?', 'PARA ORIENTARNOS EN EL BARRIO O CUALQUIER OTRO LUGAR, NECESITAMOS DE LOS PUNTOS DE REFERENCIA, PUEDEN SER LOS LUGARES QUE TE AYUDAN A ORIENTARTE CON FACILIDAD, POR EJEMPLO, LA IGLESIA, EL COLEGIO EL CENTRO COMERCIAL, ETC.', 'PARA ORIENTARNOS EN EL BARRIO O CUALQUIER OTRO LUGAR, NECESITAMOS DE LOS PUNTOS DE REFERENCIA, PUEDEN SER LOS LUGARES QUE TE AYUDAN A ORIENTARTE CON FACILIDAD, POR EJEMPLO, EL PARQUE, EL COLEGIO EL CENTRO COMERCIAL, LAS MONTAÑAS, LOS RÍOS.', 'PARA ORIENTARNOS EN EL BARRIO O CUALQUIER OTRO LUGAR, NECESITAMOS DE LOS PUNTOS DE REFERENCIA, PUEDEN SER LOS LUGARES QUE TE AYUDAN A ORIENTARTE CON FACILIDAD, POR EJEMPLO, LA IGLESIA, EL COLEGIO EL CENTRO COMERCIAL, LAS MONTAÑAS, LOS RÍOS. ADEMÁS, DEBEMOS UBICAR LA IZQUIERDA, DERECHA, AL FRENTE Y ATRÁS.', 'LLEVAR UN MAPA DEL BARRIO O LUGAR DONDE VIVES PARA TODA OCASIÓN. ', 'NA', 'NA', 'NA', 'REFORZAR GEOGRAFÍA', '../../images/preguntas/2023.jpg'),
(1025, 3, 4, 3, 346, 'LOS GRUPOS ÉTNICOS TIENEN COSTUMBRES Y TRADICIONES DISTINTAS COMO JUEGOS, MITOS, LEYENDAS, Y FOLCLOR QUE DEBEMOS CONOCER Y VALORAR. ¿CONOCES QUE GRUPOS ÉTNICOS TENEMOS EN COLOMBIA? SELECCIONA LA RESPUESTA CORRECTA:', 'LOS BLANCOS, LOS MESTIZOS, LOS AFROCOLOMBIANOS, LOS INDÍGENAS.', 'NA', 'NA', 'LOS AFROCOLOMBIANOS Y LOS BLANCOS', 'LOS BLANCOS Y LOS MESTIZOS', 'LA COMUNIDAD INDÍGENA', 'NA', 'REFORZAR SOCIOLOGÍA', '../../images/preguntas/2025.jpg');
INSERT INTO `tbl_preguntas` (`id`, `id_grado`, `id_materia`, `id_tipo_pregunta`, `id_tema`, `pregunta`, `r1ok`, `r2ok`, `r3ok`, `r1no`, `r2no`, `r3no`, `r4no`, `retroalimentacion`, `imagen`) VALUES
(1026, 3, 4, 5, 346, '¿COMO PODEMOS CUIDAR NUESTRO MEDIO AMBIENTE?', 'AHORRAR EL AGUA, NO PERMITIR LA TALA DE ÁRBOLES, PROTEGER LOS ANIMALES, RECICLAR Y ARROJAR LAS BASURAS EN LUGARES ADECUADOS, SEMBRAR ÁRBOLES.', 'AHORRAR EL AGUA EN CASA, NO PERMITIR LA TALA DE ÁRBOLES, EVITAR LA QUEMA DE ÁRBOLES, PROTEGER LOS ANIMALES, RECICLAR Y ARROJAR LAS BASURAS EN LUGARES ADECUADOS, SEMBRAR ÁRBOLES.', 'AHORRAR LA ENERGÍA Y EL AGUA EN CASA, NO PERMITIR LA TALA DE ÁRBOLES, PROTEGER LOS ANIMALES, RECICLAR, REUTILIZAR Y ARROJAR LAS BASURAS EN LUGARES ADECUADOS, SEMBRAR ÁRBOLES, USAR MÁS LA BICICLETA.', 'CUIDAR LOS RECURSOS QUE TENEMOS EN CASA Y RECICLAR.', 'NA', 'NA', 'NA', 'REFORZAR SOCIOLOGÍA', '../../images/preguntas/klipartz.com (28).png'),
(1027, 3, 4, 5, 347, '¿LA CONTAMINACIÓN ES UNA AMENAZA PARA NUESTRO PLANETA?  ', 'SI, PORQUE ES UN FENÓMENO QUE AFECTA EL MEDIOAMBIENTE, ES UN PROBLEMA CAUSADO POR EL CONSUMISMO DE LAS PERSONAS, LOS RÍOS, MARES Y OCÉANOS SE ESTÁN CONVIRTIENDO EN DEPÓSITOS DE BASURAS Y EL PAISAJE NATURAL ESTÁ DESAPARECIENDO.', 'LAS CIUDADES SON LUGARES MUY DESARROLLADOS, PERO A LA VEZ MUY CONTAMINADOS, ES UN PROBLEMA CAUSADO POR EL CONSUMISMO DE LAS PERSONAS, LOS RÍOS, MARES Y OCÉANOS SE ESTÁN CONVIRTIENDO EN DEPÓSITOS DE BASURAS Y EL PAISAJE NATURAL ESTÁ DESAPARECIENDO.', 'LA CONTAMINACIÓN ESTÁ LLENANDO LAS CALLES Y LAS ZONAS VERDES DE BASURAS, DEMASIADA PUBLICIDAD Y EL RUIDO ES INSOPORTABLE, ES UN PROBLEMA CAUSADO POR EL CONSUMISMO DE LAS PERSONAS, LOS RÍOS, MARES Y OCÉANOS SE ESTÁN CONVIRTIENDO EN DEPÓSITOS DE BASURAS Y EL PAISAJE NATURAL ESTÁ DESAPARECIENDO.', 'LA CONTAMINACIÓN DEL MEDIO AMBIENTE NO SIGNIFICA UNA AMENAZA.', 'NA', 'NA', 'NA', 'REFORZAR GEOGRAFÍA', '../../images/preguntas/klipartz.com (30).png'),
(1028, 3, 4, 5, 347, 'NUESTRO TERRITORIO ESTA DIVIDIDO EN SEIS REGIONES NATURALES: REGIÓN INSULAR, CARIBE, PACIFICA, ANDINA, ORINOQUIA, AMAZONIA. ¿CONOCES ALGUNAS CARACTERÍSTICAS DE NUESTRAS REGIONES NATURALES DE COLOMBIA?  ', 'LOS COSTEÑOS DE LA REGIÓN CARIBE SON PERSONAS ALEGRES, EN LAS ISLAS DE LA REGIÓN INSULAR SON PERSONAS MUY AMABLES, EN LA REGIO PACÍFICA ENCONTRAMOS COMUNIDADES AFROCOLOMBIANAS MUY ALEGRES, EN LA REGIÓN ANDINA SE BAILA EL BAMBUCO Y SANJUANERO, LAS LLANURAS DE LA ORINOQUIA SON HERMOSAS Y LA AMAZONÍA POSEE LA MAYOR RESERVA NATURAL DE LOS COLOMBIANOS.', 'EN LAS SEIS REGIONES NATURALES DE COLOMBIA, LA DIVERSIDAD CULTURAL ES UNA DE LAS MAYORES RIQUEZAS DE LOS COLOMBIANOS.', 'LAS SEIS REGIONES DE COLOMBIA PRESENTAN UNA DIVERSIDAD PLURIÉTNICA Y MULTICULTURAL QUE NOS ENRIQUECE.', 'LAS SEIS REGIONES DE COLOMBIA NO POSEEN UNA GRAN DIVERSIDAD CULTURAL.', 'NA', 'NA', 'NA', 'REFORZAR GEOGRAFÍA', '../../images/preguntas/2027.jpg'),
(1029, 3, 4, 5, 347, '¿QUÉ SABES DE NUESTRO PAÍS? ', 'NUESTRO PAÍS ES UN LUGAR MARAVILLOSO, TIENE PAISAJES ÚNICOS EN EL MUNDO.', 'EN CADA LUGAR DE NUESTRO PAÍS VIVEN PERSONAS QUE TIENE COSTUMBRES Y FORMAS DE SER QUE LAS DIFERENCIAN DE LOS DEMÁS.', 'LOS COLOMBIANOS SOMOS ALEGRES, AMIGABLES Y TRABAJADORES.', 'NINGUNA DE LAS ANTERIORES.', 'NA', 'NA', 'NA', 'REFORZAR GEOGRAFÍA', 'NA'),
(1030, 3, 4, 5, 347, '¿CUÁLES SON LOS BENEFICIOS DEL RECICLAJE? ', 'OBTENEMOS MATERIAS PRIMAS SIN NECESIDAD DE EXTRAER RECURSOS NATURALES.', 'ALGUNAS FAMILIAS SE BENEFICIAN ECONÓMICAMENTE DE SU TRABAJO COMO RECICLADORES.', 'DISMINUIMOS LA TALA DE ÁRBOLES, AL REUTILIZAR EL PAPEL PARA FABRICAR PRODUCTOS NUEVOS. ', 'RECICLAR NO ES UN BENEFICIO PARA EL CUIDADO DEL MEDIO AMBIENTE. ', 'NA', 'NA', 'NA', 'REFORZAR GEOGRAFÍA', '../../images/preguntas/klipartz.com (33).png'),
(1031, 12, 7, 3, 100, 'ELIGE LA OPCIÓN MÁS ADECUADA PARA COMPLETAR LA SIGUIENTE ORACIÓN: I REALLY LIKE THAT BOOK', 'I LIKE IT TOO', 'NA', 'NA', 'NICE JOB', 'I DO NOT KNOW', 'YES, SHE IS', 'NA', 'REFORZAR EXPRESIONES CON ACUERDOS Y DESACUERDOS', '../../images/preguntas/1031,.jpg'),
(1032, 3, 4, 5, 347, 'LA CONTAMINACIÓN ES EL DETERIORO DEL MEDIO AMBIENTE, LA MAYORÍA DE LAS ACTIVIDADES QUE REALIZAN LOS SERES HUMANOS SON LAS CAUSANTES DE ESTE FENÓMENO. ¿CUÁLES SON LOS TIPOS DE CONTAMINACIÓN QUE SE PRESENTAN EN LA ACTUALIDAD?', 'CONTAMINACIÓN DE LOS RECURSOS NATURALES COMO EL AGUA Y EL AIRE.', 'CONTAMINACIÓN VISUAL SE PRESENTAN EN EL ESPACIO PÚBLICO CON EXCESO DE VALLAS PUBLICITARIAS, CARTELES, PANCARTAS QUE ALTERAN NUESTRO AMBIENTE Y ENTORNO VISUAL.', 'CONTAMINACIÓN AUDITIVA SE PRESENTA CUANDO EL RUIDO DE NUESTRO ENTORNO ES MUY ALTO AFECTANDO LA TRANQUILIDAD Y SALUD DE LAS PERSONAS, LAS INDUSTRIAS, AUTOMÓVILES, MÚSICA A MUY ALTO VOLUMEN SON LA CAUSA DE ESTE FENÓMENO.', 'LA CONTAMINACIÓN DE BOSQUES, MARES Y RESERVAS NATURALES.', 'NA', 'NA', 'NA', 'REFORZAR GEOGRAFÍA', '../../images/preguntas/klipartz.com (35).png'),
(1033, 6, 4, 3, 327, 'LOS HUMANOS VIVIMOS EN EL PLANETA TIERRA. EN ELLA HABITAMOS CON MUCHAS OTRAS ESPECIES DE ANIMALES Y PLANTAS, Y OBTENEMOS TODO LO QUE NECESITAMOS PARA PODER EXISTIR. ¿CÓMO CREES QUE SE VE LA TIERRA DESDE EL ESPACIO Y QUE NOS OFRECE PARA QUE PODAMOS VIVIR? SELECCIONA LA RESPUESTA CORRECTA:  ', 'EL PLANETA TIERRA SE VE REDONDO Y AZUL DESDE EL ESPACIO ES EL ÚNICO PLANETA DONDE SE HA ENCONTRADO VIDA POSEE CONDICIONES APROPIADAS PARA QUE PUEDAN VIVIR LOS SERES HUMANOS, ANIMALES Y PLANTAS. ', 'NA', 'NA', 'EL PLANETA TIERRA SE VE COMO UNA INMENSA LLANURA EN EL ESPACIO Y POSEE AGUA Y ROCAS.', 'EL PLANETA TIERRA SE VE REDONDO Y DE COLOR VERDE DESDE EL ESPACIO, NOS OFRECE SUELO FIRME, AGUA Y OXÍGENO A LOS SERES HUMANOS ANIMALES Y PLANTAS.', 'EL PLANETA TIERRA SE VE REDONDO Y AMARILLA DESDE EL ESPACIO, NOS OFRECE AGUA Y ALIMENTOS PARA VIVIR A LOS SERES HUMANOS ANIMALES Y PLANTAS. ', 'NA', 'REFORZAR GEOGRAFÍA', '../../images/preguntas/Presentación1.jpg'),
(1034, 6, 4, 5, 327, 'ESTAMOS DESTRUYENDO LOS RECURSOS NATURALES. EN MUCHOS LUGARES DE NUESTRO PLANETA, EL SUELO SE ESTÁ VOLVIENDO UN DESIERTO, EL AGUA ESCASEA, Y EL AIRE NO SE PUEDE RESPIRAR.  NUESTRA MADRE TIERRA NOS ESTÁ DEJANDO UN MENSAJE DE ALERTA. ¿QUÉ CREES QUE PASARA CON NUESTRO PLANETA SI NO CAMBIAMOS PRONTO NUESTRO COMPORTAMIENTO DESTRUCTIVO CON LOS RECURSOS NATURALES?  ', 'DESAPARECERÁN LOS BOSQUES, SE SECARÁN Y AGOTARAN LAS FUENTES HÍDRICAS DE AGUA DULCE, AUMENTARÁ EL DESHIELO EN LOS GLACIARES, SE AGOTARÁN LOS RECURSOS NO RENOVABLES Y DESAPAREARAN DIFERENTES ESPECIES DE ANIMALES Y PLANTAS.', 'DESAPARECERÁN LOS BOSQUES, SE SECARÁN Y AGOTARAN LAS FUENTES HÍDRICAS DE AGUA DULCE, AUMENTARÁ EL DESHIELO EN LOS GLACIARES, SE AGOTARÁN LOS RECURSOS NO RENOVABLES Y DESAPARECERÁN DIFERENTES ESPECIES DE ANIMALES.', 'DESAPARECERÁN LOS BOSQUES, SE SECARÁN Y AGOTARÁN LAS FUENTES HÍDRICAS DE AGUA DULCE, AUMENTARÁ EL DESHIELO EN LOS GLACIARES, SE AGOTARÁN LOS RECURSOS NO RENOVABLES, CRECERÁ EL AUMENTO DESMEDIDO DE CONTAMINACIÓN DE NUESTRO PLANETA, DESAPARECERÁN DIFERENTES ESPECIES DE ANIMALES Y PANTAS.', 'NO PASARA NADA, NO DEBEMOS PREOCUPARNOS. ', 'NA', 'NA', 'NA', 'REFORZAR GEOGRAFÍA', '../../images/preguntas/4.jpg'),
(1035, 6, 4, 5, 327, '¿QUÉ ACCIONES CONCRETAS, PODRÍAS REALIZAR PARA AYUDAR A ALIVIAR LOS PROBLEMAS QUE LOS SERES HUMANOS CAUSAMOS A LOS RECURSOS NATURALES? ', 'UTILIZACIÓN DE ENERGÍAS LIMPIAS COMO LA ENERGÍA SOLAR O EÓLICA, REDUCIR EL USO DE AEROSOLES Y GASES CONTAMINANTES, MAYOR UTILIZACIÓN DE LA BICICLETA, PROHIBIR LA DEFORESTACIÓN DE BOSQUES Y SELVAS TROPICALES, RECICLAR Y REUTILIZAR.', 'UTILIZACIÓN DE ENERGÍAS LIMPIAS COMO LA ENERGÍA SOLAR O EÓLICA, REDUCIR EL USO DE AEROSOLES Y GASES CONTAMINANTES, NO A LA DEFORESTACIÓN DE BOSQUES Y SELVAS TROPICALES, RECICLAR.', 'UTILIZACIÓN DE ENERGÍAS LIMPIAS COMO LA ENERGÍA SOLAR O EÓLICA, REDUCIR EL USO DE AEROSOLES Y GASES CONTAMINANTES, MAYOR UTILIZACIÓN DE LA BICICLETA. PROHIBIR LA DEFORESTACIÓN DE SELVAS TROPICALES.', 'SEGUIR UTILIZANDO PETRÓLEO, CARBÓN COMO FUENTES DE ENERGÍA, NO USAR LA BICICLETA Y USAR MÁS EL CARRO.', 'NA', 'NA', 'NA', 'REFORZAR GEOGRAFÍA', '../../images/preguntas/5.jpg'),
(1036, 6, 4, 3, 327, 'EN LA TIERRA ENCONTRAMOS LUGARES DONDE LOS DÍAS SON SOLEADOS Y LAS PERSONAS VISTEN CON ROPA CÓMODA Y FRESCA, EXISTEN LUGARES DONDE HACE BASTANTE FRIO Y REGIONES DONDE LLUEVE BASTANTE.  ¿POR QUÉ CREES QUE ES IMPORTANTE PARA LOS SERES HUMANOS QUE LA TIERRA TENGA REGIONES CON DIFERENTES CLIMAS? SELECCIONA LA RESPUESTA CORRECTA: ', 'LOS SERES HUMANOS SE HAN RELACIONADO CON ELEMENTOS NATURALES COMO EL SUELO, LA FAUNA, LA VEGETACIÓN Y EL CLIMA PARA TENER UN NIVEL DE VIDA ÓPTIMO, DE AQUÍ LA IMPORTANCIA DEL TIPO CLIMA EN LAS ACTIVIDADES HUMANAS ES EVIDENTE EN LA AGRICULTURA, LA FORMA DE VESTIR Y LA PRODUCCIÓN DE ENERGÍA. ', 'NA', 'NA', 'LOS SERES HUMANOS SE HAN RELACIONADO CON ELEMENTOS NATURALES COMO EL SUELO, LA FAUNA, LA VEGETACIÓN Y EL CLIMA PARA TENER UN NIVEL COMPLETO.', 'LA IMPORTANCIA DEL CLIMA EN LAS ACTIVIDADES HUMANAS ES EVIDENTE EN LA AGRICULTURA, LA FORMA DE VESTIR.', 'LOS TIPOS DE CLIMA SON IMPORTANTES EN CADA REGIÓN PARA DETERMINAR QUÉ TIPO DE INDUMENTARIA O VESTIDO DEBEN USAR LOS SERES HUMANOS.', 'NA', 'REFORZAR GEOGRAFÍA', '../../images/preguntas/6.jpg'),
(1037, 6, 4, 3, 327, 'COLOMBIA ESTÁ DIVIDIDA EN SEIS REGIONES NATURALES CON DIFERENTES CARACTERÍSTICAS PROPIAS DEL RELIEVE, HIDROGRAFÍA, CLIMA, ECONOMÍA Y POBLACIÓN. ¿CUÁLES SON ESTAS REGIONES QUE CORRESPONDEN A NUESTRO PAÍS COLOMBIA? SELECCIONA LA RESPUESTA CORRECTA: ', 'REGIÓN CARIBE, REGIÓN ANDINA, REGIÓN ORINOQUIA, REGIÓN INSULAR, REGIÓN AMAZONIA Y REGIÓN PACÍFICA.', 'NA', 'NA', 'REGIÓN ORINOQUIA, REGIÓN INSULAR, REGIÓN AMAZONIA Y REGIÓN PACÍFICA.', 'REGIÓN CARIBE, REGIÓN INSULAR, REGIÓN AMAZONIA Y REGIÓN PACÍFICA.', 'REGIÓN CARIBE, REGIÓN ANDINA, REGIÓN ORINOQUIA, REGIÓN AMAZONIA Y REGIÓN PACÍFICA.', 'NA', 'REFORZAR GEOGRAFÍA', '../../images/preguntas/7.jpg'),
(1038, 6, 4, 5, 327, '¿POR QUÉ CREES QUE ES IMPORTANTE PARA NUESTRO PAÍS QUE TENGA VARIAS REGIONES NATURALES? ', 'EN LAS REGIONES NATURALES ENCONTRAMOS ELEMENTOS SIMILARES COMO EL RELIEVE, EL SUELO, EL CLIMA Y LA HIDROGRAFÍA. TAMBIÉN POSEEN UNA BIODIVERSIDAD SIMILAR, ES DECIR ESPECIES ANIMALES Y VEGETALES EN DIVERSOS ECOSISTEMAS QUE SE RELACIONAN CON SU TERRITORIO, EN CADA UNA DE LAS REGIONES SE UBICAN GRUPOS DE HUMANOS CON DISTINTOS RASGOS CULTURALES PARTICULARES.', 'ES IMPORTANTE PORQUE EN CADA UNA DE LAS REGIONES SE UBICAN GRUPOS DE HUMANOS CON DISTINTOS RASGOS CULTURALES PARTICULARES.', 'ES MUY IMPORTANTE PORQUE EN LAS REGIONES NATURALES ENCONTRAMOS ELEMENTOS SIMILARES COMO EL RELIEVE, EL SUELO, EL CLIMA Y LA HIDROGRAFÍA. TAMBIÉN POSEEN UNA BIODIVERSIDAD SIMILAR, ES DECIR ESPECIES ANIMALES Y VEGETALES EN DIVERSOS ECOSISTEMAS QUE SE RELACIONAN CON SU TERRITORIO.', 'TODAS LAS REGIONES SON IGUALES CULTURALMENTE CON RASGOS SIMILARES.', 'NA', 'NA', 'NA', 'REFORZAR GEOGRAFÍA', '../../images/preguntas/8.jpg'),
(1039, 6, 4, 5, 328, 'LA ECONOMÍA DE TU FAMILIA DEPENDE DE LAS NECESIDADES DE LOS INTEGRANTES DEL HOGAR, DEL TRABAJO, DE TUS PADRES Y EL DINERO QUE SE OBTIENE PARA COMPRAR LOS ALIMENTOS Y OBTENER LOS SERVICIOS BÁSICOS. ¿CUÁLES SON LOS PRODUCTOS Y SERVICIOS QUE SE CONSUMEN A DIARIO EN TU CASA Y PORQUE ES IMPORTANTE EL TRABAJO QUE REALIZAN TUS PADRES? ', 'LA EDUCACIÓN, SALUD, PRODUCTOS DE LA CANASTA FAMILIAR Y TRANSPORTE SON GASTOS FAMILIARES SE PAGAN CON EL INGRESO FAMILIAR, QUE ES LA CANTIDAD DE DINERO QUE REÚNE TU FAMILIA EN UN PERIODO DETERMINADO. GENERALMENTE SE OBTIENE DEL SALARIO O REMUNERACIÓN POR EL TRABAJO QUE REALIZAN TUS PADRES U OTROS FAMILIARES. ', 'LOS PRODUCTOS DE LA CANASTA FAMILIAR, VESTUARIO, ALIMENTOS Y TRANSPORTE SON LOS GASTOS FAMILIARES SE PAGAN CON EL INGRESO FAMILIAR, QUE ES LA CANTIDAD DE DINERO QUE REÚNE TU FAMILIA EN UN PERIODO DETERMINADO. GENERALMENTE SE OBTIENE DEL SALARIO O REMUNERACIÓN POR EL TRABAJO QUE REALIZAN TUS PADRES U OTROS FAMILIARES.', 'LOS PRODUCTOS DE LA CANASTA FAMILIAR Y TRANSPORTE. LOS GASTOS FAMILIARES SE PAGAN CON EL INGRESO FAMILIAR, QUE ES LA CANTIDAD DE DINERO QUE REÚNE TU FAMILIA EN UN PERIODO DETERMINADO. GENERALMENTE SE OBTIENE DEL SALARIO O REMUNERACIÓN POR EL TRABAJO QUE REALIZAN TUS PADRES.', 'TODOS LOS PRODUCTOS DEL HOGAR SE REALIZAN CON AYUDAS DE DINERO DEL GOBIERNO EN UN PERIODO DETERMINADO QUE GENERALMENTE RECIBEN TUS PADRES. ', 'NA', 'NA', 'NA', 'REFORZAR SOCIOLOGÍA', '../../images/preguntas/9.jpg'),
(1040, 6, 4, 3, 328, 'ASÍ COMO EN TU CASA Y EN TU COLEGIO HAY PERSONAS ENCARGADAS DE TOMAS LAS DECISIONES IMPORTANTES, EN LOS DISTINTOS LUGARES DEL PAÍS EXISTEN AUTORIDADES ¿CUÁL DE LAS SIGUIENTES OPCIONES ES LA CORRECTA? ESTAS AUTORIDADES SON: ', 'EL PRESIDENTE DE LA REPÚBLICA, ALCALDES, GOBERNADORES, JUNTAS DE ACCIÓN COMUNAL Y LOS CABILDOS INDÍGENAS.', 'NA', 'NA', 'LOS JUECES, SENADORES, EMPRESARIOS, RECTORES.', 'LOS ABOGADOS, POLÍTICOS, EMPRESARIOS, LÍDERES, CABILDOS Y JUNTAS DE ACCIÓN COMUNAL.', 'NINGUNA DE LAS ANTERIORES.', 'NA', 'REFORZAR SOCIOLOGÍA', '../../images/preguntas/10.jpg'),
(1041, 6, 4, 5, 328, 'PARA QUE TODOS LOS MIEMBROS DE LA COMUNIDAD PODAMOS VIVIR TRANQUILOS Y EN PAZ, ES INDISPENSABLE CUMPLIR CON NUESTROS DEBERES Y EXIGIR EL CUMPLIMIENTO DE NUESTROS DERECHOS. ¿LOS DEBERES SON IGUALES DE IMPORTANTES A LOS DERECHOS EN NUESTRA VIDA DIARIA? ', 'SI, CUANDO CUMPLIMOS NUESTROS DEBERES, NUESTRA FAMILIA Y COMUNIDAD ES MÁS ORGANIZADA, TUS DEBERES SE RELACIONAN CONTIGO MISMO PORQUE DEBES RESPETARTE, CUIDAR TU SALUD, CUIDAR A TU FAMILIA Y OBEDECER A TUS PADRES. LOS DERECHOS PROTEGEN NUESTRA DIGNIDAD HUMANA PARA DESARRÓLLANOS PLENAMENTE Y EN UNA CONVIVENCIA PACÍFICA.', 'SI, LOS DEBERES SON IMPORTANTES CONTIGO MISMO PORQUE DEBES RESPETARTE, CUIDAR TU SALUD, CUIDAR A TU FAMILIA Y OBEDECER A TUS PADRES, LOS DERECHOS NOS REPRESENTAN.', 'SON IMPORTANTES PARA DESARROLLARNOS PLENAMENTE, PORQUE LOS DERECHOS TE PROTEGEN Y LOS DEBERES SON CON TIGO MISMO Y TU FAMILIA.', 'SOLAMENTE SON IMPORTANTES NUESTROS DERECHOS. ', 'NA', 'NA', 'NA', 'REFORZAR SOCIOLOGÍA', '../../images/preguntas/11.jpg'),
(1042, 6, 4, 5, 328, '¿CUÁLES SON LAS INSTITUCIONES MUNDIALES Y NACIONALES QUE PROTEGEN TUS DERECHOS EN COLOMBIA? ', 'MUNDIALES (LA ONU, UNICEF). NACIONALES: (ICBF, COMISARIAS DE FAMILIA, LA DEFENSORÍA DEL PUEBLO, LAS SECRETARIAS DE DESARROLLO E INTEGRACIÓN SOCIAL, FUNDACIONES ESPECIALIZADAS EN LA PROTECCIÓN DE LOS NIÑOS).', 'MUNDIALES (LA ONU). NACIONALES: (ICBF, LAS SECRETARIAS DE DESARROLLO E INTEGRACIÓN SOCIAL, FUNDACIONES ESPECIALIZADAS EN LA PROTECCIÓN DE LOS NIÑOS).', 'MUNDIALES (LA ONU, UNICEF). NACIONALES: (ICBF, COMISARIAS DE FAMILIA, LA DEFENSORÍA DEL PUEBLO, SECRETARIAS DE DESARROLLO E INTEGRACIÓN SOCIAL, FUNDACIONES ESPECIALIZADAS EN LA PROTECCIÓN DE LOS NIÑOS).', 'MUNDIALES (FUNDACIÓN MUNDIAL PARA LOS NIÑOS). NACIONALES: (COMISARIAS NACIONALES, SECRETARIAS DE DESARROLLO E INTEGRACIÓN SOCIAL).', 'NA', 'NA', 'NA', 'REFORZAR SOCIOLOGÍA', '../../images/preguntas/12.jpg'),
(1043, 12, 9, 3, 223, 'SI PUDIERAS ILUMINAR UN INSECTO CON DIFERENTES TIPOS DE LUZ COMO UN BOMBILLO DE LUZ BLANCA, LUZ AZUL O LUZ NEGRA, ESTOS SE VERÍAN DE DIFERENTES COLORES SEGÚN EL COLOR DE LA LUZ. TENIENDO ESTO EN CUENTA ¿POR QUÉ PODEMOS AFIRMAR QUE EL COLOR NO EXISTE TAL COMO LO CONOCEMOS Y QUE ESTE DEPENDE DE LA LUZ QUE ILUMINA TODO LO QUE OBSERVAMOS?', 'PORQUE LOS SERES HUMANOS SOLO PERCIBIMOS UN RANGO PEQUEÑO DE LUZ Y AL SER UNA SENSACIÓN DE NUESTRO CEREBRO PUEDEN VARIAR', 'NA', 'NA', 'PORQUE EL COLOR VARÍA SEGÚN CONDICIONES DE TEMPERATURA', 'PORQUE LAS CONDICIONES GEOGRÁFICAS DEL LUGAR EN EL QUE ME ENCUENTRO MODIFICAN LAS PROPIEDADES DE LOS MATERIALES', 'PORQUE LOS COLORES DEPENDEN DE LA HORA DEL DÍA EN QUE SE PUEDAN OBSERVAR', 'NA', 'REFORZAR DISEÑO GRÁFICO', '../../images/preguntas/img_coloryuz.jpg'),
(1044, 12, 9, 3, 223, '¿POR QUÉ ES IMPORTANTE USAR TIPOS DE FUENTES ADECUADAS Y NO EXCEDER LA CANTIDAD UTILIZADA?', 'PORQUE PERMITE TRANSMITIR MEJOR EL MENSAJE DE MANERA LEGIBLE SIN SATURAR A LA PERSONA QUE VE EL CONTENIDO', 'NA', 'NA', 'NO ES IMPORTANTE PORQUE SE PUEDEN UTILIZAR DEMASIADAS FUENTES Y NO AFECTARÁ A LA PERSONA QUE VE EL CONTENIDO', 'PORQUE LAS FUENTES DEPENDEN DEL COLOR Y PERMITEN MEJORAR DETERMINADO CONTENIDO', 'PORQUE ES UNA NORMATIVA QUE SE DEBE CUMPLIR', 'NA', 'REFORZAR DISEÑO GRÁFICO', '../../images/preguntas/img_fuentes.jpg'),
(1045, 12, 9, 3, 223, 'SON COLORES PRIMARIOS Y NO SE PUEDEN GENERAR POR LA COMBINACIÓN DE OTROS COLORES:', 'AZUL, ROJO Y AMARILLO', 'NA', 'NA', 'AMARILLO, AZUL Y VERDE', 'NARANJA, VERDE Y MORADO', 'ROJO, AMARILLO Y MAGENTA', 'NA', 'REFORZAR DISEÑO GRÁFICO', '../../images/preguntas/img_colores.jpg'),
(1046, 12, 9, 3, 222, '¿CUÁL ES LA DIFERENCIA ENTRE INTERNET Y WEB?', 'LA INTERNET ES UNA GRAN CANTIDAD DE COMPUTADORAS CONECTADAS A NIVEL MUNDIAL Y LA WEB CORRESPONDE A LAS PÁGINAS WEB SE CONECTAN POR MEDIO DE LA RED DE REDES', 'NA', 'NA', 'INTERNET ES LA BASE DE LAS CONEXIONES Y LA WEB UN DISPOSITIVO PARA COMPARTIR ARCHIVOS DE GRAN TAMAÑO', 'LA INTERNET Y LA WEB SON LOS MISMO, SOLO CAMBIA EL NOMBRE', 'LA INTERNET CORRESPONDE A LAS PÁGINAS WEB QUE TRANSITAN Y SE PUEDEN VISUALIZAR POR MEDIO DE LA WEB Y ESTAS DEPENDEN DE LA VELOCIDAD DE CONEXIÓN', 'NA', 'REFORZAR LA WEB', 'NA'),
(1047, 12, 9, 3, 222, '¿PARA QUÉ SIRVE LA WEB?', 'LA WEB NOS PERMITE ACCEDER A LAS DIFERENTES PÁGINAS WEB Y ESTAS SE CONECTAN ENTRE SÍ POR ENLACES LLAMADOS HIPERTEXTO', 'NA', 'NA', 'LA WEB NOS PERMITE ACCEDER A TODA LA INFORMACIÓN DE LAS PÁGINAS Y ES UN PROTOCOLO FACILITA LA DESCARGA DE INFORMACIÓN EN INTERNET', 'LA WEB DIFICULTA EL ACCESO A INTERNET YA QUE SIEMPRE SE DEBE REALIZAR POR MEDIO DE LA WORLD WIDE WEB', 'PERMITE EL INGRESO A INFORMACIÓN EN DIFERENTES PARTES DEL MUNDO', 'NA', 'REFORZAR LA WEB', 'NA'),
(1048, 12, 9, 3, 222, 'LOS SITIOS WEB QUE ENCONTRAMOS EN INTERNET NECESITAN DE UN SERVICIO DE ALMACENAMIENTO PARA PODER VISUALIZARSE, ESTO SE HACE GRACIAS AL SERVICIO DE:', 'HOSTING', 'NA', 'NA', 'DOMINIO', 'ESPACIO DE ALMACENAMIENTO EN LA NUBE', 'DISEÑO WEB', 'NA', 'REFORZAR LA WEB', 'NA'),
(1049, 12, 9, 3, 222, 'LA WEB SEMÁNTICA HACE REFERENCIA A:', 'LA WEB POTENCIADA EN LA QUE SE PUEDEN CONSULTAR E INTERCAMBIAR INFORMACIÓN POR MEDIO DE SIGNIFICADOS QUE PUEDEN INTERPRETARSE POR SERES HUMANOS Y COMPUTADORAS PARA FACILITAR EL ACCESO A LA INFORMACIÓN', 'NA', 'NA', 'UNA WEB EN LA QUE LOS CONTENIDOS DEBEN COMPARTIRSE TENIENDO EN CUENTA REGLAS DE ORTOGRAFÍA Y GRAMÁTICA', 'ES LA WEB QUE CORRIGE ERRORES EN EL ACCESO A LA INFORMACIÓN Y FACILITA EL ALMACENAMIENTO DE GRANDES VOLÚMENES DE INFORMACIÓN', 'UN CONJUNTO DE PÁGINAS QUE MUESTRAN CONTENIDOS SOBRE EL SIGNIFICADO DE LAS PALABRAS Y SIGNOS LINGÜÍSTICOS', 'NA', 'REFORZAR LA WEB', 'NA'),
(1050, 12, 9, 3, 224, '¿PARA QUÉ SIRVE LA PROGRAMACIÓN WEB?', 'PERMITE CREAR PÁGINAS WEB POR MEDIO DE LENGUAJES DE PROGRAMACIÓN WEB', 'NA', 'NA', 'PERMITE DISEÑAR Y CREAR SITIOS WEB CON HERRAMIENTAS DE DISEÑO Y GENERADAS POR MEDIO DE HTML', 'SIRVE PARA ALMACENAR PÁGINAS WEB DE GRAN TAMAÑO EN SERVIDORES', 'SIRVE PARA COMPARTIR INFORMACIÓN A TRAVÉS DE LA WEB DE MANERA SEGURA', 'NA', 'REFORZAR PROGRAMACIÓN WEB: HTML Y CSS', 'NA'),
(1051, 12, 9, 3, 224, '¿PARA QUÉ SIRVE EL DISEÑO WEB?', 'PERMITE EL DISEÑO DE PÁGINAS WEB DESDE LO VISUAL PARA LA PLANEACIÓN Y PRESENTACIÓN DE LOS CONTENIDOS DE LA MISMA', 'NA', 'NA', 'PERMITE CREAR PÁGINAS WEB CON LENGUAJES DE PROGRAMACIÓN COMO HTML Y CSS', 'FACILITA LA CONEXIÓN ENTRE USUARIOS Y DISPOSITIVOS POR MEDIO DE PROGRAMACIÓN WEB', 'SIRVE PARA INTERCAMBIAR INFORMACIÓN RELACIONADA CON EL DISEÑO GRÁFICO', 'NA', 'REFORZAR PROGRAMACIÓN WEB: HTML Y CSS', 'NA'),
(1052, 12, 9, 3, 224, 'HTML ES UN LENGUAJE DE MARCAS DE HIPERTEXTO QUE PERMITE:', 'ESTRUCTURAR LOS CONTENIDOS DESDE LAS PÁGINAS WEB POR MEDIO DE ETIQUETAS', 'NA', 'NA', 'GENERAR PÁGINAS WEB LLAMATIVAS CON UN DISEÑO AGRADABLE PARA EL USUARIO', 'DISEÑAR LOS CONTENIDOS QUE DEBEN IR DENTRO DE LAS PÁGINAS WEB PARA NO SATURAR AL USUARIO', 'COMPARTIR INFORMACIÓN POR MEDIO DE DIFERENTES MEDIOS DE MANERA ÁGIL Y SEGURA', 'NA', 'REFORZAR PROGRAMACIÓN WEB: HTML Y CSS', 'NA'),
(1053, 12, 9, 3, 224, 'CSS ES UN LENGUAJE DE HOJAS DE ESTILO CUYA FUNCIÓN ES:', 'ORDENAR, UBICAR Y MEJORAR VISUALMENTE LOS CONTENIDOS CREADOS PREVIAMENTE CON HTML, POR LO TANTO ESTÁ ORIENTADO AL DISEÑO', 'NA', 'NA', 'GENERAR ETIQUETAS SEMÁNTICAS QUE ESTRUCTUREN EL CONTENIDO DE LAS PÁGINAS WEB Y QUE NO SERÁ VISTO POR EL USUARIO', 'CREAR DIFERENTES HOJAS PARA ALMACENAR INFORMACIÓN CON ESTILOS LLAMATIVOS AL USUARIO', 'GUIAR AL USUARIO POR LAS DIFERENTES SECCIONES DE UNA PÁGINA WEB', 'NA', 'REFORZAR PROGRAMACIÓN WEB: HTML Y CSS', 'NA'),
(1054, 12, 9, 3, 224, '¿POR QUÉ NO ES ACONSEJABLE UTILIZAR PLATAFORMAS WEB COMO WIX, WEEBLY O WEBFLOW PARA EL DESARROLLO Y CREACIÓN DE PÁGINA WEB?', 'PORQUE GENERA CÓDIGO “BASURA” HACIÉNDOLA PESADA Y LENTA, LIMITA LAS OPCIONES DE PERSONALIZACIÓN Y ESCALABILIDAD, NO PERMITE MIGRAR EL CONTENIDO DE PÁGINAS WEB', 'NA', 'NA', 'PORQUE ES GRATUITA Y LAS PÁGINAS WEB GRATUITAS NO SE DEBE UTILIZAR', 'PORQUE SON PÁGINAS MUY DIFÍCILES DE MANEJAR Y SE DEBEN TENER CONOCIMIENTOS AVANZADOS EN PROGRAMACIÓN WEB', 'PORQUE NO PERMITE AÑADIR SECCIONES A LAS PÁGINAS WEB Y NO SE PUEDEN ADMINISTRAR', 'NA', 'REFORZAR PROGRAMACIÓN WEB: HTML Y CSS', 'NA'),
(1055, 12, 9, 3, 221, 'LA TECNOLOGÍA HA PERMITIDO AL HOMBRE SOBREVIVIR Y MEJORAR SUS CONDICIONES DE VIDA YA QUE:', 'SIN ELLA EL SER HUMANO NO PODRÍA SOBREVIVIR Y LLEGAR A SER LO QUE CONOCEMOS HOY', 'NA', 'NA', 'HA SIDO CREADA POR EL SER HUMANO, PERO PUEDE VIVIR SIN AYUDA DE ESTA', 'LA TECNOLOGÍA DEPENDE SOLAMENTE DE APARATOS Y ARTEFACTOS TECNOLÓGICOS', 'LA TECNOLOGÍA ESTÁ AL SERVICIO DEL SER HUMANO PERO NO LA HA CONTROLADO EN SU TOTALIDAD', 'NA', 'REFORZAR NATURALEZA Y EVOLUCIÓN DE LA TECNOLOGÍA', 'NA'),
(1056, 12, 9, 3, 221, '¿LA TECNOLOGÍA HACE REFERENCIA SOLO A APARATOS Y DISPOSITIVOS TECNOLÓGICOS NOVEDOSOS?', 'NO, LA TECNOLOGÍA ABARCA MÁS QUE ARTEFACTOS, INVOLUCRA EL CONOCIMIENTO, PROCESOS Y HABILIDADES TÉCNICAS', 'NA', 'NA', 'SÍ, LA TECNOLOGÍA SOLO ABARCA DISPOSITIVOS TANGIBLES Y HACE REFERENCIA A LAS ÚLTIMAS INNOVACIONES EN TECNOLOGÍA', 'NO, LA TECNOLOGÍA ABARCA TANTO ARTEFACTOS TANGIBLES COMO INTANGIBLES PERO NO INVOLUCRA EL CONOCIMIENTO', 'SÍ, LA TECNOLOGÍA ABARCA DISPOSITIVOS, ARTEFACTOS, INNOVACIONES, Y ALGUNOS CONOCIMIENTOS CIENTÍFICOS', 'NA', 'REFORZAR NATURALEZA Y EVOLUCIÓN DE LA TECNOLOGÍA', 'NA'),
(1057, 12, 9, 3, 221, '¿EN QUÉ SE DIFERENCIA LA TECNOLOGÍA DE LA CIENCIA?', 'LA CIENCIA PERMITE ENTENDER Y EXPLICAR EL MUNDO NATURAL, MIENTRAS QUE LA TECNOLOGÍA AYUDA AL SER HUMANO A MODIFICARLO PARA SATISFACER SUS NECESIDADES', 'NA', 'NA', 'LA TECNOLOGÍA Y LA CIENCIA HACEN REFERENCIA A LO MISMO, NO HAY DIFERENCIA', 'LA TECNOLOGÍA PERMITE ENTENDER EL MUNDO MIENTRAS QUE LA CIENCIA LO MODIFICA PARA SATISFACER SUS NECESIDADES', 'LA TECNOLOGÍA SE ENFOCA EN LAS INNOVACIONES TECNOLÓGICAS MIENTRAS QUE LA CIENCIA SE ENCARGA DE LOS AVANCES EN MEDICINA', 'NA', 'REFORZAR NATURALEZA Y EVOLUCIÓN DE LA TECNOLOGÍA', 'NA'),
(1058, 11, 9, 3, 112, 'LA LÓGICA DE PROGRAMACIÓN SE PUEDE ENTENDER COMO:', 'LA ORGANIZACIÓN DE INSTRUCCIONES DE MANERA COHERENTE PARA DAR SOLUCIÓN A UN PROBLEMA', 'NA', 'NA', 'UNA CLASIFICACIÓN Y TIPOS DE ALGORITMOS', 'ES UN LENGUAJE DE PROGRAMACIÓN QUE ESTÁ ORIENTADO A LA WEB', 'ES UNA FASE QUE PERMITE CREAR PROGRAMAS PARA COMPUTADOR CON AYUDA DE HERRAMIENTAS INFORMÁTICOS', 'NA', 'REFORZAR PROGRAMACIÓN', '../../images/preguntas/img_logic.jpg'),
(1059, 11, 9, 3, 112, 'UN DATO ES:', 'ES LA REPRESENTACIÓN DE UN ATRIBUTO O VARIABLE DE MANERA SIMBÓLICA QUE NO HA SIDO PROCESADA', 'NA', 'NA', 'UNA VARIABLE QUE PERMITE REALIZAR OPERACIONES ENTRE NÚMEROS PARA LLEGAR A UN RESULTADO', 'ES INFORMACIÓN PROCESADA PREVIAMENTE QUE REPRESENTA VARIABLES PARA DAR SOLUCIÓN A UN PROBLEMA', 'ES INFORMACIÓN QUE PREVIAMENTE SE HA PROCESADO EN UN ORDENADOR Y QUE ESTÁ LISTA PARA MOSTRARSE A UN USUARIO', 'NA', 'REFORZAR PROGRAMACIÓN', 'NA'),
(1060, 11, 9, 3, 112, '¿QUÉ ES LA INFORMACIÓN?', 'CORRESPONDE A UN CONJUNTO DE DATOS QUE HAN SIDO PROCESADOS Y ANALIZADOS', 'NA', 'NA', 'ES UN TIPO DE DATO SIN PROCESAR QUE REQUIERE SER ANALIZADO PARA PODER UTILIZARSE', 'ES UN CONJUNTO DE DOCUMENTOS QUE HAN SIDO ALMACENADOS EN MEDIOS DIGITALES', 'SON ARCHIVOS SEPARADOS QUE EN CONJUNTO CONFORMAN DATOS', 'NA', 'REFORZAR PROGRAMACIÓN', 'NA'),
(1061, 11, 9, 3, 112, 'EL SISTEMA BINARIO HACE REFERENCIA A:', 'UN SISTEMA DE NUMERACIÓN QUE PUEDE TOMAR DOS DÍGITOS QUE SON EL UNO Y EL CERO, INDICAN AUSENCIA O PRESENCIA DE INFORMACIÓN', 'NA', 'NA', 'ES UN SISTEMA QUE UTILIZA NÚMEROS PARES PARA REPRESENTAR INFORMACIÓN AL USUARIO', 'UNA MANERA DE ORGANIZAR GRANDES VOLÚMENES DE INFORMACIÓN EN UN COMPUTADOR', 'UNA SECUENCIA DE DATOS NUMÉRICOS QUE INDICAN CUANDO UN ORDENADOR ESTÁ ENCENDIDO O APAGADO', 'NA', 'REFORZAR PROGRAMACIÓN', 'NA'),
(1063, 19, 0, 2, 348, 'DISPONES DE DOS PÁGINAS WEB, ´INICIO.HTML´ Y ´CONTACTO.HTML´ Y QUIERES CREAR UN ENLACE EN ´INICIO.HTML´ DIRIGIDO A ´CONTACTO.HTML´ CON EL TEXTO ´DATOS DE CONTACTO´. ESCRIBE EL CÓDIGO HTML NECESARIO PARA CREAR ESE ENLACE. (ESCRIBA TODO EN MAYÚSCULA)', '<A HREF=´CONTACTO.HTML´>DATOS DE CONTACTO</A>', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR HTML5', '../../images/preguntas/html5/espacios_blanco.jpg'),
(1064, 19, 0, 3, 348, '¿CUÁL DE LOS SIGUIENTES DOCTYPE ES EL QUE UTILIZARÍAS PARA UN DOCUMENTO HTML5?', '&lt;!DOCTYPE HTML&gt;', 'NA', 'NA', '&lt;!DOCTYPE HTML PUBLIC ´-//W3C//DTD HTML 5.0 TRANSITIONAL//EN´&gt;', '&lt;!DOCTYPE HTML5&gt;', '&lt;!DOCTYPE HTML PUBLIC ´-//W3C//DTD HTML 5.0 TRANSITIONAL//ES´&gt;', 'NA', 'REFORZAR HTML5', '../../images/preguntas/html5/comillas.jpg'),
(1065, 19, 0, 3, 348, 'SELECCIONA EL ELEMENTO EN EL CUÁL INCLUIRÍAS LOS LINKS DE LA NAVEGACIÓN PRIMARIA DE UN SITIO:', '&lt;NAV&gt;', 'NA', 'NA', '&lt;HEADER&gt;', '&lt;MENU&gt;', '&lt;SECTION&gt;', 'NA', 'REFORZAR HTML5', 'NA'),
(1066, 19, 0, 3, 348, '¿CUÁL DE LOS SIGUIENTES USOS DEL ELEMENTO &lt;SCRIPT&gt; TE PARECE EL MÁS APROPIADO?', '&lt;SCRIPT SRC=´ARCHIVO.JS´&gt;&lt;/SCRIPT&gt;', 'NA', 'NA', '&lt;SCRIPT SRC=´ARCHIVO.JS´ /&gt;', '&lt;SCRIPT TYPE=´TEXT/JAVASCRIPT´ SRC=´ARCHIVO.JS´&gt;&lt;/SCRIPT&gt;', '&lt;SCRIPT SRC=´ARCHIVO.JS´&gt;', 'NA', 'REFORZAR HTML5', '../../images/preguntas/html5/comillas.jpg'),
(1067, 19, 0, 3, 348, 'SELECCIONA EL ELEMENTO INVÁLIDO:', '&lt;POST&gt;', 'NA', 'NA', '&lt;METER&gt;', '&lt;HGROUP&gt;', '&lt;PROGRESS&gt;', 'NA', 'REFORZAR HTML5', 'NA'),
(1068, 19, 0, 3, 348, '¿CUÁL DE LOS SIGUIENTES SCRIPTS SE UTILIZA GENERALMENTE PARA DETECTAR CAPACIDADES DE JS, HTML5 Y CSS3 EN EL NAVEGADOR?', 'MODERNIZR', 'NA', 'NA', 'HTML5 SHIM', 'GOOGLE DETECTOR', 'SELECTIVIZR', 'NA', 'REFORZAR HTML5', 'NA'),
(1069, 19, 0, 3, 348, 'SELECCIONA EL TIPO DE INPUT VÁLIDO', 'TYPE=´RANGE´', 'NA', 'NA', 'TYPE=´BOOLEAN´', 'TYPE=´TEXTAREA´', 'TYPE=´ALPHANUMERIC´', 'NA', 'REFORZAR HTML5', '../../images/preguntas/html5/comillas.jpg'),
(1070, 19, 0, 3, 348, 'SI TUVIERAS QUE CREAR UN CAMPO DE BÚSQUEDA, ¿QUÉ SERÍA LO MÁS APROPIADO?', '&lt;INPUT TYPE=´SEARCH´ /&gt;', 'NA', 'NA', '&lt;INPUT TYPE=´FIND´ /&gt;', '&lt;INPUT TYPE=´TEXT´ SEARCH /&gt;', '&lt;INPUT TYPE=´FIND SEARCH´ /&gt;', 'NA', 'REFORZAR HTML5', '../../images/preguntas/html5/comillas.jpg'),
(1071, 19, 0, 3, 348, '¿CUÁL DE LOS SIGUIENTES ATRIBUTOS PERMITE MOSTRAR UN VALOR POR DEFECTO EN UN ELEMENTO INPUT, PERO QUE SE BORRA CUÁNDO HACEMOS FOCO EN EL MISMO?', 'PLACEHOLDER', 'NA', 'NA', 'CONTENT', 'SOURCE', 'VALUE', 'NA', 'REFORZAR HTML5', 'NA'),
(1072, 19, 0, 3, 348, 'PARA QUE UN INPUT TENGA EL FOCO APENAS SE TERMINE DE CARGAR EL DOCUMENTO, ¿CUÁL DE LAS SIGUIENTES SOLUCIONES APLICARÍAS?', 'UTILIZAR EL ATRIBUTO BOOLEANO AUTOFOCUS', 'NA', 'NA', 'UTILIZAR EL ATRIBUTO AUTOFOCUS=´TRUE´', 'UTILIZAR EL ATRIBUTO PLACEHOLDER', 'UTILIZAR THIS.AUTOFOCUS', 'NA', 'REFORZAR HTML5', 'NA'),
(1073, 19, 0, 3, 348, 'SI ESTUVIERAS MAQUETANDO UN BLOG, EN CUÁL DE LOS SIGUIENTES ELEMENTOS PONDRÍAS LOS LINKS A ARCHIVO, CATEGORÍAS, ÍCONOS DE REDES SOCIALES, LINKS A ARTÍCULOS MÁS POPULARES, ETC?', '&lt;ASIDE&gt;', 'NA', 'NA', '&lt;SECTION&gt;', '&lt;SUMMARY&gt;', '&lt;ARTICLE&gt;', 'NA', 'REFORZAR HTML5', 'NA'),
(1074, 19, 0, 3, 348, '¿QUÉ CAMBIO SE PODRÍA CONSIDERAR COMO EL MÁS IMPORTANTE PARA EL ELEMENTO &lt;A&gt; EN HTML5?', 'DEJA DE SER DE TIPO ´INLINE´ Y AHORA PUEDE CONTENER CUALQUIER OTRO ELEMENTO DENTRO (EJ: H1, P, ETC.)', 'NA', 'NA', 'PUEDE APUNTAR A DOS PÁGINAS DISTINTAS AL MISMO TIEMPO', 'EL NUEVO ATRIBUTO PLACEHOLDER', 'EL NUEVO ATRIBUTO RANGE', 'NA', 'REFORZAR HTML5', 'NA'),
(1075, 19, 0, 3, 348, '¿PARA QUÉ SE UTILIZA EL CONTENIDO DENTRO DE LA ETIQUETA &lt;CANVAS&gt;?', 'ES EL CONTENIDO ALTERNATIVO QUE MUESTRAN SOLO LOS NAVEGADORES QUE NO SOPORTAN CANVAS.', 'NA', 'NA', 'SE MUESTRA COMO LINK, QUE AL HACER CLICK EN ÉL NOS MUESTRA EL CANVAS.', 'ES EL TEXTO QUE LE PODEMOS AÑADIR AL CANVAS A MODO DE TÍTULO.', 'ES EL CONTENIDO DINÁMICO QUE PERMITA LA ETIQUETA', 'NA', 'REFORZAR HTML5', 'NA'),
(1076, 19, 0, 3, 348, '¿CUÁL DE ESTOS NO ES UN ATRIBUTO VÁLIDO PARA EL ELEMENTO VIDEO?', 'DOWNLOAD', 'NA', 'NA', 'CONTROLS', 'AUTOPLAY', 'LOOP', 'NA', 'REFORZAR HTML5', 'NA'),
(1077, 19, 0, 3, 348, 'UTILIZANDO LA API PARA EL ELEMENTO VIDEO, ¿CUÁL DE LOS SIGUIENTES EVENTOS DEBEMOS ´ESCUCHAR´ PARA GENERAR UN CONTADOR DE TIEMPO CUSTOM PARA UN VIDEO (EJ: 10:22)?', 'TIMEUPDATE', 'NA', 'NA', 'TIMELISTENER', 'TIMECOUNTER', 'VIDEOMOVE', 'NA', 'REFORZAR HTML5', '../../images/preguntas/html5/comillas.jpg'),
(1078, 19, 0, 3, 348, '¿CUÁL ES EL VALOR POR DEFECTO DE UN INPUT DE TIPO (TYPE) RANGE?', 'EL VALOR MEDIO', 'NA', 'NA', 'EL VALOR MÍNIMO', 'EL VALOR MÁXIMO', 'NO TIENE VALOR POR DEFECTO', 'NA', 'REFORZAR HTML5', 'NA'),
(1079, 19, 0, 3, 348, 'EN LA API DE GEOLOCATION, ¿CUÁLES SON LOS DOS ATRIBUTOS O PROPIEDADES DEL OBJETO ´POSITION´?', 'COORDS Y TIMESTAMP', 'NA', 'NA', 'COORDS Y ALTITUDE', 'LATITUDE Y ALTITUDE', 'LATITUDE Y LONGITUDE', 'NA', 'REFORZAR HTML5', '../../images/preguntas/html5/comillas.jpg'),
(1080, 19, 0, 3, 348, 'SELECCIONA LA FORMA CORRECTA DE OBTENER EL VALOR GUARDADO EN LA CLAVE ´EXAMEN´ A TRAVÉS DE LOCALSTORAGE:', 'LOCALSTORAGE.GETITEM(´EXAMEN´)', 'NA', 'NA', 'LOCALSTORAGE.GET(´EXAMEN´)', 'LOCALSTORAGE.GETVALUE(´EXAMEN´)', 'LOCALSTORAGE.GET.ITEM(´EXAMEN´)', 'NA', 'REFORZAR HTML5', '../../images/preguntas/html5/comillas.jpg'),
(1081, 19, 0, 3, 348, 'UTILIZANDO LA API DE CANVAS, ¿DE QUÉ FORMA GUARDARÍAS UN CANVAS GENERADO DE FORMA PROGRAMÁTICA A UN ARCHIVO PNG?', 'CANVAS.TODATAURL(´IMAGE/PNG´)', 'NA', 'NA', 'CANVAS.SAVEIMAGE(´PNG´)', 'CANVAS.TOIMAGE(´IMAGE/PNG´)', 'CANVAS.TODATAURL(´PNG´)', 'NA', 'REFORZAR HTML5', '../../images/preguntas/html5/comillas.jpg'),
(1082, 19, 0, 2, 348, 'ES POSIBLE MANIPULAR UNA IMAGEN A TRAVÉS DEL ELEMENTO CANVAS Y CONVERTIRLA, POR EJEMPLO A BLANCO Y NEGRO. ¿ES ESTO POSIBLE TAMBIÉN PARA UN VIDEO?. RESPONDA SI O NO', 'SI', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR HTML5', 'NA'),
(1083, 19, 0, 3, 348, 'SELECCIONA EL ATRIBUTO INVÁLIDO PARA UN INPUT', 'SOURCE', 'NA', 'NA', 'REQUIRED', 'AUTOFOCUS', 'PATTERN', 'NA', 'REFORZAR HTML5', 'NA'),
(1084, 19, 0, 3, 348, '¿DE QUÉ FORMA PODEMOS INDICAR QUE UN INPUT ESTÁ ASOCIADO A UN FORM EN EL CUÁL NO SE ENCUENTRA ANIDADO?', 'UTILIZANDO EL ATRIBUTO ´FORM´ EN EL INPUT.', 'NA', 'NA', 'UTILIZANDO EL ATRIBUTO ´INPUTS´ EN EL FORM', 'NO SE PUEDE.', 'UTILIZANDO EL ATRIBUTO ´INPUT´ EN EL FORM', 'NA', 'REFORZAR HTML5', '../../images/preguntas/html5/comillas.jpg'),
(1085, 19, 0, 3, 349, '¿QUÉ SIGNIFICA LA ´A´ EN RGBA?', 'ALPHA', 'NA', 'NA', 'APPEARANCE', 'ANIMATION', 'OPACITY', 'NA', 'REFORZAR CSS3', '../../images/preguntas/html5/comillas.jpg'),
(1086, 19, 0, 3, 349, 'INDICA LA RESPUESTA CORRECTA PARA GENERAR UN EFECTO DE TRANSICIÓN:', 'TRANSITION: HEIGHT .8S;', 'NA', 'NA', 'TRANSITION-HEIGHT: .8S;', 'TRANSFORM: TRANSITION(HEIGHT, .8S)', 'TRANSITION: .8S;', 'NA', 'REFORZAR CSS3', 'NA'),
(1087, 19, 0, 2, 349, '¿SE PUEDE TENER MULTIPLES BOX-SHADOWS PARA UN MISMO ELEMENTO?. RESPONDA SI O NO', 'SI', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR CSS3', 'NA'),
(1088, 19, 0, 3, 349, 'INDICA LA FORMA CORRECTA DE DECLARAR UNA MEDIA QUERY EN UN ARCHIVO CSS:', '@MEDIA ONLY SCREEN AND (MAX-WIDTH: 480PX)', 'NA', 'NA', '@MEDIA-QUERY ONLY SCREEN AND (MAX-WIDTH: 480PX)', '@MEDIA-SCREEN (MAX-WIDTH: 480PX)', '@QUERY ONLY SCREEN AND (MAX-WIDTH: 480PX)', 'NA', 'REFORZAR CSS3', 'NA'),
(1089, 19, 0, 3, 349, 'CAMBIAR DE TAMAÑO UN OBJETO EN CSS3:', 'TRANSFORM: SCALE(1,2);', 'NA', 'NA', 'SCALE: 1.2;', 'TRANSFORM: SCALE 1.2;', 'TRANSFORM-SCALE: 1,2;', 'NA', 'REFORZAR CSS3', 'NA'),
(1090, 19, 0, 3, 349, '¿PARA QUE SE UTILIZA LA REGLA @KEYFRAMES?', 'ANIMACIÓN', 'NA', 'NA', 'TRANSICIÓN', 'ROTACIÓN', 'IMPORTAR FUENTES', 'NA', 'REFORZAR CSS3', 'NA'),
(1091, 19, 0, 3, 349, '¿CUÁL DE LAS SIGUIENTES PROPIEDADES DE CSS3 ES INCORRECTA?', 'TRANSITION-ANIMATION', 'NA', 'NA', 'TRANSITION-DELAY', 'TRANSITION-DURATION', 'TRANSITION-PROPERTY', 'NA', 'REFORZAR CSS3', 'NA'),
(1092, 19, 0, 3, 349, 'LA PROPIEDAD RESIZE SIRVE PARA:', 'HACE QUE UN ELEMENTO PUEDA SER MODIFICABLE EN SU TAMAÑO POR EL USUARIO.', 'NA', 'NA', 'HACE QUE EL ELEMENTO CAMBIE SU TAMAÑO AL VALOR INDICADO.', 'NO EXISTE DICHA PROPIEDAD.', 'HACE QUE UN ELEMENTO PUEDA SER MODIFICABLE EN SU POSICIÓN POR EL USUARIO.', 'NA', 'REFORZAR CSS3', 'NA'),
(1093, 19, 0, 3, 349, 'SI QUEREMOS QUE UN ELEMENTO NO TENGA BORDES REDONDEADOS (SETEARLO A SU VALOR POR DEFECTO), USAMOS:', 'BORDER-RADIUS: 0;', 'NA', 'NA', 'BORDER-RADIUS: NULL;', 'BORDER-RADIUS: NONE;', 'BORDER-RADIUS: NORMAL;', 'NA', 'REFORZAR CSS3', 'NA'),
(1094, 19, 0, 3, 349, '¿QUÉ SON 4 VALORES DE LA PROPIEDAD TEXT-SHADOW?. EN ORDEN', 'LARGO HORIZONTAL, LARGO VERTICAL, RADIO DE DESENFOQUE, COLOR DE LA SOMBRA', 'NA', 'NA', 'RADIO DE DESENFOQUE, LARGO HORIZONTAL, LARGO VERTICAL, COLOR DE LA SOMBRA', 'LARGO HORIZONTAL, LARGO VERTICAL, OPACIDAD, COLOR DE LA SOMBRA', 'LARGO HORIZONTAL, LARGO VERTICAL, INCLINACIÓN, COLOR DE SOMBRA', 'NA', 'REFORZAR CSS3', 'NA'),
(1095, 19, 0, 3, 351, 'IDENTIFICA EL TIPO DE ELEMENTO, EN LÍNEA O EN BLOQUE, QUE ES CADA UNO:', 'A.', 'NA', 'NA', 'B.', 'C.', 'D.', 'NA', 'REFORZAR HTML5CSS3', '../../images/preguntas/html5/inline_block.jpg'),
(1096, 19, 0, 2, 351, 'INDICA LOS USOS O FUNCIONES QUE PROPORCIONA LA DECLARACIÓN DOCTYPE EN UNA PÁGINA WEB. INGRESA TODAS LAS QUE CONSIDERE CORRECTAS, SEPARADAS POR COMA , SIN ESPACIOS Y EN ORDEN ALFABÉTICO. EJ: A,D (ESCRIBA TODO EN MAYÚSCULA)', 'A,B,C', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR HTML5CSS3', '../../images/preguntas/html5/opciones1.jpg'),
(1097, 19, 0, 2, 351, 'DISPONES DE DOS PÁGINAS WEB, ´INICIO.HTML´ Y ´CONTACTO.HTML´ Y QUIERES CREAR UN ENLACE EN ´INICIO.HTML´ DIRIGIDO A ´CONTACTO.HTML´ CON EL TEXTO ´DATOS DE CONTACTO´. ESCRIBE EL CÓDIGO HTML NECESARIO PARA CREAR ESE ENLACE. (ESCRIBA TODO EN MAYÚSCULA)', '<A HREF=´CONTACTO.HTML´>DATOS DE CONTACTO</A>', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR HTML5CSS3', '../../images/preguntas/html5/espacios_blanco.jpg'),
(1098, 19, 0, 2, 351, 'EN EL DIRECTORIO ´SITIOWEB´ TIENES LA PÁGINA WEB ´INICIO.HTML´. DENTRO DE ESA PÁGINA QUIERES AÑADIR UN PÁRRAFO CON EL TEXTO ´MIS VACACIONES EN LA PLAYA:´ Y A CONTINUACIÓN, DENTRO DE ESE MISMO PÁRRAFO, QUIERES INCLUIR UNA IMAGEN LLAMADA ´FOTO.JPG´ QUE SE ENCUENTRA EN EL DIRECTORIO ´COSAS´ QUE SE ENCUENTRA DENTRO DE ´SITIOWEB´. ESCRIBE EL CÓDIGO HTML DEL PÁRRAFO. (ESCRIBA TODO EN MAYÚSCULA)', '<P>MIS VACACIONES EN LA PLAYA: <IMG SRC=´COSAS/FOTO.JPG´/></P>', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR HTML5CSS3', '../../images/preguntas/html5/espacios_blanco.jpg'),
(1099, 19, 0, 2, 351, 'DENTRO DE UNA PÁGINA WEB QUIERES INCLUIR UN FRAGMENTO DE UN DISCURSO DE UNA PERSONA FAMOSA. ¿CUÁL ES LA ETIQUETA MÁS APROPIADA PARA HACERLO?. INGRESE SOLO EL NOMBRE DE LA ETIQUETA. (ESCRIBA TODO EN MAYÚSCULA)', 'BLOCKQUOTE', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR HTML5CSS3', 'NA'),
(1100, 19, 0, 2, 351, 'ESCRIBE EL CÓDIGO HTML5 DE UN CUADRO DE TEXTO DE UN FORMULARIO QUE DEBE SER RELLENADO CON LOS APELLIDOS DEL USUARIO ANTES DE QUE EL FORMULARIO PUEDA SER ENVIADO AL SERVIDOR. (ESCRIBA TODO EN MAYÚSCULA). (LOS ATRIBUTOS ID Y NAME DEBEN ESTAR EN ESTE ORDEN).', '<INPUT TYPE=´TEXT´ ID=´APELLIDOS´ NAME=´APELLIDOS´ REQUIRED>', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR HTML5CSS3', '../../images/preguntas/html5/espacios_blanco.jpg'),
(1101, 19, 0, 2, 351, '¿CUÁLES SON TIPOS NUEVOS DE CONTROLES TIPO INPUT EN HTML5?. INGRESA TODAS LAS QUE CONSIDERE CORRECTAS, SEPARADAS POR COMA , SIN ESPACIOS Y EN ORDEN ALFABÉTICO. EJ: A,D (ESCRIBA TODO EN MAYÚSCULA)', 'B,C,E,F,G,H,J', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR HTML5CSS3', '../../images/preguntas/html5/inputs_html5.jpg'),
(1102, 19, 0, 2, 351, '¿QUÉ ETIQUETA DE HTML5 SE EMPLEA PARA MARCAR UNA FECHA?. INGRESA SOLO EL NOMBRE DE LA ETIQUETA. (ESCRIBA TODO EN MAYÚSCULA)', 'TIME', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR HTML5CSS3', 'NA'),
(1103, 19, 0, 2, 351, 'ESCRIBE EL CÓDIGO HTML5 MÍNIMO NECESARIO PARA ENLAZAR UNA HOJA DE ESTILO EXTERNA LLAMADA HOJA. (ESCRIBA TODO EN MAYÚSCULA)', '<LINK REL=´STYLESHEET´ HREF=´HOJA.CSS´>', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR HTML5CSS3', '../../images/preguntas/html5/espacios_blanco.jpg'),
(1104, 19, 0, 2, 351, '¿EL SIGUIENTE FRAGMENTO DE HTML5 TIENE ERROR?. RESPONSA SI O NO.', 'SI', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR HTML5CSS3', '../../images/preguntas/html5/error_html.jpg'),
(1105, 19, 0, 2, 351, 'UN PÁRRAFO TIENE UN TAMAÑO DE LETRA DEFINIDO COMO 1.25EM. EXPRESADO COMO UN PORCENTAJE, ¿CUÁNTO MÁS GRANDE SERÁ EL TAMAÑO DE LETRA DE ESTE PÁRRAFO COMPARADO CON EL RESTO DE PÁRRAFOS?.', '25%', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR HTML5CSS3', 'NA'),
(1106, 19, 0, 2, 351, 'ESCRIBE LA REGLA CSS (SELECTOR Y PROPIEDADES) NECESARIA PARA QUE TODOS LOS PÁRRAFOS DE UNA PÁGINA WEB APAREZCAN EN CURSIVA. ESCRIBA TODO EN UNA SOLA LÍNEA.', 'P {FONT-STYLE: ITALIC;}', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR HTML5CSS3', '../../images/preguntas/html5/espacios_blanco.jpg'),
(1107, 19, 0, 2, 351, 'ESCRIBE LA REGLA CSS (SELECTOR Y PROPIEDADES) NECESARIA PARA QUE TODOS LOS ENLACES DE UNA PÁGINA WEB APAREZCAN: 1. CON EL COLOR ROJO CUANDO EL CURSOR DEL RATÓN SE SITÚE ENCIMA DE ELLOS. 2. CON EL COLOR VERDE CUANDO EL FOCO DEL TECLADO SE SITÚE EN ELLOS. ESCRIBA TODO EN UNA SOLA LÍNEA.', 'A:HOVER {COLOR: RED;} A:FOCUS {COLOR: GREEN;}', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR HTML5CSS3', '../../images/preguntas/html5/espacios_blanco.jpg'),
(1108, 19, 0, 2, 351, 'ESCRIBE LA REGLA CSS (SELECTOR Y PROPIEDADES) NECESARIA PARA QUE TODOS LOS ELEMENTOS DE UNA LISTA QUE TENGA LA CLASE ´IMPORTANTE´ Y QUE SE ENCUENTRE DENTRO DE UN CONTENEDOR &lt;DIV&gt; CON LA CLASE ´DESTACADO´ APAREZCAN CON EL COLOR ROJO. ESCRIBA TODO EN UNA SOLA LÍNEA.', 'DIV.DESTACADO UL.IMPORTANTE LI {COLOR: RED;}', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR HTML5CSS3', '../../images/preguntas/html5/espacios_blanco.jpg'),
(1109, 19, 0, 2, 351, '¿EL SIGUIENTE FRAGMENTO DE CSS TIENE ERROR?. RESPONDA SI O NO.', 'SI', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR HTML5CSS3', '../../images/preguntas/html5/error_html1.jpg'),
(1110, 19, 0, 2, 350, '¿EN QUÉ LUGAR SE EJECUTA GENERALMENTE EL CÓDIGO JAVASCRIPT?. ESCRIBA TODO EN MAYÚSCULA', 'CLIENTE', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR JAVASCRIPT', 'NA'),
(1111, 19, 0, 3, 350, '¿CUÁLES DE ESTAS SON MARCAS PARA LA INSERCIÓN DEL CÓDIGO JAVASCRIPT EN LAS PÁGINAS HTML?.', '&lt;SCRIPT&gt; Y &lt;/SCRIPT&gt;', 'NA', 'NA', '&lt;JAVASCRIPT CODE &gt; Y &lt;/JAVASCRIPT CODE &gt;', '&lt;?SCRIPT &gt; Y &lt; SCRIPT? &gt;', '&lt;JAVASCRIPT? CODE &gt; Y &lt;/JAVASCRIPT? CODE &gt;', 'NA', 'REFORZAR JAVASCRIPT', 'NA'),
(1112, 19, 0, 3, 350, 'LA LLAMADA AL CÓDIGO JAVASCRIPT DEBE COLOCARSE EN:', 'PUEDE COLOCARSE EN LA SECCIÓN HEAD O EN BODY', 'NA', 'NA', 'LA SECCIÓN BODY DE LA PÁGINA', 'ANTES DE LA ETIQUETA HTML', 'DESPUÉS DE LA ETIQUETA HTML', 'NA', 'REFORZAR JAVASCRIPT', 'NA'),
(1113, 19, 0, 3, 350, 'EN JAVASCRIPT, PARA DARLE EL NOMBRE A UNA VARIABLE, OBJETO O FUNCIÓN, DEBEMOS TENER EN CUENTA QUE:', 'JAVASCRIPT DIFERENCIA ENTRE MAYÚSCULAS Y MINÚSCULAS', 'NA', 'NA', 'JAVASCRIPT NO DISTINGUE ENTRE MAYÚSCULAS Y MINÚSCULAS', 'NO SE PUEDEN USAR MAYÚSCULAS', 'NINGUNA DE LAS OPCIONES', 'NA', 'REFORZAR JAVASCRIPT', 'NA'),
(1114, 19, 0, 3, 350, '¿CUÁL ES LA INSTRUCCIÓN USADA PARA DEVOLVER UN VALOR EN UNA FUNCIÓN DE JAVASCRIPT?.', 'RETURN', 'NA', 'NA', 'SEND', 'VALUE', 'NINGUNA DE LAS OPCIONES', 'NA', 'REFORZAR JAVASCRIPT', 'NA'),
(1115, 19, 0, 3, 350, 'PARA TERMINAR LAS INSTRUCCIONES EN JAVASCRIPT SE UTILIZA:', 'UN PUNTO Y COMA O UN SALTO DE LÍNEA', 'NA', 'NA', 'UN PUNTO Y COMA', 'LA SENTENCIA END', 'TODAS LAS OPCIONES', 'NA', 'REFORZAR JAVASCRIPT', 'NA'),
(1116, 19, 0, 3, 350, '¿CUÁL DE ESTAS INSTRUCCIONES ESTÁ CORRECTAMENTE ESCRITA EN JAVASCRIPT?.', 'IF (A==0) ALERT (A);', 'NA', 'NA', 'IF (A=0) PRINT A;', 'IF (A==0) {PRINT [A]} ', 'IF (A==0): PRINT A;', 'NA', 'REFORZAR JAVASCRIPT', 'NA'),
(1117, 19, 0, 3, 350, 'PARA CONCATENAR CADENAS DE CARACTERES EN JAVASCRIPT SE USA EL CARÁCTER:', 'B', 'NA', 'NA', 'A', 'C', 'D', 'NA', 'REFORZAR JAVASCRIPT', '../../images/preguntas/html5/opciones.jpg'),
(1118, 19, 0, 3, 350, '¿ES POSIBLE HACER QUE SE EJECUTE UN FORMULARIO POR JAVASCRIPT?.', 'SÍ, POR EJEMPLO BASTA CON PASARLE A UNA FUNCIÓN JAVASCRIPT EL IDENTIFICADOR DEL FORMULARIO, Y APLICARLE EL COMANDO ´SUBMIT´ PARA EJECUTAR ESE FORMULARIO.', 'NA', 'NA', 'NO, ESA FUNCIÓN SÓLO PUEDE REALIZARSE MEDIANTE CÓDIGO PHP, Y SE HA DE REALIZAR POR TANTO EN EL SERVIDOR.', 'SÍ, DE HECHO LOS FORMULARIOS SE CREAN CON CÓDIGO JAVASCRIPT, POR LO QUE ES EL PROPIO JAVASCRIPT EL QUE LOS EJECUTA.', 'NINGUNA DE LAS OPCIONES', 'NA', 'REFORZAR JAVASCRIPT', 'NA'),
(1119, 19, 0, 3, 350, '¿TODO EL CÓDIGO JAVASCRIPT DEBE ESTAR POR FUERZA DENTRO DEL ARCHIVO .HTML DE LA PÁGINA WEB?.', 'NO, ES POSIBLE INCLUIR CÓDIGO JAVASCRIPT EN FICHEROS DE EXTENSIÓN .JS Y HACER UN ´INCLUDE´ EN LA SECCIÓN HEAD DE LA PÁGINA HTML', 'NA', 'NA', 'SÍ, PORQUE SI NO, NO SE PODRÍA EJECUTAR EN EL NAVEGADOR', 'NINGUNA DE LAS OPCIONES', 'SÍ, PORQUE SI NO, NO SE PODRÍA CARGAR UNA PÁGINA WEB', 'NA', 'REFORZAR JAVASCRIPT', 'NA'),
(1120, 19, 0, 3, 350, 'ADEMÁS DE VARIABLES, OBJETOS, SENTENCIAS EN JAVASCRIPT SE USAN LAS LLAMADAS FUNCIONES QUE SON:', 'UN CONJUNTO DE SENTENCIAS O INSTRUCCIONES AGRUPADAS Y DEFINIDAS CON UN IDENTIFICADOR O NOMBRE.', 'NA', 'NA', 'UNA SENTENCIA O INSTRUCCIÓN.', 'UNA DECLARACIÓN PARA DEFINIR OBJETOS.', 'UN CONTROLADOR DE EVENTOS.', 'NA', 'REFORZAR JAVASCRIPT', 'NA'),
(1121, 19, 0, 3, 350, 'EN JAVASCRIPT, COMO EN CUALQUIER LENGUAJE DE PROGRAMACIÓN, SE UTILIZAN VARIABLES, PERO ¿SABES QUE SON LAS VARIABLES?', 'LOS ELEMENTOS USADOS PARA ALMACENAR VALORES.', 'NA', 'NA', 'LOS NOMBRES DE LOS EVENTOS.', 'LOS NOMBRES DE LAS FUNCIONES.', 'ELEMENTOS QUE CAMBIAN ADAPTÁNDOSE AL ENTORNO.', 'NA', 'REFORZAR JAVASCRIPT', 'NA'),
(1122, 19, 0, 3, 350, 'CUANDO QUEREMOS ALMACENAR UNA LISTA DE VALORES EN JAVASCRIPT LO MÁS ADECUADO ES USAR', 'UNA INSTANCIA DEL OBJETO ARRAY.', 'NA', 'NA', 'UNA CONSTANTE TIPO LISTA.', 'UNA VARIABLE CUYO NOMBRE TERMINE EN UN NÚMERO O ÍNDICE.', 'UNA VARIABLE CUALQUIERA.', 'NA', 'REFORZAR JAVASCRIPT', 'NA'),
(1123, 19, 0, 3, 350, 'LOS OPERADORES BINARIOS SON OPERADORES QUE:', 'QUE OPERAN A NIVEL DE BIT.', 'NA', 'NA', 'QUE SÓLO SE USAN CON VALORES LÓGICOS.', 'SÓLO TRABAJAN CON DOS VALORES.', 'SON OPERADORES QUE SÓLO DAN RESULTADOS LÓGICOS.', 'NA', 'REFORZAR JAVASCRIPT', 'NA'),
(1124, 19, 0, 3, 350, 'EN JAVASCRIPT SE USAN UNOS ELEMENTOS DENOMINADOS OBJETOS, ¿SABES QUE SON?', 'UN CONJUNTO DE PROPIEDADES Y MÉTODOS ENCERRADOS BAJO UN NOMBRE.', 'NA', 'NA', 'ELEMENTOS UTILIZADOS PARA ALMACENAR VALORES.', 'LOS ELEMENTOS USADOS PARA COMUNICARSE CON EL EXPLORADOR.', 'SON IGUAL QUE LAS VARIABLES.', 'NA', 'REFORZAR JAVASCRIPT', 'NA'),
(1125, 19, 0, 3, 350, 'MUCHAS VECES HABRÁS LEÍDO QUE DETERMINADOS IDENTIFICADORES SON PALABRAS CLAVE O RESERVADAS DEL LENGUAJE, ESTO SIGNIFICA QUE:', 'SON PALABRAS PARA IDENTIFICAR ELEMENTOS DEL PROPIO LENGUAJE.', 'NA', 'NA', 'SÓLO PUEDEN USARSE PARA IDENTIFICAR OBJETOS.', 'SON PALABRAS RESERVADAS PARA USO FUTURO.', 'SÓLO PUEDEN USARSE PARA IDENTIFICAR FUNCIONES.', 'NA', 'REFORZAR JAVASCRIPT', 'NA'),
(1126, 19, 0, 3, 350, 'CUANDO CONSTRUIMOS UNA FUNCIÓN DEBEMOS:', 'SI DEVUELVE UN VALOR LO DEBE HACER MEDIANTE UNA INSTRUCCIÓN RETURN.', 'NA', 'NA', 'LA INSTRUCCIÓN RETURN NO EXISTE EN JAVASCRIPT.', 'SU ÚLTIMA INSTRUCCIÓN DEBE SER SIEMPRE RETURN.', 'RETURN SÓLO SIRVE PARA ABORTAR LA EJECUCIÓN DE LA FUNCIÓN.', 'NA', 'REFORZAR JAVASCRIPT', 'NA'),
(1127, 19, 0, 3, 350, 'EN JAVASCRIPT SE UTILIZAN OPERADORES PARA:', 'RELACIONAR DOS O MÁS VALORES PRODUCIENDO UN RESULTADO.', 'NA', 'NA', 'REALIZAR OPERACIONES MATEMÁTICAS ENTRE VARIABLES NUMÉRICAS.', 'REALIZAR OPERACIONES ENTRE CADENAS O STRINGS.', 'ES EL NOMBRE QUE SE DA A LOS MÉTODOS DEFINIDOS DENTRO DE LOS OBJETOS.', 'NA', 'REFORZAR JAVASCRIPT', 'NA'),
(1128, 19, 0, 3, 350, 'LOS BUCLES SON UN CONJUNTO DE INSTRUCCIONES QUE SE EJECUTAN DE FORMA REPETIDA Y SE DETIENEN CUANDO:', 'SE DEJE DE CUMPLIR UNA CIERTA CONDICIÓN O APAREZCA UNA INSTRUCCIÓN BREAK.', 'NA', 'NA', 'SE DEJE DE CUMPLIR UNA CONDICIÓN.', 'SÓLO SE DETIENE CON LA INSTRUCCIÓN BREAK.', 'SE CUMPLA UNA CIERTA CONDICIÓN.', 'NA', 'REFORZAR JAVASCRIPT', 'NA'),
(1129, 19, 0, 3, 350, 'CUANDO QUEREMOS QUE EL CUERPO DE UN BUCLE SE EJECUTE COMO MÍNIMO UNA VEZ UTILIZAMOS LA SENTENCIA:', 'DO...WHILE', 'NA', 'NA', 'EXECUTE...UNTIL', 'WHILE...', 'SWITCH ... CASE', 'NA', 'REFORZAR JAVASCRIPT', 'NA'),
(1130, 19, 0, 3, 350, 'SI NUESTRO PROGRAMA ESTÁ EJECUTANDO UN BUCLE ES POSIBLE HACER QUE SE SALTE PARTE DE LAS INSTRUCCIONES QUE FORMAN EL CUERPO DEL BUCLE Y VUELVA AL PRINCIPIO DEL MISMO, PARA ELLO USAMOS LA INSTRUCCIÓN DE CONTROL:', 'CONTINUE', 'NA', 'NA', 'GOTO', 'SWITCH', 'SKIP', 'NA', 'REFORZAR JAVASCRIPT', 'NA'),
(1131, 19, 0, 3, 350, 'UNA INSTRUCCIÓN O SENTENCIA DE CONTROL ES UNA INSTRUCCIÓN QUE:', 'HACE QUE LOS PROGRAMAS NO SE EJECUTEN DE FORMA SECUENCIAL.', 'NA', 'NA', 'CONTROLAN LA EJECUCIÓN DEL PROGRAMA DETENIÉNDOLO SI HAY UN ERROR.', 'ACELERA LA EJECUCIÓN DE LOS PROGRAMAS.', 'HACE QUE LAS INSTRUCCIONES SE EJECUTEN SECUENCIALMENTE.', 'NA', 'REFORZAR JAVASCRIPT', 'NA'),
(1132, 19, 0, 3, 350, 'SI POR EJEMPLO QUEREMOS SABER SI LA VARIABLE ANCHO ESTÁ COMPRENDIDA ENTRE LOS VALORES 12 Y 20, ¿CUÁL DE LAS SIGUIENTES INSTRUCCIÓN SERÍA LA ADECUADA?', '(ANCHO < 20) && (ANCHO > 12)', 'NA', 'NA', 'ANCHO < 20 && > 12', '(ANCHO <20) || (ANCHO > 12)', '(20 < ANCHO > 12)', 'NA', 'REFORZAR JAVASCRIPT', 'NA'),
(1133, 19, 0, 3, 350, 'EN EL SIGUIENTE CÓDIGO AVERIGUA QUE APARECERÍA EN LA VENTANA ALERT:', 'SEGUNDA POSIBILIDAD', 'NA', 'NA', 'NO SE PUEDE SABER', 'PRIMERA POSIBILIDAD', 'DARÍA UN ERROR DE EJECUCIÓN', 'NA', 'REFORZAR JAVASCRIPT', '../../images/preguntas/html5/js1.jpg'),
(1134, 19, 0, 3, 350, 'AVERIGUAR SI UN NÚMERO ES PAR O IMPAR ES BASTANTE FÁCIL, AL MENOS CUANDO LO HACES DE CABEZA. PERO ¿SABRÍAS DECIR CON CUAL DE LOS SIGUIENTES CÓDIGOS PODRÍA HACERSE EN JAVASCRIPT?. INGRESA UNICAMENTE LA LETRA.', 'C', 'NA', 'NA', 'A', 'D', 'B', 'NA', 'REFORZAR JAVASCRIPT', '../../images/preguntas/html5/js2.jpg'),
(1135, 19, 0, 3, 352, '¿QUE ES JQUERY?', 'ES UNA BIBLIOTECA DE JAVASCRIPT QUE SIMPLIFICA LA INTERACCIÓN CON DOCUMENTOS HTML.', 'NA', 'NA', 'UN EDITOR DE TEXTO.', 'ES UN SOFTWARE DE CÁLCULOS.', 'ES UN SOFTWARE DE CÓDIGO ABIERTO PARA MANIPULAR ELEMENTOS DEL CORE.', 'NA', 'REFORZAR JQUERY', 'NA'),
(1136, 19, 0, 3, 352, 'DENTRO DE LOS SELECTORES, ¿CUAL ES LA FUNCIÓN DEL SELECTOR UNIVERSAL?', 'SELECCIONA TODOS LOS ELEMENTOS DEL DOM', 'NA', 'NA', 'SELECCIONA ELEMENTOS POR EL ID O CLASE.', 'HACE UNA SELECCIÓN POR DESCENDENCIA.', 'REALIZA UNA SELECCIÓN POR ATRIBUTO.', 'NA', 'REFORZAR JQUERY', 'NA'),
(1137, 19, 0, 3, 352, '¿EN JQUERY SELECCIONAMOS LOS TAGS O ETIQUETAS HTML?', '(DIV), (P), (LI).', 'NA', 'NA', '#CONTENT {WIDHT:20PX; HEIGHT:15PX; FLOAT:LEFT;}', '&lt;DIV ID=\"CONTENT&gt;SELECCION&lt;/DIV&gt;', 'NINGUNA DE LAS OPCIONES.', 'NA', 'REFORZAR JQUERY', 'NA'),
(1138, 19, 0, 3, 352, '¿COMO SELECCIONAMOS UN ID O CLASE?', '(#CONTENT, .TITLE)', 'NA', 'NA', '&lt;DIV ID=CONTENT&gt;&lt;/DIV&gt;', '#CONTENT {WIDHT:20PX; HEIGHT:15PX; FLOAT:LEFT;}', 'NINGUNA DE LAS OPCIONES.', 'NA', 'REFORZAR JQUERY', 'NA'),
(1139, 19, 0, 3, 352, 'DE LOS SELECTORES ESPECIALES, ¿QUE SELECTOR SELECCIONA PARES E IMPARES?', ':ODD, :EVEN', 'NA', 'NA', ':FIRST, :LAST', ':VISIBLE, :HIDDEN', ':EQ(5)', 'NA', 'REFORZAR JQUERY', 'NA'),
(1140, 19, 0, 3, 352, 'DE LOS SELECTORES ESPECIALES, ¿QUE SELECTOR SELECCIONA UN ELEMENTO POR SU INDICE?', ':EQ(5)', 'NA', 'NA', ':GT(5)', ':LT(10)', ':VISIBLE, :HIDDEN', 'NA', 'REFORZAR JQUERY', 'NA'),
(1141, 19, 0, 3, 352, 'DE LOS SELECTORES ESPECIALES, ¿QUE SELECTOR SELECCIONA EL ELEMENTO CUYO INDICE ES MAYOR QUE?', ':GT(5)', 'NA', 'NA', ':EQ(5)', ':LT(10)', ':EQ(15)', 'NA', 'REFORZAR JQUERY', 'NA'),
(1142, 19, 0, 3, 352, 'DE LOS SELECTORES ESPECIALES, ¿QUE SELECTOR SELECCIONA LOS ELEMENTOS CUYO INDICE ES MENOR QUE?', ':LT(10)', 'NA', 'NA', ':GT(5)', 'EQ(5)', ':EQ(-0)', 'NA', 'REFORZAR JQUERY', 'NA'),
(1143, 19, 0, 3, 352, 'EN LA MANIPULACIÓN DE ATRIBUTOS, ¿QUE TOMA EL VALOR DE UN SELECT?', 'D', 'NA', 'NA', 'A', 'B', 'C', 'NA', 'REFORZAR JQUERY', '../../images/preguntas/html5/val_select.jpg'),
(1144, 19, 0, 3, 352, 'EN LA MANIPULACIÓN DE ATRIBUTOS, ¿QUE DEVUELVE TRUE O FALSE SI TIENE UNA CLASE?', '.HASCLASS(´CLASE´)', 'NA', 'NA', '.ADDCLASS(´CLASE´)', '.TOGGLECLASS(´CLASE´)', '.REMOVECLASS(´CLASE´)', 'NA', 'REFORZAR JQUERY', 'NA'),
(1145, 19, 0, 3, 352, 'EN LA MANIPULACIÓN DE ATRIBUTOS, ¿QUE AGREGA O QUITA UNA CLASE?', '.TOGGLECLASS(´CLASE´)', 'NA', 'NA', '.REMOVECLASS(´CLASE´)', '.HASCLASS(´CLASE´)', '.CSS(´PROPIEDAD´,´VALOR´)', 'NA', 'REFORZAR JQUERY', 'NA'),
(1146, 19, 0, 3, 352, 'EN LA MANIPULACIÓN DE ELEMENTOS LA SIGUIENTE LINEA DE CÓDIGO .APPEND(), ¿QUE ACCIÓN GENERA?', 'AGREGA UN ELEMENTO AL FINAL DEL ELEMENTO CONTENEDOR', 'NA', 'NA', 'AGREGA UN ELEMENTO AL INICIO DEL ELEMENTO CONTENEDOR', 'AGREGA UN ELEMENTO DESPUÉS DE', 'AGREGA UN ELEMENTO ANTES DE', 'NA', 'REFORZAR JQUERY', 'NA'),
(1147, 19, 0, 3, 352, 'EN LA MANIPULACIÓN DE ELEMENTOS LA SIGUIENTE LINEA DE CÓDIGO .PREPPEND(), ¿QUE ACCIÓN GENERA?', 'AGREGA UN ELEMENTO AL INICIO DEL ELEMENTO CONTENEDOR', 'NA', 'NA', 'AGREGA UN ELEMENTO AL FINAL DEL ELEMENTO CONTENEDOR', 'AGREGA UN ELEMENTO DESPUÉS DE', 'AGREGA UN ELEMENTO ANTES DE', 'NA', 'REFORZAR JQUERY', 'NA');
INSERT INTO `tbl_preguntas` (`id`, `id_grado`, `id_materia`, `id_tipo_pregunta`, `id_tema`, `pregunta`, `r1ok`, `r2ok`, `r3ok`, `r1no`, `r2no`, `r3no`, `r4no`, `retroalimentacion`, `imagen`) VALUES
(1148, 19, 0, 3, 352, 'EN LA MANIPULACIÓN DE ELEMENTOS LA SIGUIENTE LINEA DE CÓDIGO .EMPTY(), ¿QUE ACCIÓN GENERA?', 'BORRA EL CONTENIDO DE UN ELEMENTO', 'NA', 'NA', 'ELIMINA UN ELEMENTO', 'AGREGA UN ELEMENTO DESPUÉS DE', 'AGREGA UN ELEMENTO AL FINAL DEL ELEMENTO CONTENEDOR', 'NA', 'REFORZAR JQUERY', 'NA'),
(1149, 19, 0, 3, 352, 'EN LA MANIPULACIÓN DE ELEMENTOS LA SIGUIENTE LINEA DE CÓDIGO .POSITION() , ¿QUE ACCIÓN GENERA?', 'DEVUELVE UN OBJETO CON EL TOP Y LEFT', 'NA', 'NA', 'DEVUELVE LA ALTURA DE UN ELEMENTO', 'DEVUELVE EL ANCHO DE UN ELEMENTO', 'BORRA EL CONTENIDO DE UN ELEMENTO', 'NA', 'REFORZAR JQUERY', 'NA'),
(1150, 19, 0, 3, 352, '¿QUE EFECTO EJECUTA DURANTE EL TIEMPO ESPECIFICADO EN DURACIÓN QUE PUEDE SER : NORMAL, SLOW, FAST Y 5000?', '.EFECTO(DURACION);', 'NA', 'NA', '.EFECTO();', '.EFECTO(DURACION,CALLBACK);', '.EFECTO(DURACION, EASING, CALLBACK);', 'NA', 'REFORZAR JQUERY', 'NA'),
(1151, 19, 0, 3, 352, '¿QUE EFECTO NATIVO DE JQUERY MUESTRA UN ELEMENTO SI ESTA OCULTO Y LO OCULTA SI ESTA VISIBLE?', '.TOGGLE();', 'NA', 'NA', '.FADEOUT();', '.FADEIN(); .FADEOUT();', '.SLIDEUP(); .SLIDEDOWN();', 'NA', 'REFORZAR JQUERY', 'NA'),
(1152, 19, 0, 3, 352, '¿QUE EFECTO NATIVO DE JQUERY HACE UNA DISOLVENCIA HASTA APARECER EL ELEMENTO?', '.FADEIN();', 'NA', 'NA', '.SLIDEUP();', '.FADEOUT();', '.SLIDEDOWN();', 'NA', 'REFORZAR JQUERY', 'NA'),
(1153, 19, 0, 3, 352, '¿QUE EFECTO NATIVO DE JQUERY DESPLIEGA HACIA DEBAJO O COLAPSA HACIA ARRIBA SEGÚN EL ESTADO DEL ELEMENTO?', '.SLIDETOGGLE();', 'NA', 'NA', '.SLIDEDOWN();', '.DELAY();', '.STOP();', 'NA', 'REFORZAR JQUERY', 'NA'),
(1154, 19, 0, 3, 352, '¿QUE EFECTO NATIVO DE JQUERY HACE UNA PAUSA EN LA EJECUCIÓN DE DOS EFECTOS CONSECUTIVOS?', '.DELAY();', 'NA', 'NA', '.STOP();', '.SLIDETOGGLE();', '.TOGGLE();', 'NA', 'REFORZAR JQUERY', 'NA'),
(1155, 20, 0, 2, 353, '¿EN QUÉ LUGAR SE EJECUTA EL CÓDIGO PHP?', 'SERVIDOR', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR PHP', '../../images/preguntas/html5/mayusculas.png'),
(1156, 20, 0, 3, 353, '¿CUÁLES DE ESTAS SON MARCAS PARA LA INSERCIÓN DEL CÓDIGO PHP EN LAS PÁGINAS HTML?', 'A', 'NA', 'NA', 'B', 'C', 'D', 'NA', 'REFORZAR PHP', '../../images/preguntas/html5/php2.jpg'),
(1157, 20, 0, 2, 353, '¿EN QUÉ ATRIBUTO DE UN FORMULARIO ESPECIFICAMOS LA PÁGINA A LA QUE SE VAN A ENVIAR LOS DATOS DEL MISMO?', 'ACTION', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR PHP', '../../images/preguntas/html5/mayusculas.png'),
(1158, 20, 0, 3, 353, '¿CUÁL DE ESTAS INSTRUCCIONES ESTÁ CORRECTAMENTE ESCRITA EN PHP?', 'B', 'NA', 'NA', 'A', 'C', 'D', 'NA', 'REFORZAR PHP', '../../images/preguntas/html5/php4.jpg'),
(1159, 20, 0, 3, 353, '¿CUÁL DE ESTAS INSTRUCCIONES PHP IMPRIMIRÁ POR PANTALLA CORRECTAMENTE EL MENSAJE “HOLA MUNDO” EN LETRA NEGRITA?', 'C', 'NA', 'NA', 'A', 'B', 'D', 'NA', 'REFORZAR PHP', '../../images/preguntas/html5/php5.jpg'),
(1160, 20, 0, 2, 353, 'DOS DE LAS FORMAS DE PASAR LOS PARÁMETROS ENTRE PÁGINAS PHP SON: (INGRÉSELAS EN ORDEN ALFABÉTICO Y SEPARADAS POR COMA)', 'GET, POST', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR PHP', '../../images/preguntas/html5/esp_mayus.jpg'),
(1161, 20, 0, 3, 353, '¿CUÁL DE ESTAS INSTRUCCIONES SE UTILIZA PARA REALIZAR UNA CONSULTA A UNA BASE DE DATOS MYSQL?', 'MYSQL_QUERY', 'NA', 'NA', 'MYSQL_ACCESS', 'MYSQL_DBACCESS', 'MYSQL_CONNECT', 'NA', 'REFORZAR PHP', 'NA'),
(1162, 20, 0, 3, 353, '¿UN ARRAY ES?', 'UN CONJUNTO DE ELEMENTOS', 'NA', 'NA', 'UN SISTEMA PARA CONVERTIR UNA VARIABLE DE TEXTO EN UN NÚMERO', 'UN CONJUNTO DE CARACTERES ALFANUMÉRICOS', 'UN CONJUNTO DE PROPIEDADES DEL MISMO TIPO', 'NA', 'REFORZAR PHP', 'NA'),
(1163, 20, 0, 3, 353, 'SELECCIONE LA RESPUESTA CORRECTA', 'B', 'NA', 'NA', 'A', 'C', 'D', 'NA', 'REFORZAR PHP', '../../images/preguntas/html5/php9.jpg'),
(1164, 20, 0, 2, 353, 'INGRESE EL CÓDIGO PHP PARA VERIFICAR SI LA VARIABLE ´$VARIABLE´ ESTÁ DEFINIDA Y TIENE UN VALOR NO NULO', 'IF (ISSET($VARIABLE)) {}', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR PHP', '../../images/preguntas/html5/esp_mayus.jpg'),
(1165, 20, 0, 3, 353, '¿QUÉ TIPO DE VALOR SE OBTIENE AL EVALUAR UNA EXPRESIÓN CON OPERADORES RELACIONALES?', 'UN VALOR BOOLEANO', 'NA', 'NA', 'UN VALOR NUMÉRICO', 'UN VALOR DE CADENA', 'NINGUNA DE LAS OPCIONES', 'NA', 'REFORZAR PHP', 'NA'),
(1166, 20, 0, 3, 353, '¿CUÁL DE LAS SIGUIENTES VARIABLES HA SIDO DECLARADA EN FORMA INCORRECTA?', '$5ALUMNOS = 50;', 'NA', 'NA', '$ALUMNOS = 50;', '$_ALUMNOS = 50;', '$ALUMNOS_CLASE = 50;', 'NA', 'REFORZAR PHP', 'NA'),
(1167, 20, 0, 3, 353, '¿CUÁL ES LA SIGUIENTE ESTRUCTURA DE CONTROL DE LA IMAGEN?', 'ESTRUCTURA CONDICIONAL', 'NA', 'NA', 'ESTRUCTURA DE REPETICIÓN', 'ESTRUCTURA COMPARATIVA', 'FUNCIÓN COMPARATIVA', 'NA', 'REFORZAR PHP', '../../images/preguntas/html5/php13.jpg'),
(1168, 20, 0, 3, 353, '¿QUÉ FUNCIÓN DEVUELVE EL NÚMERO DE ELEMENTOS DE UN ARREGLO?', 'COUNT()', 'NA', 'NA', 'LEN()', 'ARRAY_COUNT()', 'ARRAY_LEN()', 'NA', 'REFORZAR PHP', 'NA'),
(1169, 20, 0, 2, 353, '¿QUÉ IMPRIME EL CÓDIGO DE LA IMAGEN? (INGRESE TODO EN MAYÚSCULA).', 'ANA 19 PROFESOR', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR PHP', '../../images/preguntas/html5/php15.jpg'),
(1170, 20, 0, 2, 353, 'INGRESE LA SENTENCIA CORRECTA PARA DECLARAR LA FUNCIÓN ´NOMBREFUNCION´ EN PHP:', 'FUNCTION NOMBREFUNCION() {}', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR PHP', '../../images/preguntas/html5/esp_mayus.jpg'),
(1171, 20, 0, 3, 353, '¿CUAL DE LOS SIGUIENTES NO ES UN MÉTODO DE LA LIBRERÍA DE PHP?', 'DATAFORMATER_TIME()', 'NA', 'NA', 'DATE()', 'DATEFORMAT()', 'TIME()', 'NA', 'REFORZAR PHP', 'NA'),
(1172, 20, 0, 3, 353, '¿QUE RESULTADO ARROJA LA EXPRESIÓN?', 'VERDADERO', 'NA', 'NA', 'FALSO', 'GENERA UN ERROR', 'NINGUNA DE LAS OPCIONES', 'NA', 'REFORZAR PHP', '../../images/preguntas/html5/php18.jpg'),
(1173, 20, 0, 3, 353, '¿CUAL ES EL MÉTODO CORRECTO PARA CONECTAR PHP CON MYSQL?', 'A', 'NA', 'NA', 'B', 'C', 'D', 'NA', 'REFORZAR PHP', '../../images/preguntas/html5/php19.jpg'),
(1174, 20, 0, 2, 353, '¿PHP 5.5 SOPORTA HERENCIA?', 'SI', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR PHP', '../../images/preguntas/html5/esp_mayus.jpg'),
(1175, 20, 0, 3, 354, 'EN MYSQL, PARA SELECCIONAR LA BASE DE DATOS CON LA QUE SE QUIERE TRABAJAR SE USA EL COMANDO', 'USE', 'NA', 'NA', 'OPEN', 'SELECT', 'NINGUNA DE LAS OPCIONES', 'NA', 'REFORZAR PHP', 'NA'),
(1176, 20, 0, 3, 354, '¿CUÁL ES LA LONGITUD MÁXIMA DEL NOMBRE DE UNA BASE DE DATOS O DE UNA TABLA EN MYSQL?', '64', 'NA', 'NA', '48', '32', 'NINGUNA DE LAS OPCIONES', 'NA', 'REFORZAR PHP', 'NA'),
(1177, 20, 0, 3, 354, 'EN MYSQL, PARA MOSTRAR LA ESTRUCTURA DE UNA TABLA SE EMPLEA EL COMANDO', 'TODAS LAS OPCIONES', 'NA', 'NA', 'DESCRIBE', 'SHOW COLUMNS FROM', 'DESC', 'NA', 'REFORZAR PHP', 'NA'),
(1178, 20, 0, 2, 354, 'PARA UTILIZAR MYSQL EN UN ORDENADOR, SE NECESITA', 'UN SERVIDOR WEB', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR PHP', '../../images/preguntas/html5/esp_mayus.jpg'),
(1179, 20, 0, 3, 354, 'EN MYSQL, LA TABLA QUE CONTIENE LOS PERMISOS DE LOS USUARIOS DEL SISTEMA SE LLAMA', 'INFORMATION_SCHEMA.USER_PRIVILEGES', 'NA', 'NA', 'INFORMATION_SCHEMA.USER_PERMISSIONS', 'MYSQL.USER_PRIVILEGES', 'MYSQL.USER_PERMISSIONS', 'NA', 'REFORZAR PHP', 'NA'),
(1180, 20, 0, 3, 354, 'EN MYSQL, ¿CÓMO SE PUEDE COMPROBAR LA BASE DE DATOS SELECCIONADA POR DEFECTO?', 'SELECT DATABASE()', 'NA', 'NA', 'SHOW DATABASES', 'USE DATABAS', 'NINGUNA DE LAS OPCIONES', 'NA', 'REFORZAR PHP', 'NA'),
(1181, 20, 0, 3, 354, 'EN MYSQL, SI NECESITAMOS UTILIZAR CLAVES AJENAS Y TRANSACCIONES, DEBEMOS UTILIZAR EL MOTOR', 'INNODB', 'NA', 'NA', 'BLACKHOLE', 'MYISAM', 'NINGUNA DE LAS OPCIONES', 'NA', 'REFORZAR PHP', 'NA'),
(1182, 20, 0, 2, 354, 'EN MYSQL, PARA SELECCIONAR LAS FILAS DE LA 6 A LA 15 EN UNA TABLA ´USUARIOS´, SE EMPLEA LA CLÁUSULA', 'SELECT * FROM ´USUARIOS´ LIMIT 5,10', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR PHP', '../../images/preguntas/html5/esp_mayus.jpg'),
(1183, 20, 0, 2, 354, 'EN MYSQL, PARA OBTENER EL INSTANTE ACTUAL (FECHA Y HORA), SE EMPLEA LA FUNCIÓN', 'NOW()', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR PHP', '../../images/preguntas/html5/esp_mayus.jpg'),
(1184, 20, 0, 2, 353, '¿CÓMO EJECUTARÍAS UN CÓDIGO PHP POR LÍNEA DE COMANDOS DE UN ARCHIVO LOGIN?', 'PHP LOGIN.PHP', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR PHP', '../../images/preguntas/html5/esp_mayus.jpg'),
(1185, 20, 0, 2, 353, '¿QUÉ CLASE DE HERENCIA SOPORTA PHP? (ESCRIBA EN INGLÉS)', 'SINGLE INHERITANCE', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR PHP', '../../images/preguntas/html5/esp_mayus.jpg'),
(1186, 20, 0, 3, 353, '¿QUÉ REPRESENTA UNA CLASE CUANDO ES DECLARADA COMO FINAL?', 'ES UNA CLASE QUE NO PUEDE SER EXTENDIDA', 'NA', 'NA', 'ES UNA CLASE QUE NO SE PUEDE SOBREESCRIBIR', 'ES UNA CLASE QUE PUEDE SER EXTENDIDA', 'ES UNA CLASE QUE SE PUEDE SOBREESCRIBIR', 'NA', 'REFORZAR PHP', 'NA'),
(1187, 20, 0, 3, 353, '¿QUÉ REPRESENTA UN MÉTODO CUANDO ES DECLARADO FINAL?', 'NO PUEDE SER SOBREESCRITO', 'NA', 'NA', 'ES LO MISMO QUE UN MÉTODO ABSTRACTO', 'PUEDE SER SOBREESCRITO', 'NINGUNA DE LAS OPCIONES', 'NA', 'REFORZAR PHP', 'NA'),
(1188, 20, 0, 2, 353, 'SE NECESITA INCLUIR O REQUERIR UN ARCHIVO QUE AL NO SER ENCONTRADO NO GENERE UN ´FALTAL ERROR´. ¿QUÉ FUNCIÓN SE DEBE UTILIZAR?', 'INCLUDE()', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR PHP', '../../images/preguntas/html5/esp_mayus.jpg'),
(1189, 20, 0, 2, 353, '¿QUÉ FUNCIÓN VERIFICA SI UN SCRIPT PHP YA HA SIDO INCLUIDO?', 'INCLUDE_ONCE()', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR PHP', 'NA'),
(1190, 20, 0, 2, 353, '¿QUÉ FUNCIÓN DE PHP PERMITE MOSTRAR LA INFORMACIÓN DE UNA VARIABLE EN UN FORMATO LEGIBLE PARA HUMANOS?', 'PRINT_R()', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR PHP', '../../images/preguntas/html5/esp_mayus.jpg'),
(1191, 20, 0, 2, 353, '¿CÓMO SE PUEDE ASIGNAR UN TIEMPO DE EJECUCIÓN INFINITO PARA UN SCRIPT PHP?', 'SET_TIME_LIMIT(0)', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR PHP', '../../images/preguntas/html5/esp_mayus.jpg'),
(1192, 20, 0, 2, 353, '¿CÓMO PODEMOS VERIFICAR SI UNA VARIABLE ES UN NÚMERO?', 'IS_NUMERIC()', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR PHP', '../../images/preguntas/html5/esp_mayus.jpg'),
(1193, 20, 0, 2, 353, '¿CÓMO PODEMOS VERIFICAR SI UNA VARIABLE ES ALFANUMÉRICA?', 'CTYPE_ALNUM()', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR PHP', '../../images/preguntas/html5/esp_mayus.jpg'),
(1194, 20, 0, 2, 353, 'ES UNA FUNCIÓN UTIL PARA LIMPIAR UNA CADENA Y ELIMINAR LAS ETIQUETAS HTML EN SU INTERIOR', 'STRIP_TAGS()', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR PHP', 'NA'),
(1195, 20, 0, 2, 353, '¿CÓMO SE PUEDE HACER UN CAST DE UNA VARIABLE STRING ´VALOR´ A ARRAY?', '(ARRAY) $VALOR', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR PHP', '../../images/preguntas/html5/esp_mayus.jpg'),
(1196, 20, 0, 2, 353, '¿CÓMO DEBE COMENZAR LA SENTENCIA QUE TERMIINA CON ENDIF?', 'IF:', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR PHP', '../../images/preguntas/html5/esp_mayus.jpg'),
(1197, 20, 0, 2, 353, 'LA EXPRESIÓN DE LA IMAGEN SE CONOCE COMO. INGRESE TODO EN MAYÚSCULAS.', 'OPERADOR CONDICIONAL TERNARIO', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR PHP', '../../images/preguntas/html5/php34.jpg'),
(1198, 20, 0, 2, 353, '¿QUÉ TIPO DE MÉTODOS SE PUEDEN USAR AL ACCEDER A UNA CLASE UTILIZANDO ::?', 'STATIC', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR PHP', '../../images/preguntas/html5/esp_mayus.jpg'),
(1199, 20, 0, 2, 353, 'ES UN MECANISMO QUE NOS PERMITE GUARDAR DATOS TEMPORALMENTE, Y ASÍ PUEDEN ESTAR DISPONIBLES A TRAVÉS DE LAS DISTINTAS PÁGINAS QUE GESTIONAMOS CON PHP', 'SESSION', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR PHP', '../../images/preguntas/html5/esp_mayus.jpg'),
(1200, 20, 0, 2, 353, '¿QUÉ ARREGLO ASOCIATIVO CONTIENE INFORMACIÓN SOBRE EL SERVIDOR WEB?', '$_SERVER', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR PHP', 'NA'),
(1201, 20, 0, 2, 353, '¿CÓMO PODEMOS DETERMINAR SI UNA VARIABLE PHP ES UN OBJETO CREADO A PARTIR DE UNA CLASE DETERMINADA?', 'INSTANCEOF', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR PHP', '../../images/preguntas/html5/esp_mayus.jpg'),
(1202, 20, 0, 2, 353, '¿CÓMO PODEMOS DETERMINAR SI UNA VARIABLE TIENE UN VALOR ASIGNADO?', 'ISSET()', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR PHP', '../../images/preguntas/html5/esp_mayus.jpg'),
(1203, 20, 0, 2, 353, '¿CUÁL ES LA SALIDA DEL CÓDIGO QUE SE MUESTRA EN LA IMAGEN?. INGRESE TODO EN MAYÚSCULAS.', 'WUBBA LUBBA DUB DUB NO CONTIENE WUBBA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR PHP', '../../images/preguntas/html5/php40.jpg'),
(1204, 20, 0, 2, 353, '¿CUÁL ES LA SALIDA DEL CÓDIGO QUE SE MUETRA EN LA IMAGEN?. ESCRIBA EL RESULTADO DE CADA ECHO SEPARADO POR UNA COMA EJ: 4, 8, 10, 3', '11, 7, 1, 5', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR PHP', '../../images/preguntas/html5/php41_1.jpg'),
(1205, 20, 0, 2, 353, '¿CUÁLES SON LOS VALORES DE A Y B DESPUÉS DE EJECUTAR EL CÓDIGO DE LA IMAGEN?. ESCRIBA LOS VALORES SEPARADOS POR COMA Y REMPLACE LAS COMILLAS SENCILLAS O DOBLES POR APÓSTROFE, SI ES EL CASO EJ: ´2´, ´1´', '´21´, ´21´', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR PHP', '../../images/preguntas/html5/php42.jpg'),
(1206, 20, 0, 3, 353, 'AL EJECUTAR EL SCRIPT EN FONDO VERDE DE LA IMAGEN, ¿CUÁL DE LAS OPCIONES EN FONDO BLANCO ES LA CORRECTA?', 'B', 'NA', 'NA', 'A', 'C', 'D', 'NA', 'REFORZAR PHP', '../../images/preguntas/html5/php43.jpg'),
(1207, 20, 0, 2, 353, '¿QUÉ SALIDA PRODUCE EL CÓDIGO DE LA IMAGEN?. ESCRIBA TODO EN MAYÚSCULAS.', 'BOOL(TRUE)', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR PHP', '../../images/preguntas/html5/php44.jpg'),
(1208, 20, 0, 2, 353, '¿CUÁL SERÁ EL VALOR DE TEXT LUEGO DE EJECUTAR EL CÓDIGO SIGUIENTE?. INGRESE EL VALOR ENTRE APÓSTROFES Y EN MAYÚSCULAS.', '´JUAN      R´', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR PHP', '../../images/preguntas/html5/php45.jpg'),
(1209, 20, 0, 2, 353, 'CON RESPECTO A LOS USOS DE LA FUNCIÓN HEADER, ¿CUÁL AFIRMACIÓN ES LA CORRECTA?', 'D', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR PHP', '../../images/preguntas/html5/php46.jpg'),
(1210, 20, 0, 2, 353, '¿CUÁL ES LA SALIDA DEL CÓDIGO DE LA IMAGEN?. INGRESE LA RESPUESTA ENTRE APÓSTROFES Y EN MAYÚSCULAS.', '´IT ISIMPAR´', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR PHP', '../../images/preguntas/html5/php47.jpg'),
(1211, 20, 0, 2, 353, '¿CÓMO PODEMOS OBTENER LA DIRECCIÓN IP DE UN CLIENTE?. UTILICE APÓSTROFES EN LUGAR DE COMILLAS SENCILLAS O DOBLES.', '$_SERVER[´REMOTE ADDR´]', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR PHP', '../../images/preguntas/html5/esp_mayus.jpg'),
(1212, 20, 0, 2, 353, 'FUNCIÓN PARA ELIMINAR UN ARCHIVO DE NUESTRO FILESYSTEM', 'UNLINK()', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR PHP', '../../images/preguntas/html5/esp_mayus.jpg'),
(1213, 20, 0, 2, 353, 'FUNCIÓN PARA ASIGNAR EL VALOR DE UNDEFINED A UNA VARIABLE', 'UNSET()', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR PHP', '../../images/preguntas/html5/esp_mayus.jpg'),
(1214, 20, 0, 2, 353, 'SI TENEMOS UN STRING $STR = ´1,2,3,4,5,6,7´, ¿CÓMO PODEMOS OBTENER LA SUMA DE LOS ENTEROS QUE CONTIENE?. UTILICE APÓSTROFES EN LUGAR DE COMILLAS.', 'ARRAY_SUM(EXPLODE(´,´, $STR));', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR PHP', '../../images/preguntas/html5/esp_mayus.jpg'),
(1215, 20, 0, 2, 353, '¿CUÁLES SON LOS 3 NIVELES DE ACCESIBILIDAD DISPONIBLES EN PHP?. INGRESE LOS NIVELES SEPARADOS POR COMA Y EN ORDEN ALFABÉTICO.', 'PRIVATE, PROTECTED, PUBLIC', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR PHP', '../../images/preguntas/html5/esp_mayus.jpg'),
(1216, 20, 0, 3, 354, '¿QUÉ SENTENCIA ES VALIDA EN MYSQL?', 'RENAME TABLE', 'NA', 'NA', 'RENAME DATABASE', 'RENAME INDEX', 'RENAME TRIGGER', 'NA', 'REFORZAR PHP', 'NA'),
(1217, 20, 0, 2, 354, '¿QUÉ PALABRA CLAVE SE UTILIZA PARA FILTRAR LOS DATOS DUPLICADOS MIENTRAS RECUPERAS REGISTROS DE UNA O VARIAS TABLAS?', 'DISTINCT', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR PHP', '../../images/preguntas/html5/esp_mayus.jpg'),
(1218, 20, 0, 2, 354, '¿QUÉ PALABRAS CLAVE SE UTILIZAN EN CONSULTAS PARA BUSCAR CONINCIDENCIAS PARCIALES DE UNA CAMPO?. ESCRIBALAS EN ORDEN ALFABÉTICO Y SEPARADAS POR COMA.', 'LIKE, REGEXP', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR PHP', '../../images/preguntas/html5/esp_mayus.jpg'),
(1219, 20, 0, 2, 354, 'ESCRIBA LA CONSULTA PARA BUSCAR TODOS LOS CAMPOS DE UNA TABLA CLIENTES CUYO CAMPO NOMBRE EMPIEZA POR ´S´ UTILIZANDO LA COINCIDENCIA PARCIAL DE EXPRESIONES REGULARES. UTILIZA APÓSTROFES EN LUGAR DE COMILLAS.', 'SELECT * FROM CLIENTES WHERE NOMBRE REGEXP ´^S´', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR PHP', '../../images/preguntas/html5/esp_mayus.jpg'),
(1220, 20, 0, 2, 354, 'ESCRIBA LA SENTENCIA SQL PARA CAMBIAR EL NOMBRE DE LA TABLA ARTICULOS POR PRODUCTOS.', 'RENAME TABLE ARTICULOS TO PRODUCTOS', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR PHP', '../../images/preguntas/html5/esp_mayus.jpg'),
(1221, 20, 0, 2, 354, '¿QUE FUNCIÓN UTILIZARÍAS PARA OBTENER UNA PARTE DE CUALQUIER VALOR DE UNA COLUMNA USANDO UNA CONSULTA SELECT?', 'SUBSTR()', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR PHP', '../../images/preguntas/html5/esp_mayus.jpg'),
(1222, 20, 0, 2, 354, 'SI SE DEFINE UN CAMPO DE TIPO DECIMAL(5, 2). ¿CUÁNTOS DÍGITOS ACEPTA ANTES DEL PUNTO DECIMAL Y CUÁNTOS DESPUÉS DEL PUNTO DECIMAL?. ESCRIBA LOS VALORES SEPARADOS POR COMAS.', '3, 2', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR PHP', 'NA'),
(1223, 20, 0, 2, 354, 'ESCRIBA LA SENTENCIA SQL PARA BUSCAR EL CAMPO NOMBRE DE LA TABLA CLIENTES Y SI EL VALOR ES NULO DEVOLVER ´NO INGRESADO´. UTILICE LA PALABRA CLAVE AS.', 'SELECT IFNULL(NOMBRE, ´NO INGRESADO´) AS NOMBRE FROM CLIENTES', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR PHP', '../../images/preguntas/html5/esp_mayus.jpg'),
(1224, 20, 0, 2, 354, 'DE ACUERDO A LA TABLA DE LA FIGURA, MOSTRAR EL SEGUNDO SALARIO MAS ALTO UTILIZANDO UNA SUBCONSULTA. ESCRIBA TODO EN MAYÚSCULAS.', 'SELECT SUELDO FROM TBL_EMPLEADOS WHERE SUELDO < (SELECT MAX(SUELDO) FROM TBL_EMPLEADOS) ORDER BY SUELDO DESC LIMIT 1', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR PHP', '../../images/preguntas/html5/mysql18.jpg'),
(1225, 20, 0, 2, 354, 'INGRESE LA SENTENCIA SQL PARA CREAR UNA TABLA VACÍA ´EMPLEADOS1´ A PARTIR DE LA TABLA ´EMPLEADOS´', 'CREATE TABLE ´EMPLEADOS1´ SELECT * FROM ´EMPLEADOS´ WHERE 1 = 2', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR PHP', '../../images/preguntas/html5/esp_mayus.jpg'),
(1226, 20, 0, 2, 354, 'INGRESE LA SENTENCIA SQL PARA ACTUALIZAR EL NOMBRE DEL EMPLEADO DANIEL CONDIA A MANUEL CONDIA Y CON UN 16 POR CIENTO DE AUMENTO EN EL SALARIO. UTILICE APÓSTROFES EN LUGAR DE COMILLAS.', 'UPDATE TBL_EMPLEADOS SET NOMBRE = ´MANUEL CONDIA´, SUELDO = SUELDO * 1.16 WHERE NOMBRE = ´DANIEL CONDIA´', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR PHP', '../../images/preguntas/html5/mysql18.jpg'),
(1227, 20, 0, 3, 354, 'CON RESPECTO A LA CLÁUSULA LIKE, ¿CÓMO SE PODRÍA MOSTRAR LOS VALORES DE UN CAMPO QUE TERMINA EN ´QPT´?', 'LIKE ´%QPT´', 'NA', 'NA', 'LIKE *QPT', 'LIKE $QPT', 'LIKE ´%QPT%´', 'NA', 'REFORZAR PHP', 'NA'),
(1228, 20, 0, 3, 354, '¿QUÉ COMANDO ES UTILIZADO PARA OBTENER INFORMACIÓN ACERCA DE CÓMO MYSQL PODRÍA EJECUTAR UNA CONSULTA?', 'EXPLAIN', 'NA', 'NA', 'ANALIZE', 'SHOW', 'DESCRIBE', 'NA', 'REFORZAR PHP', 'NA'),
(1229, 20, 0, 2, 354, 'EN UNA CONSULTA SQL CON WHERE, GROUP BY Y HAVING; LA CONDICIÓN WHERE ES EJECUTADA ANTES QUE LA CONDICIÓN HAVING. VERDADERO O FALSO', 'VERDADERO', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR PHP', '../../images/preguntas/html5/esp_mayus.jpg'),
(1230, 20, 0, 3, 354, '¿CUÁNDO SE USA UNA CLÁUSULA HAVING?', 'PARA LIMITAR LA SALIDA DE UNA CONSULTA CON FUNCIONES DE AGRUPACIÓN', 'NA', 'NA', 'CUANDO GROUP BY ES USADO', 'PARA LIMITAR LA SALIDA DE UNA CONSULTA', 'NINGUNA DE LAS OPCIONES', 'NA', 'REFORZAR PHP', 'NA'),
(1231, 20, 0, 3, 354, 'CUANDO UNA COLUMNA ES DECLARADA ENUM NOT NULL, ¿EL VALOR POR DEFECTO ES EL PRIMER ELEMENTO DE LA LISTA DE VALORES DISPONIBLES?', 'VERDADERO', 'NA', 'NA', 'FALSO, LAS COLUMNAS ENUM PUEDEN SER NULAS', 'FALSO, EL VALOR POR DEFECTO ES EL ULTIMO ELEMENTO', 'NINGUNA DE LAS OPCIONES', 'NA', 'REFORZAR PHP', 'NA'),
(1232, 20, 0, 3, 354, '¿QUÉ TIPO DE CAMPO ES EL MEJOR PARA ALMACENAR UNA IMAGEN?', 'BLOB', 'NA', 'NA', 'TEXT', 'NCHAR BINARY', 'CHAR BINARY', 'NA', 'REFORZAR PHP', 'NA'),
(1233, 20, 0, 3, 354, '¿QUÉ REPRESENTA UNA TUPLA EN UNA BASE DE DATOS RELACIONAL?', 'FILA', 'NA', 'NA', 'COLUMNA', 'OBJETO', 'TABLA', 'NA', 'REFORZAR PHP', 'NA'),
(1234, 20, 0, 3, 354, '¿EN BASES DE DATOS MYSQL, LA ESTRUCTURA REPRESENTATIVA DE ORGANIZACIÓN DE VISTAS DE LAS ENTIDADES ES?', 'ESQUEMA', 'NA', 'NA', 'VISTA', 'TABLA', 'INSTANCIA', 'NA', 'REFORZAR PHP', 'NA'),
(1235, 20, 0, 3, 354, '¿AL COMPARAR UN VALOR CONOCIDO CON UN VALOR NULL QUÉ RESULTA?', 'NULL', 'NA', 'NA', 'CER0', 'UN VALOR POSITIVO', 'UN VALOR NEGATIVO', 'NA', 'REFORZAR PHP', 'NA'),
(1236, 20, 0, 2, 354, 'LA SENTENCIA UPDATE ES UNA SENTENCIA DML. ¿QUÉ SIGNIFICA DML EN INGLÉS?', 'DATA MANIPULATION LANGUAGE', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR PHP', '../../images/preguntas/html5/esp_mayus.jpg'),
(1237, 20, 0, 3, 354, '¿QUÉ PALABRA CLAVE ES USADA PARA BORRAR TODAS LAS FILAS DE UNA TABLA?', 'TRUNCATE', 'NA', 'NA', 'DELETE ALL', 'REMOVE', 'CLEAR', 'NA', 'REFORZAR PHP', 'NA'),
(1238, 20, 0, 3, 354, '¿QUÉ ES GENERALMENTE HECHO DESPUÉS QUE LAS TRANSACCIONES SON EJECUTADAS SATISFACTORIAMENTE?', 'COMMIT', 'NA', 'NA', 'ROLLBACK', 'DELETE', 'UPDATE', 'NA', 'REFORZAR PHP', 'NA'),
(1239, 20, 0, 3, 354, '¿CUÁL LLAVE HACE QUE EL INDICE DE UNA TABLA ES RELACIONADO CON OTRA TABLA?', 'FOREIGN', 'NA', 'NA', 'PRIMARY', 'SECONDARY', 'CROSS', 'NA', 'REFORZAR PHP', 'NA'),
(1240, 20, 0, 3, 354, 'EL BORRADO DE UN EMPLEADO DE UNA TABLA TAMBIEN BORRA LOS REGISTROS DE OTRA TABLA. ¿ESTA CLASE DE BORRADO ES LLAMADO?', 'CASCADED', 'NA', 'NA', 'CONCRETE', 'TRANSPARENT', 'ELABORATE', 'NA', 'REFORZAR PHP', 'NA'),
(1241, 20, 0, 2, 354, 'LA PROPIEDAD DE INNODB QUE HACE QUE LAS RELACIONES DE CLAVE EXTERNA PERMANEZCAN INTACTAS SE DENOMINA: (INGRESE LA RESPUESTA EN INGLÉS)', 'REFERENTIAL INTEGRITY', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR PHP', '../../images/preguntas/html5/esp_mayus.jpg'),
(1242, 20, 0, 2, 354, '¿QUÉ CLÁUSULA NOMBRA LA TABLA PRINCIPAL Y LAS COLUMNAS DE ÍNDICE DE UNA TABLA EN UNA LLAVE FORÁNEA?. (INGRESE LA RESPUESTA EN INGLÉS)', 'REFERENCES', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR PHP', '../../images/preguntas/html5/esp_mayus.jpg'),
(1243, 20, 0, 3, 354, '¿QUÉ SE HACE GENERALMENTE SI OCURRE UN ERROR DURANTE LA TRANSACCIÓN?', 'ROLLBACK', 'NA', 'NA', 'COMMIT', 'UPDATE', 'DELETE', 'NA', 'REFORZAR PHP', 'NA'),
(1244, 20, 0, 2, 354, 'ESCRIBA LA SENTENCIA SQL PARA MODIFICAR UN CAMPO ´PERSONID´ DE LA TABLA ´PERSON´ Y VOLVERLO ENTERO PEQUEÑO AUTO INCREMENTABLE Y SOLAMENTE ACEPTE VALORES POSITIVOS. NO ES NECESARIO EL ; FINAL', 'ALTER TABLE ´PERSON´ MODIFY ´PERSONID´ SMALLINT UNSIGNED AUTO_INCREMENT', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR PHP', '../../images/preguntas/html5/esp_mayus.jpg'),
(1245, 20, 0, 2, 354, '¿SE PUEDEN DEFINIR MULTIPLES UNIQUE CONSTRAINTS EN UNA TABLA?. ESCRIBA TODO EN MAYÚSCULAS.', 'SI', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'REFORZAR PHP', 'NA'),
(1246, 20, 0, 3, 354, '¿CUÁL DE LOS SIGUIENTES PROPORCIONA LA CAPACIDAD DE CONSULTAR INFORMACIÓN DE LA BASE DE DATOS E INSERTAR TUPLAS, ELIMINAR TUPLAS Y MODIFICAR TUPLAS EN LA BASE DE DATOS?', 'DML', 'NA', 'NA', 'DDL', 'QUERY', 'RELATIONAL SCHEMA', 'NA', 'REFORZAR PHP', 'NA');

/*ALTER TABLE tbl_preguntas
MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;*/

ALTER TABLE tbl_preguntas AUTO_INCREMENT = 1247;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_profesiones;

CREATE TABLE tbl_profesiones (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  profesion varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

INSERT INTO tbl_profesiones (profesion) VALUES
('ADMINISTRADORA COMERCIAL Y FINANCIERA'),
('AUXILIAR CONTABLE'),
('AUXILIAR DE ARCHIVO'),
('CONTADORA'),
('ESP EN ARCHIVISTICA'),
('ESP EN GERENCIA DE TALENTO HUMANO'),
('ESP EN NECESIDADES DE APRENDIZAJE EN LECTURA, ESCRITURA Y MATEMÁTICAS'),
('INGENIERA AMBIENTAL Y SANITARIA'),
('INGENIERA DE ALIMENTOS'),
('INGENIERA DE MINAS'),
('INGENIERA INDUSTRIAL'),
('INGENIERO INDUSTRIAL'),
('LICENCIADA EN EDUCACIÓN BASICA'),
('LICENCIADA EN IDIOMAS MODERNOS'),
('LICENCIADA EN LENGUAS EXTRANJERAS INGLÉS - FRANCÉS'),
('LICENCIADO EN INFORMÁTICA Y TECNOLOGÍA'),
('MG EN ADMINISTRACIÓN Y PLANIFICACIÓN EDUCATIVA'),
('MG EN AMBIENTES EDUCATIVOS MEDIADOS POR TIC'),
('MG EN DERECHOS HUMANOS'),
('MG EN EDUCACIÓN'),
('MG EN GESTIÓN DE LA TECNOLOGÍA DUCATIVA'),
('MG EN LINGÜÍSTICA'),
('MG EN TECNOLOGÍA EDUCATIVA Y COMPETENCIAS DIGITALES'),
('PSICÓLOGA'),
('PSICÓLOGO CLINICO'),
('PRUEBA'),
('ADMINISTRADORA DE EMPRESAS'),
('ADMINISTRADOR DE EMPRESAS'),
('LICENCIADA EN MATEMATICAS Y ESTADISTICA'),
('NA'),
('AUXILIAR ADMINISTRATIVA'),
('ADMINISTRADORA EN SALUD'),
('PRACTICANTE UNIVERSITARIO');

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_seg_psi_cierre;

CREATE TABLE tbl_seg_psi_cierre (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_valoracion int(11) NOT NULL,
  id_psicologo int(11) NOT NULL,
  id_agendamiento int(11) NOT NULL DEFAULT 0,
  observaciones varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  motivo varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  recomendaciones varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  remitido varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  motivo_remision varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  fecha date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_seg_psi_val;

CREATE TABLE tbl_seg_psi_val (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  n_documento varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  id_psicologo int(11) NOT NULL,
  id_solicita int(11) NOT NULL,
  id_empleado int(11) NOT NULL,
  id_agendamiento int(11) NOT NULL DEFAULT 0,
  piar varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  motivo varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  nivel_biologico varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  nivel_intelectual varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  nivel_motor varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  autonomia varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  nivel_lenguaje varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  nivel_social varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  personalidad varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  nivel_escolar varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  contexto_socio_fam varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  observaciones varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  fecha date NOT NULL,
  fecha_primer_seg date NOT NULL,
  hora varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_sentencias_procesos;

CREATE TABLE tbl_sentencias_procesos (
  id int(11) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nombre varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  utilizaJoin varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  campos varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  tablas varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  joinTablas varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  condiciones varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  agrupaciones varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  ordenamientos varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  modificaciones varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  condicionesAgrupaciones varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  inserciones varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

INSERT INTO tbl_sentencias_procesos (nombre, utilizaJoin, campos, tablas, joinTablas, condiciones, agrupaciones, ordenamientos, modificaciones, condicionesAgrupaciones, inserciones) VALUES
('máximo registro en matricula', 'NO', 'SELECT IFNULL(max(m.idmatricula), 0) maxid ', 'FROM tbl_estudiantes e, tbl_matriculas m ', '', 'WHERE e.id = m.id_estudiante AND e.n_documento = |_documento*| ', '', '', '', '', ''),
('grados', 'NO', 'SELECT * ', 'FROM tbl_grados ', '', 'WHERE id > 1 ', '', '', '', '', ''),
('buscar datos iniciales', 'NO', 'SELECT e.acudiente_1, e.email_acudiente_1, e.ciudad, e.telefono_acudiente_1 ', 'FROM tbl_estudiantes e ', '', 'WHERE e.n_documento = |_documento*| ', '', '', '', '', ''),
('se valida que sea antiguo', 'NO', 'SELECT *, (YEAR(NOW()) - YEAR(fecha_ingreso)) diferencia, YEAR(now()) actual ', 'FROM tbl_matriculas ', '', 'WHERE id = _maxid* ', '', '', '', '', ''),
('grado', 'NO', 'SELECT * ', 'FROM tbl_grados ', '', 'WHERE id = _idGrado* ', '', '', '', '', ''),
('datos estudiante0', 'NO', 'SELECT m.estado, m.id_grado, e.nombres, e.apellidos, e.telefono_estudiante, e.email_institucional, e.estado rh, e.acudiente_1, e.email_acudiente_1, e.direccion, e.telefono_acudiente_1, e.documento_responsable, td.id, td.tipo_documento, e.ciudad, e.actividad_extra, e.genero, e.documento_responsable, e.parentesco_acudiente_1 ', 'FROM tbl_estudiantes e, tbl_matriculas m, tbl_tipos_documento td  ', '', 'WHERE e.id = m.id_estudiante AND e.tipo_documento = td.id AND e.n_documento = |_documento*| AND m.id = _maxid* ', '', '', '', '', ''),
('datos entrevista', 'NO', 'SELECT *, ifnull(id, 0) id1 ', 'FROM tbl_entrevistas ', '', 'WHERE documento = |_documento*| ', '', '', '', '', ''),
('datos tbl_pre_matricula', 'NO', 'SELECT *, ifnull(id, 0) id1 ', 'FROM tbl_pre_matriculas ', '', 'WHERE documento_est = |_documento*| AND año < _fanio* ', '', '', '', '', ''),
('datos tbl_pre_matricula1', 'NO', 'SELECT *, ifnull(id, 0) id1 ', 'FROM tbl_pre_matriculas ', '', 'WHERE documento_est = |_documento*| AND año = _fanio* ', '', '', '', '', ''),
('datos tbl_entrevistas', 'NO', 'SELECT * ', 'FROM tbl_entrevistas ', '', 'WHERE documento_est = |_documento*| AND fecha >= |2024-10-07| ', '', '', '', '', ''),
('validar codigo pre tbl_matriculas documento', 'NO', 'SELECT COUNT(1) ct, email_pre_mat ', 'FROM tbl_cod_pre_tbl_matriculas ', '', 'WHERE identificacion = |_documento*| AND codigo = |_codigo*| ', 'GROUP BY email_pre_mat ', '', '', '', ''),
('evaluacion de validacion', 'NO', 'SELECT COUNT(1) ct ', 'FROM tbl_validaciones ', '', 'WHERE documento_est = |_documento*| AND año = _fanio* ', '', '', '', '', ''),
('grado maximo a validar', 'NO', 'SELECT g.id, g.grado ', 'FROM (SELECT MAX(id_grado) id_grado FROM tbl_validaciones WHERE documento_est = |_documento*| AND fecha_programacion like |%_fanio*%|) v, tbl_grados g ', '', 'WHERE v.id_grado = g.id ', '', '', '', '', ''),
('grado maximo aprobado', 'NO', 'SELECT COUNT(1) ct ', 'FROM tbl_validaciones ', '', 'WHERE documento_est = |_documento*| AND resultado = |APROBADO| AND id_grado = _max_idgrado* ', '', '', '', '', ''),
('evaluacion presaberes finalizada', 'NO', 'SELECT COUNT(1) ct ', 'FROM tbl_respuestas ', '', 'WHERE identificacion = |_documento*| AND a = _fanio1* AND estado = |FINALIZADA| ', '', '', '', '', ''),
('valida no entrevista no evaluacion', 'NO', 'SELECT * ', 'FROM tbl_estudiantes_sin_ee ', '', 'WHERE n_documento = |_documento*| ', '', '', '', '', ''),
('rango tbl_matriculas ordinaria', 'NO', 'SELECT f1, f2 ', 'FROM tbl_parametros ', '', 'WHERE parametro = |mat_ordinarias| ', '', '', '', '', ''),
('rango tbl_matriculas extra ordinaria', 'NO', 'SELECT f1, f2 ', 'FROM tbl_parametros ', '', 'WHERE parametro = |mat_extraordinarias| ', '', '', '', '', ''),
('valida estudiante bloqueado', 'NO', 'SELECT COUNT(1) ct ', 'FROM tbl_estudiantes_bloqueados ', '', 'WHERE n_documento = |_documento*| ', '', '', '', '', ''),
('tipos documento', 'NO', 'SELECT * ', 'FROM tbl_tipos_documento ', '', '', '', '', '', '', ''),
('medios llegada', 'NO', 'SELECT * ', 'FROM tbl_medios_llegada ', '', '', '', '', '', '', ''),
('update tbl_pre_matricula', 'NO', '', 'UPDATE tbl_pre_matriculas ', '', 'WHERE documento_est = |_documento*| AND año = _añoMatricula* ', '', '', 'SET id_grado = _idGrado*, nombres_est = |_nombres*|, apellidos_est = |_apellidos*|, fecha = |_fecha2*|, actividad_extra = |_extra*|,  nombre_a = |_nombreA*|, celular_a = |_celA*|, email_a = |_emailA*|, ciudad_a = |_ciudadA*|, id_medio = _medio* ', '', ''),
('insert tbl_pre_matricula', 'NO', '', 'INSERT INTO tbl_pre_matriculas ', '', '', '', '', '', '', '(id_empleado, id_grado, documento_est, nombres_est, apellidos_est, fecha, actividad_extra, nombre_a, celular_a, email_a, ciudad_a, entrevista, eval, id_medio, año) VALUES (18, _idGrado*, |_documento*|, |_nombres*|, |_apellidos*|, |_fecha2*|, |_extra*|, |_nombreA*|, |_celA*|, |_emailA*|, |_ciudadA*|, |NO|, 0, _medio*, _añoMatricula*) '),
('existe registro en tbl_pre_matricula', 'NO', 'SELECT COUNT(1) ct ', 'FROM tbl_pre_matriculas ', '', 'WHERE documento_est = |_documento*| AND año = _añoMatricula* ', '', '', '', '', ''),
('existe registro en estudiantes', 'NO', 'SELECT COUNT(1) ct ', 'FROM tbl_estudiantes ', '', 'WHERE n_documento = |_documento*| ', '', '', '', '', ''),
('UPDATE tbl_estudiantes', 'NO', '', 'UPDATE tbl_estudiantes ', '', 'WHERE n_documento = |_documento*| ', '', '', 'SET apellidos = |_apellidos*|, nombres = |_nombres*|, genero = |_genero*|, tipo_documento = _tdoc*, telefono_estudiante = |_telefonoE*|, actividad_extra = |_extra*|, email_acudiente_1 = |_emailA*|, acudiente_1 = |_nombreA*|, telefono_acudiente_1 = |_celA*|, parentesco_acudiente_1 = |_parentesco1*|, fecha_datos = |_fecha2*|, documento_responsable = |_documentoA*|, ciudad = |_ciudadA*|, a_tbl_matriculas = _añoMatricula* ', '', ''),
('insert estudiantes', 'NO', '', 'INSERT INTO tbl_estudiantes ', '', '', '', '', '', '', '(apellidos, nombres, genero, tipo_documento, n_documento, ciudad, telefono_estudiante, actividad_extra, email_acudiente_1, acudiente_1, telefono_acudiente_1, parentesco_acudiente_1, fecha_datos, documento_responsable, a_matricula) VALUES (|_apellidos*|, |_nombres*|, |_genero*|, _tdoc*, |_documento*|, |_ciudadA*|, |_telefonoE*|, |_extra*|, |_emailA*|, |_nombreA*|, |_celA*|, |_parentesco1*|, |_fecha2*|, |_documentoA*|, _añoMatricula*) '),
('consulta directorio', 'NO', 'SELECT e.id, e.nombres, e.apellidos, e.dependencia, e.email, e.celular, e.cargo, IFNULL(e.infografia, \'\') infografia, \r\nCASE e.perfil WHEN \'TU\' THEN \'SI\' WHEN \'SU\' THEN \'SI\' WHEN \'TU_AW\' THEN \'SI\' WHEN \'ST_PU\' THEN \'SI\' \r\nWHEN \'AR\' THEN \'SI\' WHEN \'FI\' THEN \'SI\' WHEN \'PS\' THEN \'SI\' ELSE \'NO\' END perfil ', 'FROM tbl_empleados e ', '', 'WHERE e.estado = |_activo*| AND e.id != 18 ', '', 'ORDER BY e.id ASC ', '', '', ''),
('grado estudiante', 'NO', 'SELECT id_grado ', 'FROM tbl_matriculas ', '', 'WHERE id = (SELECT MAX(idMatricula) idmax FROM tbl_matriculas WHERE id_estudiante = (SELECT id FROM tbl_estudiantes WHERE n_documento = |_ndoc*|))', '', '', '', '', ''),
('incrementos convenio pago', 'NO', 'SELECT * ', 'FROM tbl_cp ', '', 'WHERE convenio = |_convenio*| ', '', '', '', '', ''),
('valor pago icfes', 'NO', 'SELECT * ', 'FROM _tabla* ', '', 'WHERE id_grado = 0 AND a = _a* ', '', '', '', '', ''),
('valor pago', 'NO', 'SELECT * ', 'FROM _tabla* ', '', 'WHERE id_grado = _idgrado* AND a = _a* ', '', '', '', '', ''),
('incrementos pse', 'NO', 'SELECT * ', 'FROM tbl_incrementos ', '', 'WHERE tipo = |_PSE*| ', '', '', '', '', ''),
('incrementos', 'NO', 'SELECT * ', 'FROM tbl_incrementos ', '', 'WHERE tipo = |_tipo*| ', '', '', '', '', ''),
('valor gateway', 'NO', 'SELECT ifnull(val_fijo_gateway, 0) val_gateway, ct_actual ', 'FROM tbl_gateway ', '', 'WHERE estado = |_estado*| AND id_convenio = (SELECT id FROM tbl_cp WHERE convenio = |_convenio*|) ', '', '', '', '', ''),
('validacion presaberes', 'NO', 'SELECT COUNT(1) ct ', 'FROM tbl_respuestas ', '', 'WHERE identificacion = |_documento*| AND respuesta = |_NA*| AND a = _fanio* ', '', '', '', '', ''),
('valida ct preguntas abiertas', 'NO', 'SELECT COUNT(1) ct ', 'FROM tbl_respuestas ', '', 'WHERE identificacion = |_documento*| AND a = _fanio* AND estado = |_estado*| ', '', '', '', '', ''),
('valida ct preguntas cargadas', 'NO', 'SELECT COUNT(1) ct ', 'FROM tbl_respuestas ', '', 'WHERE identificacion = |_documento*| AND a = _fanio* ', '', '', '', '', ''),
('valida preguntas grado sm', 'NO', 'SELECT g.id, g.grado, e.origen ', 'FROM tbl_estudiantes_eval_admision e, tbl_grados g ', '', 'WHERE e.id_grado = g.id AND e.n_documento = |_documento*| ', '', '', '', '', ''),
('valida ct preguntas grado', 'NO', 'SELECT COUNT(1) ct ', 'FROM tbl_preguntas ', '', 'WHERE id_grado = _idgra* ', '', '', '', '', ''),
('consulta pregunta', 'NO', 'SELECT * ', 'FROM tbl_preguntas ', '', 'WHERE id = _idpreg* ', '', '', '', '', ''),
('nombre y grado presaberes', 'NO', 'SELECT e.*, g.grado ', 'FROM tbl_estudiantes_eval_admision e, tbl_grados g ', '', 'WHERE e.id_grado = g.id AND e.n_documento = |_documento*| ', '', '', '', '', ''),
('temas pensamiento bio', 'NO', 'SELECT DISTINCT tp.id, tp.tema ', 'FROM tbl_preguntas p, tbl_temas_preguntas tp ', '', 'WHERE p.id_tema = tp.id AND p.id_grado = _idgrado* AND p.id_materia = _idmateria* ', '', '', '', '', ''),
('preguntas por tema bio', 'NO', 'SELECT id ', 'FROM tbl_preguntas ', '', 'WHERE id_tema = _idtema* AND id_grado = _idgrado* AND id_materia = _idmateria* ', '', '', '', '', ''),
('ct preguntas por tema bio', 'NO', 'SELECT ct_preguntas ', 'FROM tbl_temas_preguntas ', '', 'WHERE id_grado = _idgrado* AND id_materia = _idmateria* AND id = _id* ', '', '', '', '', ''),
('temas pensamiento soc', 'NO', 'SELECT DISTINCT tp.id, tp.tema ', 'FROM tbl_preguntas p, tbl_temas_preguntas tp ', '', 'WHERE p.id_tema = tp.id AND p.id_grado = _idgrado* AND p.id_materia = _idmateria* ', '', '', '', '', ''),
('preguntas por tema soc', 'NO', 'SELECT id ', 'FROM tbl_preguntas ', '', 'WHERE id_tema = _idtema* AND id_grado = _idgrado* AND id_materia = _idmateria* ', '', '', '', '', ''),
('ct preguntas por tema soc', 'NO', 'SELECT ct_preguntas ', 'FROM tbl_temas_preguntas ', '', 'WHERE id_grado = _idgrado* AND id_materia = _idmateria* AND id = _id* ', '', '', '', '', ''),
('temas pensamiento num', 'NO', 'SELECT DISTINCT tp.id, tp.tema ', 'FROM tbl_preguntas p, tbl_temas_preguntas tp ', '', 'WHERE p.id_tema = tp.id AND p.id_grado = _idgrado* AND p.id_materia = _idmateria* ', '', '', '', '', ''),
('preguntas por tema num', 'NO', 'SELECT id ', 'FROM tbl_preguntas ', '', 'WHERE id_tema = _idtema* AND id_grado = _idgrado* AND id_materia = _idmateria* ', '', '', '', '', ''),
('ct preguntas por tema num', 'NO', 'SELECT ct_preguntas ', 'FROM tbl_temas_preguntas ', '', 'WHERE id_grado = _idgrado* AND id_materia = _idmateria* AND id = _id* ', '', '', '', '', ''),
('temas pensamiento esp', 'NO', 'SELECT DISTINCT tp.id, tp.tema ', 'FROM tbl_preguntas p, tbl_temas_preguntas tp ', '', 'WHERE p.id_tema = tp.id AND p.id_grado = _idgrado* AND p.id_materia = _idmateria* ', '', '', '', '', ''),
('preguntas por tema esp', 'NO', 'SELECT id ', 'FROM tbl_preguntas ', '', 'WHERE id_tema = _idtema* AND id_grado = _idgrado* AND id_materia = _idmateria* ', '', '', '', '', ''),
('ct preguntas por tema esp', 'NO', 'SELECT ct_preguntas ', 'FROM tbl_temas_preguntas ', '', 'WHERE id_grado = _idgrado* AND id_materia = _idmateria* AND id = _id* ', '', '', '', '', ''),
('temas pensamiento ing', 'NO', 'SELECT DISTINCT tp.id, tp.tema ', 'FROM tbl_preguntas p, tbl_temas_preguntas tp ', '', 'WHERE p.id_tema = tp.id AND p.id_grado = _idgrado* AND p.id_materia = _idmateria* ', '', '', '', '', ''),
('preguntas por tema ing', 'NO', 'SELECT id ', 'FROM tbl_preguntas ', '', 'WHERE id_tema = _idtema* AND id_grado = _idgrado* AND id_materia = _idmateria* ', '', '', '', '', ''),
('ct preguntas por tema ing', 'NO', 'SELECT ct_preguntas ', 'FROM tbl_temas_preguntas ', '', 'WHERE id_grado = _idgrado* AND id_materia = _idmateria* AND id = _id* ', '', '', '', '', ''),
('temas pensamiento tec', 'NO', 'SELECT DISTINCT tp.id, tp.tema ', 'FROM tbl_preguntas p, tbl_temas_preguntas tp ', '', 'WHERE p.id_tema = tp.id AND p.id_grado = _idgrado* AND p.id_materia = _idmateria* ', '', '', '', '', ''),
('preguntas por tema tec', 'NO', 'SELECT id ', 'FROM tbl_preguntas ', '', 'WHERE id_tema = _idtema* AND id_grado = _idgrado* AND id_materia = _idmateria* ', '', '', '', '', ''),
('ct preguntas por tema tec', 'NO', 'SELECT ct_preguntas ', 'FROM tbl_temas_preguntas ', '', 'WHERE id_grado = _idgrado* AND id_materia = _idmateria* AND id = _id* ', '', '', '', '', ''),
('temas pensamiento fis', 'NO', 'SELECT DISTINCT tp.id, tp.tema ', 'FROM tbl_preguntas p, tbl_temas_preguntas tp ', '', 'WHERE p.id_tema = tp.id AND p.id_grado = _idgrado* AND p.id_materia = _idmateria* ', '', '', '', '', ''),
('preguntas por tema fis', 'NO', 'SELECT id ', 'FROM tbl_preguntas ', '', 'WHERE id_tema = _idtema* AND id_grado = _idgrado* AND id_materia = _idmateria* ', '', '', '', '', ''),
('ct preguntas por tema fis', 'NO', 'SELECT ct_preguntas ', 'FROM tbl_temas_preguntas ', '', 'WHERE id_grado = _idgrado* AND id_materia = _idmateria* AND id = _id* ', '', '', '', '', ''),
('conteos ok', 'NO', 'SELECT COUNT(1) ct_ok, identificacion ', 'FROM tbl_respuestas ', '', 'WHERE resultado = |_resultado*| AND identificacion = |_documento*| AND a = _a* ', 'GROUP BY identificacion ', '', '', '', ''),
('conteos no', 'NO', 'SELECT COUNT(1) ct_no, identificacion ', 'FROM tbl_respuestas ', '', 'WHERE resultado = |_resultado*| AND identificacion = |_documento*| AND a = _a* ', 'GROUP BY identificacion ', '', '', '', ''),
('conteos na', 'NO', 'SELECT COUNT(1) ct_na, identificacion ', 'FROM tbl_respuestas ', '', 'WHERE resultado = |_resultado*| AND identificacion = |_documento*| AND a = _a* ', 'GROUP BY identificacion ', '', '', '', ''),
('valida si hay registros en tbl_respuestas', 'NO', 'SELECT COUNT(1) ct ', 'FROM tbl_respuestas ', '', 'WHERE identificacion = |_documento*| AND a = _a* ', '', '', '', '', ''),
('consulta pensamiento', 'NO', 'SELECT id_materia ', 'FROM tbl_preguntas ', '', 'WHERE id = _id* ', '', '', '', '', ''),
('insert tbl_respuestas', 'NO', '', 'INSERT INTO tbl_respuestas ', '', '', '', '', '', '', '(id_grado, id_materia, id_pregunta, a, identificacion, respuesta, resultado, estado) VALUES (_idgrado*, _idpen*, _idpregunta*, _a*, |_documento*|, |_respuesta*|, |_resultado*|, |_estado*|)'),
('valida respuestas na', 'NO', 'SELECT * ', 'FROM tbl_respuestas ', '', 'WHERE resultado = |_resultado*| AND identificacion = |_documento*| AND a = _a* ', '', '', '', '', ''),
('actualizar respuesta presaberes', 'NO', '', 'UPDATE tbl_respuestas ', '', 'WHERE id_pregunta = _idpreg* AND identificacion = |_documento*| AND a = _a* ', '', '', 'SET respuesta = |_respuesta*|, resultado = |_resultado*| ', '', ''),
('nombre estudiante', 'NO', 'SELECT e.id, e.nombres, e.apellidos ', 'FROM tbl_estudiantes e ', '', 'WHERE e.n_documento = |_documento*| ', '', '', '', '', ''),
('conteos no num', 'NO', 'SELECT COUNT(1) ct ', 'FROM tbl_respuestas r, tbl_preguntas p ', '', 'WHERE r.id_pregunta = p.id AND r.resultado = |_resultado*| AND r.identificacion = |_documento*| AND r.a = _a* AND r.id_materia = 5 ', '', '', '', '', ''),
('conteos no bio', 'NO', 'SELECT COUNT(1) ct ', 'FROM tbl_respuestas r, tbl_preguntas p ', '', 'WHERE r.id_pregunta = p.id AND r.resultado = |_resultado*| AND r.identificacion = |_documento*| AND r.a = _a* AND r.id_materia = 1 ', '', '', '', '', ''),
('conteos no soc', 'NO', 'SELECT COUNT(1) ct ', 'FROM tbl_respuestas r, tbl_preguntas p ', '', 'WHERE r.id_pregunta = p.id AND r.resultado = |_resultado*| AND r.identificacion = |_documento*| AND r.a = _a* AND r.id_materia = 4 ', '', '', '', '', ''),
('conteos no esp', 'NO', 'SELECT COUNT(1) ct ', 'FROM tbl_respuestas r, tbl_preguntas p ', '', 'WHERE r.id_pregunta = p.id AND r.resultado = |_resultado*| AND r.identificacion = |_documento*| AND r.a = _a* AND r.id_materia = 6 ', '', '', '', '', ''),
('conteos no ing', 'NO', 'SELECT COUNT(1) ct ', 'FROM tbl_respuestas r, tbl_preguntas p ', '', 'WHERE r.id_pregunta = p.id AND r.resultado = |_resultado*| AND r.identificacion = |_documento*| AND r.a = _a* AND r.id_materia = 7 ', '', '', '', '', ''),
('conteos no tec', 'NO', 'SELECT COUNT(1) ct ', 'FROM tbl_respuestas r, tbl_preguntas p ', '', 'WHERE r.id_pregunta = p.id AND r.resultado = |_resultado*| AND r.identificacion = |_documento*| AND r.a = _a* AND r.id_materia = 9 ', '', '', '', '', ''),
('conteos no fis', 'NO', 'SELECT COUNT(1) ct ', 'FROM tbl_respuestas r, tbl_preguntas p ', '', 'WHERE r.id_pregunta = p.id AND r.resultado = |_resultado*| AND r.identificacion = |_documento*| AND r.a = _a* AND r.id_materia = 11 ', '', '', '', '', ''),
('retroalimentacion no num', 'NO', 'SELECT DISTINCT p.retroalimentacion ', 'FROM tbl_respuestas r, tbl_preguntas p ', '', 'WHERE r.id_pregunta = p.id AND r.resultado = |_resultado*| AND r.identificacion = |_documento*| AND r.a = _a* AND r.id_materia = _idmateria* ', '', '', '', '', ''),
('retroalimentacion no bio', 'NO', 'SELECT DISTINCT p.retroalimentacion ', 'FROM tbl_respuestas r, tbl_preguntas p ', '', 'WHERE r.id_pregunta = p.id AND r.resultado = |_resultado*| AND r.identificacion = |_documento*| AND r.a = _a* AND r.id_materia = _idmateria* ', '', '', '', '', ''),
('retroalimentacion no soc', 'NO', 'SELECT DISTINCT p.retroalimentacion ', 'FROM tbl_respuestas r, tbl_preguntas p ', '', 'WHERE r.id_pregunta = p.id AND r.resultado = |_resultado*| AND r.identificacion = |_documento*| AND r.a = _a* AND r.id_materia = _idmateria* ', '', '', '', '', ''),
('retroalimentacion no esp', 'NO', 'SELECT DISTINCT p.retroalimentacion ', 'FROM tbl_respuestas r, tbl_preguntas p ', '', 'WHERE r.id_pregunta = p.id AND r.resultado = |_resultado*| AND r.identificacion = |_documento*| AND r.a = _a* AND r.id_materia = _idmateria* ', '', '', '', '', ''),
('retroalimentacion no ing', 'NO', 'SELECT DISTINCT p.retroalimentacion ', 'FROM tbl_respuestas r, tbl_preguntas p ', '', 'WHERE r.id_pregunta = p.id AND r.resultado = |_resultado*| AND r.identificacion = |_documento*| AND r.a = _a* AND r.id_materia = _idmateria* ', '', '', '', '', ''),
('retroalimentacion no tec', 'NO', 'SELECT DISTINCT p.retroalimentacion ', 'FROM tbl_respuestas r, tbl_preguntas p ', '', 'WHERE r.id_pregunta = p.id AND r.resultado = |_resultado*| AND r.identificacion = |_documento*| AND r.a = _a* AND r.id_materia = _idmateria* ', '', '', '', '', ''),
('retroalimentacion no fis', 'NO', 'SELECT DISTINCT p.retroalimentacion ', 'FROM tbl_respuestas r, tbl_preguntas p ', '', 'WHERE r.id_pregunta = p.id AND r.resultado = |_resultado*| AND r.identificacion = |_documento*| AND r.a = _a* AND r.id_materia = _idmateria* ', '', '', '', '', ''),
('conteos ok por pensamiento', 'NO', 'SELECT COUNT(1) ct_ok, identificacion, id_materia ', 'FROM tbl_respuestas ', '', 'WHERE resultado = |_resultado*| AND identificacion = |_documento*| AND a = _a* ', 'GROUP BY identificacion, id_materia ', '', '', '', ''),
('conteos no por pensamiento', 'NO', 'SELECT COUNT(1) ct_no, identificacion, id_materia ', 'FROM tbl_respuestas ', '', 'WHERE resultado = |_resultado*| AND identificacion = |_documento*| AND a = _a* ', 'GROUP BY identificacion, id_materia ', '', '', '', ''),
('conteos na por pensamiento', 'NO', 'SELECT COUNT(1) ct_na, identificacion, id_materia ', 'FROM tbl_respuestas ', '', 'WHERE resultado = |_resultado*| AND identificacion = |_documento*| AND a = _a* ', 'GROUP BY identificacion, id_materia ', '', '', '', ''),
('resultado preguntas', 'NO', 'SELECT m.materia, m.pensamiento, p.pregunta, r.respuesta, r.resultado, case r.resultado when |_resultado*| then |_muyBien*| else p.retroalimentacion end comentarios, substring(p.imagen, 7) ruta ', 'FROM tbl_respuestas r, tbl_preguntas p, materias m ', '', 'WHERE r.id_pregunta = p.id AND r.id_materia = m.id AND r.a = _a* AND r.identificacion = |_documento*| ', '', '', '', '', ''),
('valida preguntas grado', 'NO', 'SELECT g.id, g.grado ', 'FROM tbl_estudiantes e, tbl_matriculas m, tbl_grados g ', '', 'WHERE e.id = m.id_estudiante AND m.id_grado = g.id AND e.n_documento = |_documento*| AND m.n_matricula like _a* AND m.estado IN (|_estado*|, |_estado1*|) ', '', '', '', '', ''),
('estudiantes activos', 'NO', 'SELECT COUNT(1) ct ', 'FROM tbl_matriculas ', '', 'WHERE n_matricula like _a* and estado = |_estado*| ', '', '', '', '', ''),
('autorizados para estados financieros', 'NO', 'SELECT * ', 'FROM tbl_empleados ', '', 'WHERE email = |_usuario*| AND n_documento = |_pass*| AND estado = |_estado*| ', '', '', '', '', ''),
('grado documento', 'NO', 'SELECT e.id, e.nombres, e.apellidos, m.id_grado, g.grado ', 'FROM tbl_estudiantes e, tbl_matriculas m, tbl_grados g ', '', 'WHERE e.id = m.id_estudiante AND m.id_grado = g.id AND e.n_documento = |_documento*| AND m.estado IN (|_estado*|, |_estado1*|) AND m.n_tbl_matriculas like _a* ', '', '', '', '', '');

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_solicitud_seguimientos;

CREATE TABLE tbl_solicitud_seguimientos (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  solicitud_por varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_stickers_virtuales;

CREATE TABLE tbl_stickers_virtuales (
  id int(11) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  documento varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  a int(11) UNSIGNED NOT NULL,
  grado int(2) UNSIGNED NOT NULL,
  nombres varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  apellidos varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  ciudad varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  departamento varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  direccion varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  celular varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_temas_preguntas;

CREATE TABLE tbl_temas_preguntas (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_grado int(11) NOT NULL,
  id_materia int(11) NOT NULL,
  tema varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  ct_preguntas int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

INSERT INTO `tbl_temas_preguntas` (`id`, `id_grado`, `id_materia`, `tema`, `ct_preguntas`) VALUES
(1, -1, -1, '  SELECCIONE TEMA', -1),
(2, 0, 0, ' OTRO', 2),
(6, 8, 5, 'OPERACIONES CON FRACCIONES', 2),
(7, 9, 5, 'SERIES Y SUCESIONES', 2),
(8, 9, 5, 'REGLA DE TRES SIMPLE', 2),
(9, 8, 5, 'RECONOCE LAS FRACCIONES', 2),
(10, 10, 5, 'DESCOMPOSICIÓN EN FACTORES PRIMOS', 1),
(11, 10, 5, 'MCM Y MCD', 2),
(12, 8, 5, 'OPERACIONES CON NÚMEROS RACIONALES', 2),
(13, 10, 5, 'SOLUCION ECUACIONES 1ER GRADO', 2),
(14, 9, 5, 'POTENCIACIÓN RADICACIÓN Y LOGARITMACIÓN', 2),
(15, 8, 5, 'ÁREAS Y PERÍMETROS', 2),
(16, 8, 5, 'RAZONAMIENTO LÓGICO', 2),
(17, 10, 59, 'RAZONAMIENTO ALGEBRAICO', 2),
(18, 10, 5, 'PRODUCTOS Y COCIENTES NOTABLES', 2),
(19, 9, 5, 'REGLA DE TRES COMPUESTA', 2),
(20, 10, 5, 'FACTORIZACIÓN', 2),
(21, 10, 5, 'ÁREAS Y VOLÚMENES', 2),
(22, 8, 5, 'CONVERSIÓN DE UNIDADES', 2),
(23, 9, 5, 'REPRESENTACIÓN DE PUNTOS EN LA RECTA', 2),
(24, 10, 5, 'TEOREMA DE PITÁGORAS', 2),
(25, 10, 5, 'MEDIDAS ESTADÍSTICAS', 2),
(26, 8, 5, 'PORCENTAJES', 2),
(27, 8, 5, 'RAZONES Y PROPORCIONES', 2),
(28, 8, 5, 'ANÁLISIS ESTADÍSTICO', 2),
(29, 8, 5, 'PROBABILIDAD', 2),
(30, 9, 5, 'ÁREAS Y PERÍMETROS', 2),
(31, 9, 5, 'RAZONAMIENTO LÓGICO', 2),
(32, 9, 5, 'RECONOCE LAS FRACCIONES', 2),
(33, 9, 5, 'ANÁLISIS ESTADÍSTICO Y PROBABILIDAD', 2),
(34, 91, 5, 'TRASLACIÓN Y ROTACIÓN', 2),
(36, 9, 5, 'SOLUCIÓN DE ECUACIONES LINEALES', 2),
(37, 101, 5, 'ÁREAS Y PERÍMETROS', 2),
(38, 101, 5, 'SERIES Y SUCESIONES', 2),
(39, 10, 5, 'RAZONAMIENTO LÓGICO', 2),
(40, 2, 5, 'COLORES', 2),
(41, 2, 5, 'NOCIÓN ESPACIAL', 5),
(42, 2, 5, 'CONTEO', 2),
(43, 2, 5, 'SUMA', 2),
(44, 2, 5, 'FIGURAS GEOMÉTRICAS', 2),
(45, 2, 5, 'NÚMEROS', 5),
(46, 2, 5, 'PENSAMIENTO LÓGICO', 2),
(47, 3, 5, 'COLORES', 2),
(48, 3, 5, 'NOCIÓN ESPACIAL', 2),
(49, 3, 5, 'CONTEO', 2),
(50, 3, 5, 'SUMA', 2),
(51, 3, 5, 'FIGURAS GEOMÉTRICAS', 2),
(52, 3, 5, 'NÚMEROS DE 100 EN 100 HASTA 1000', 2),
(53, 3, 5, 'RESTAS', 2),
(54, 3, 5, 'PENSAMIENTO LÓGICO', 2),
(55, 4, 5, 'NÚMEROS NATURALES', 1),
(56, 4, 5, 'OPERACIONES CON NÚMEROS NATURALES', 5),
(57, 4, 5, 'FIGURAS PLANAS', 2),
(58, 4, 5, 'UNIDADES DE MEDIDA', 2),
(59, 4, 5, 'ESTADÍSTICA', 2),
(60, 5, 5, 'TIEMPO', 2),
(61, 5, 5, 'NÚMEROS NATURALES', 2),
(62, 5, 5, 'OPERACIONES CON NÚMEROS NATURALES', 4),
(63, 5, 5, 'SOLUCIÓN DE PROBLEMAS', 3),
(64, 6, 5, 'TIEMPO', 2),
(65, 6, 5, 'NÚMEROS NATURALES', 2),
(66, 6, 5, 'OPERACIONES CON NÚMEROS NATURALES', 4),
(67, 6, 5, 'SOLUCIÓN DE PROBLEMAS', 3),
(68, 7, 7, 'ACTIVIDADES COTIDIANAS Y PASATIEMPOS', 2),
(69, 7, 7, 'PREGUNTAS DE INFORMACIÓN BÁSICA', 3),
(70, 7, 7, 'LA HORA Y NUMEROS', 2),
(71, 7, 7, 'ADJETIVOS: SINÓNIMOS Y ANTÓNIMOS', 3),
(72, 7, 7, 'EXPRESIONES PARA HABLAR DE ACCIONES PASADAS', 3),
(73, 7, 7, 'VOCABULARIO RELACIONADO CON LUGARES Y CLIMA', 2),
(74, 6, 5, 'PROBABILIDAD', 2),
(75, 5, 5, 'PROBABILIDAD', 2),
(76, 8, 7, 'EXPRESIONES RELACIONADAS CON RUTINAS DIARIAS', 3),
(77, 8, 7, 'PAÍSES Y NACIONALIDADES', 2),
(78, 8, 7, 'CARACTERÍSTICAS BÁSICAS DE PERSONAS, COSAS Y LUGARES', 4),
(79, 8, 7, 'EXPRESIONES PARA SALUDAR', 3),
(80, 8, 7, 'EXPRESIONES PARA PREGUNTAR', 3),
(81, 9, 7, 'COMPARACIONES Y CONTRASTES', 4),
(82, 9, 7, 'EXPRESIONES RELACIONADAS CON LA CONSERVACIÓN DEL MEDIO AMBIENTE', 3),
(83, 9, 7, 'ESTADOS DE ÁNIMO', 2),
(84, 9, 7, 'SUGERENCIAS Y RECOMENDACIONES', 4),
(86, 9, 7, 'DESCRIPCIÓN DE EXPERIENCIAS PASADAS', 4),
(87, 9, 7, 'DESCRIPCIÓN DE SITUACIONES Y EVENTOS', 4),
(88, 10, 7, 'EXPRESIONES PARA OPINAR Y DAR RAZONES', 3),
(89, 10, 7, 'FORMULAR Y RESPONDER PREGUNTAS SOBRE UN TEMA', 4),
(90, 10, 7, 'EXPRESIONES PARA PROPONER O MOSTRAR UNA SOLUCIÓN', 2),
(91, 10, 7, 'EXPRESAR SUEÑOS O PLANES FUTUROS', 3),
(92, 10, 7, 'VOCABULARIO RELACIONADO CON FENÓMENOS SOCIALES', 4),
(93, 10, 7, 'EXPRESIONES IDIOMÁTICAS', 4),
(94, 11, 7, 'EXPRESIONES PARA OPINAR SOBRE TEMAS SOCIALES', 3),
(95, 11, 7, 'EXPRESIONES DE VENTAJAS Y DESVENTAJAS', 3),
(96, 11, 7, 'EXPRESIONES PARA CITAR', 3),
(97, 11, 7, 'DAR Y SOLICITAR INFORMACIÓN SOBRE TEMAS DE INTERÉS GENERAL', 4),
(98, 11, 7, 'DAR RECOMENDACIONES SOBRE TEMAS DE INTERÉS GENERAL', 4),
(99, 11, 7, 'EXPRESIONES DE CONTRASTE Y ADICIÓN', 3),
(100, 12, 7, 'EXPRESIONES CON ACUERDOS Y DESACUERDOS', 3),
(101, 12, 7, 'EXPRESIONES PARA INICIAR, MANTENER Y TERMINAR UNA CONVERSACIÓN', 4),
(102, 12, 7, 'EXPRESIONES PARA SOLICITAR ACLARACIÓN', 3),
(103, 12, 7, 'EXPRESIONES DE CAUSA Y EFECTO', 3),
(104, 12, 7, 'EXPRESIONES PARA HABLAR SOBRE COSTUMBRES', 3),
(105, 12, 7, 'EXPRESIONES PARA HABLAR SOBRE CONSECUENCIAS', 3),
(106, 8, 9, 'CORRIENTE ELÉCTRICA', 4),
(107, 8, 9, 'MAGNITUDES ELÉCTRICAS', 3),
(108, 8, 9, 'COMPONENTES ELECTRÓNICOS', 5),
(109, 10, 9, 'SISTEMAS DE NUMERACIÓN', 2),
(110, 10, 9, 'OPERADORES LÓGICOS', 4),
(111, 10, 9, 'HOJAS DE CÁLCULO', 2),
(112, 11, 9, 'PROGRAMACIÓN', 5),
(113, 4, 9, 'HISTORIA Y EVOLUCIÓN DE LA TECNOLOGÍA', 2),
(114, 4, 9, 'INVENTOS E INNOVACIONES TECNOLÓGICAS', 2),
(115, 4, 9, 'SISTEMAS TECNOLÓGICOS', 2),
(116, 4, 9, 'HERRAMIENTAS OFIMÁTICAS', 3),
(117, 5, 9, 'FUENTES DE ENREGÍA', 2),
(118, 5, 9, 'MATERIAS PRIMAS', 2),
(119, 5, 9, 'HERRAMIENTAS INFORMÁTICAS', 2),
(120, 5, 9, 'SEÑALES PREVENTIVAS REGLAMENTARIAS E INFORMATIVAS', 2),
(121, 5, 9, 'POWERPOINT Y EXCEL', 3),
(123, 6, 9, 'MICROSOFT (EXCEL, POWERPOINT, WORD)', 3),
(124, 6, 9, 'OFIMÁTICA', 2),
(125, 6, 9, 'SISTEMAS TECNOLÓGICOS', 2),
(126, 6, 9, 'HERRAMIENTAS TECNOLÓGICAS', 2),
(127, 6, 9, 'TIPOS DE ENERGÍA', 2),
(128, 6, 9, 'FUENTES DE ENERGÍA RENOVABLES Y NO RENOVABLES', 2),
(129, 6, 9, 'HARDWARE Y SOFTWARE', 2),
(130, 7, 6, 'INTERPRETACIÓN TEXTUAL', 5),
(131, 7, 6, 'EXPRESIÓN GRAMATICAL', 5),
(132, 7, 6, 'PRODUCCIÓN TEXTUAL', 2),
(133, 8, 6, 'INTERPRETACIÓN TEXTUAL', 5),
(134, 8, 6, 'EXPRESIÓN GRAMATICAL', 5),
(135, 8, 6, 'PRODUCCIÓN TEXTUAL', 2),
(136, 9, 6, 'INTERPRETACIÓN TEXTUAL', 5),
(137, 9, 6, 'EXPRESIÓN GRAMATICAL', 5),
(138, 9, 6, 'PRODUCCIÓN TEXTUAL', 2),
(139, 10, 6, 'INTERPRETACIÓN TEXTUAL', 5),
(140, 10, 6, 'EXPRESIÓN GRAMATICAL', 5),
(141, 10, 6, 'PRODUCCIÓN TEXTUAL', 3),
(142, 11, 15, 'INTERPRETACIÓN TEXTUAL', 5),
(143, 11, 15, 'EXPRESIÓN GRAMATICAL', 4),
(144, 11, 15, 'PRODUCCIÓN TEXTUAL', 3),
(145, 12, 15, 'LECTURA CRÍTICA', 6),
(146, 12, 15, 'EXPRESIÓN GRAMATICAL', 5),
(147, 12, 15, 'PRODUCCIÓN TEXTUAL', 3),
(148, 2, 6, 'VOCALES', 2),
(149, 2, 6, 'CONSONANTE (MAYÚSCULAS Y MINÚSCULAS)', 2),
(150, 2, 6, 'PRECEPCIÓN VISUAL Y AUDITIVA (SILABAS)', 2),
(151, 2, 6, 'RELACIÓN PALABRA DIBUJO', 3),
(152, 2, 6, 'COMPRESIÓN LECTORA', 5),
(153, 2, 6, 'ORACIONES', 2),
(154, 2, 6, 'FORMANDO PALABRAS', 4),
(155, 2, 6, 'ESCRITURA Y ORTOGRAFÍA', 2),
(156, 3, 6, 'PRODUCCIÓN TEXTUAL', 2),
(157, 3, 6, 'EXPRESIÓN GRAMATICAL', 5),
(158, 3, 6, 'INTERPRETACIÓN TEXTUAL', 4),
(165, 4, 6, 'INTERPRETACIÓN TEXTUAL', 3),
(166, 4, 6, 'EXPRESIÓN GRAMATICAL', 6),
(167, 4, 6, 'PRODUCCIÓN TEXTUAL', 1),
(171, 5, 6, 'INTERPRETACIÓN TEXTUAL', 4),
(172, 5, 6, 'PRODUCCIÓN TEXTUAL', 3),
(173, 5, 6, 'EXPRESIÓN GRAMATICAL', 3),
(178, 6, 6, 'INTERPRETACIÓN TEXTUAL', 4),
(179, 6, 6, 'EXPRESIÓN GRAMATICAL', 4),
(180, 6, 6, 'PRODUCCIÓN TEXTUAL', 2),
(186, 7, 5, 'VOLÚMENES Y CUERPOS GEOMÉTRICOS', 2),
(187, 7, 5, 'ANÁLISIS DE SITUACIONES PROBLEMÁTICAS', 2),
(188, 7, 5, 'PROCESOS PROBABILÍSTICOS DE PRIMER ORDDEN SITUACIONAL', 2),
(189, 7, 5, 'MEDIDAS Y PARÁMETROS, APLICANDO LA SITUACIÓN PROBLEMÁTICA', 2),
(190, 7, 5, 'OPERACIONES UNIVERSALES', 2),
(192, 11, 5, 'FUNCIÓN LINEAL Y AFIN', 2),
(193, 11, 5, 'PENDIENTE DE LA RECTA', 2),
(194, 11, 5, 'CÁLCULO ANALÍTICO DEL PUNTO DE CORTE DE SISTEMAS LINEALES', 2),
(195, 11, 5, 'RACIONALIZACIÓN', 2),
(196, 11, 5, 'IDENTIFICACIÓN DE LA PARÁBOLA BASADOS EN LA FORMA CANÓNICA', 2),
(197, 11, 5, 'CONVERSIÓN DE PARÁBOLAS DE FORMA CANÓNICA A FORMA GENERAL', 2),
(198, 11, 5, 'DISCRIMINANTE', 2),
(199, 11, 5, 'ANÁLISIS DE GRÁFICAS Y COMPONENTES DE LA PARÁBOLA', 2),
(200, 11, 5, 'VOLÚMENES Y CUERPOS GEOMÉTRICOS', 2),
(201, 11, 5, 'PROCESOS PROBABILÍSTICOS Y ALEATORIOS', 2),
(202, 12, 5, 'ANÁLISIS DE FUNCIONES TRIGONOMÉTRICAS', 6),
(203, 12, 5, 'SITUACIONES PROBLEMÁTICAS EN DONDE INTERVIENE EL TRIÁNGULO RECTÁNGULO', 3),
(204, 12, 5, 'APLICACIÓN GENERALIZADA DE LA LEY DEL SENO', 2),
(205, 12, 5, 'APLICACIÓN GENERALIZADA DE LA LEY DEL COSENO', 2),
(206, 12, 5, 'APLICACIÓN GENERALIZADA DE LA LEY DE LA TANGENTE', 2),
(207, 12, 5, 'PROCESOS PROBABILÍSTICOS Y ALEATORIOS', 2),
(208, 12, 5, 'FIGURAS PLANAS Y VOLÚMENES', 2),
(209, 12, 11, 'MOVIMIENTO UNIFORME', 3),
(210, 12, 11, 'MOVIMIENTO ACELERADO', 3),
(211, 12, 11, 'CAÍDA LIBRE', 4),
(215, 7, 9, 'TECNOLOGIA Y SOCIEDAD', 5),
(216, 7, 9, 'MATERIALES Y ESTRUCTURAS', 3),
(217, 7, 9, 'APLICACIONES INFORMÁTICAS', 3),
(218, 9, 9, 'SOLUCIÓN DE PROBLEMAS CON TECNOLOGÍA', 4),
(219, 9, 9, 'INFORMACIÓN Y COMUNICACIÓN', 3),
(220, 9, 9, 'RIESGOS EN EL USO DE LAS TIC', 3),
(221, 12, 9, 'NATURALEZA Y EVOLUCIÓN DE LA TECNOLOGÍA', 3),
(222, 12, 9, 'LA WEB', 4),
(223, 12, 9, 'DISEÑO GRÁFICO', 3),
(224, 12, 9, 'PROGRAMACIÓN WEB: HTML Y CSS', 5),
(225, 3, 1, 'CONOCIMIENTOS BÁSICOS SOBRE ELECTRICIDAD', 1),
(234, 3, 9, 'INVENTOS E INNOVACIONES TECNOLÓGICAS', 1),
(235, 3, 9, 'HERRAMIENTAS OFIMÁTICAS', 5),
(236, 3, 9, '¿QUÉ SON LOS ARTEFACTOS TECNOLÓGICOS?', 3),
(237, 3, 9, 'LAS SEÑALES DE TRÁNSITO', 1),
(238, 4, 9, '¿QUÉ ES MULTIMEDIA?', 1),
(239, 3, 7, 'SALUDOS Y DESPEDIDA', 3),
(240, 3, 7, 'LA FAMILIA', 3),
(241, 3, 7, 'PARTES DEL CUERPO', 3),
(242, 3, 7, 'PREGUNTAS SENCILLAS SOBRE EL ENTORNO, USANDO WHAT', 2),
(243, 4, 7, 'VOCABULARIO: DÍAS DE LA SEMANA', 3),
(244, 4, 7, 'RUTINA DIARIA', 4),
(245, 4, 7, 'PREGUNTAS SENCILLAS USANDO WHAT, WHERE Y WHO CON RELACIÓN A ANIMALES Y SU ENTORNO', 4),
(246, 5, 7, 'SELF INTRODUCCIÓN', 3),
(247, 5, 7, 'FRUITS AND VEGETABLES VOCABULARY', 3),
(248, 5, 7, 'PRESENT PROGRESSIVE', 3),
(249, 5, 7, 'SEASONS, WEATHER AND CLOTHES', 3),
(250, 5, 7, 'SPORTS VOCABULARY', 3),
(251, 6, 7, 'PROFESIONES Y ACTIVIDADES', 3),
(252, 6, 7, 'EXPRESIONES PARA DISCULPARSE', 3),
(253, 6, 7, 'EXPRESIONES PARA REFERIRSE A CANTIDADES', 3),
(254, 6, 7, 'PREFERENCIAS Y GUSTOS', 3),
(255, 6, 7, 'SENTIMIENTOS Y EMOCIONES', 3),
(256, 3, 1, 'CONOCIMIENTOS BÁSICOS SOBRE LOS SENTIDOS HUMANOS', 2),
(257, 3, 1, 'CONOCIMIENTOS BÁSICOS SOBRE MEDIDAS DE LONGITUD', 1),
(258, 3, 1, 'CONOCIMIENTOS BÁSICOS SOBRE CARACTERÍSTICAS DE LOS ANIMALES', 4),
(259, 3, 1, 'CONOCIMIENTOS BÁSICOS SOBRE CARACTERÍSTICAS DE LAS PLANTAS', 1),
(260, 3, 1, 'CONOCIMIENTOS BÁSICOS SOBRE CARACTERÍSTICAS DEL CUERPO HUMANO', 1),
(261, 4, 1, 'CONOCIMIENTOS BÁSICOS SOBRE LOS PLANETAS Y EL UNIVERSO', 3),
(262, 4, 1, 'CONOCIMIENTOS BÁSICOS SOBRE EL AGUA Y SU IMPORTANCIA', 2),
(263, 4, 1, 'CONOCIMIENTOS BÁSICOS SOBRE CARACTERÍSTICAS DE LAS PLANTAS', 2),
(264, 4, 1, 'CONOCIMIENTOS BÁSICOS SOBRE CICLO DE VIDA DE LOS SERES VIVOS', 2),
(265, 4, 1, 'CONOCIMIENTOS BÁSICOS SOBRE FUERZA Y ENERGÍA', 1),
(266, 5, 1, 'CARACTERÍSTICAS DE LAS PLANTAS', 1),
(267, 5, 1, 'ESTADO DE LA MATERIA', 2),
(268, 5, 1, 'CARACTERÍSTICAS DE LA MATERIA', 1),
(269, 5, 1, 'LOS RECURSOS NATURALES', 2),
(270, 5, 1, 'EL CUERPO HUMANO', 3),
(271, 5, 1, 'ECOSISTEMAS', 1),
(272, 6, 1, 'MÁQUINAS SIMPLES Y COMPUESTAS', 1),
(273, 6, 1, 'FUERZA', 1),
(274, 6, 1, 'LA MATERIA', 4),
(275, 6, 1, 'LA CÉLULA', 3),
(276, 6, 1, 'ECOSISTEMAS', 1),
(277, 7, 1, 'ECOSISTEMAS', 3),
(278, 7, 1, 'FUERZA', 2),
(279, 7, 1, 'EL SONIDO', 1),
(280, 7, 1, 'LA ELECTRICIDAD', 2),
(281, 7, 1, 'REPRODUCCIÓN DE PLANTAS', 1),
(282, 7, 1, 'METABOLISMO HUMANO', 2),
(283, 8, 1, 'LA CÉLULA', 4),
(284, 8, 1, 'LA MATERIA', 1),
(285, 8, 1, 'MÉTODO CIENTÍFICO', 5),
(286, 9, 1, 'LA MATERIA', 1),
(287, 9, 1, 'EL ÁTOMO', 1),
(288, 9, 1, 'LA TABLA PERIÓDICA', 1),
(289, 9, 1, 'EL CUERPO HUMANO', 11),
(290, 9, 1, 'MOVIMIENTO', 1),
(291, 10, 1, 'FUNCIÓN CELULAR', 3),
(292, 10, 1, 'TIPOS DE MOVIMIENTO', 1),
(293, 10, 1, 'ESCALAS DE TEMPERATURA', 2),
(294, 10, 1, 'TEORÍA Y LEYES DE LOS GASES', 2),
(295, 10, 1, 'ENLACES QUÍMICOS', 2),
(296, 11, 10, 'LA MATERIA', 2),
(297, 11, 10, 'LA TABLA PERIÓDICA', 5),
(298, 11, 10, 'ECUACIONES QUÍMICAS', 1),
(299, 11, 10, 'SOLUCIONES QUÍMICAS', 4),
(300, 12, 10, 'PROPIEDADES FÍSICAS Y QUÍMICAS DE LA MATERIA', 3),
(301, 12, 10, 'CONFIGURACIÓN ELECTRÓNICA', 1),
(302, 12, 10, 'CINÉTICA DE LOS GASES', 1),
(303, 12, 10, 'CINÉTICA DE LAS SOLUCIONES QUÍMICAS', 1),
(304, 12, 10, 'ESCALAS DE TEMPERATURA', 1),
(305, 12, 10, 'CONVERSIÓN DE UNIDADES', 1),
(306, 12, 10, 'ENLACES QUÍMICOS', 2),
(307, 11, 11, 'CONCEPTO DE ENERGÍA Y CLASES', 3),
(308, 11, 11, 'CONCEPTO DE TRABAJO Y POTENCIA', 3),
(309, 11, 11, 'TRANSFORMACIONES DE LA ENERGÍA', 3),
(310, 11, 11, 'FUENTES DE ENERGÍA', 3),
(311, 11, 11, 'CONVERSIONES DE UNIDADES', 3),
(317, 12, 12, 'ECONOMÍA', 5),
(318, 12, 12, 'POLÍTICA', 5),
(319, 10, 4, 'REVOLUCIONES, PROCESOS DE CAMBIO Y ESTADOS NACIÓN LATINOAMERICANOS', 2),
(320, 10, 4, 'EL PODER POLÍTICO', 2),
(321, 10, 4, 'CONSTITUCIÓN POLÍTICA COLOMBIANA 1991', 2),
(322, 10, 4, 'IMPERIALIAMO COLONIALISMO', 2),
(323, 10, 4, 'COLOMBIA SIGLO XIX ESTADO NACIÓN Y EL MUNDO EN EL SIGLO XX', 2),
(324, 9, 4, 'ANTROPOLOGÍA', 1),
(325, 9, 4, 'SOCIOLOGÍA', 4),
(326, 9, 4, 'HISTORIA', 5),
(327, 6, 4, 'GEOGRAFÍA', 6),
(328, 6, 4, 'SOCIOLOGÍA', 4),
(330, 7, 4, 'ANTROPOLOGÍA', 4),
(331, 7, 4, 'HISTORIA', 1),
(332, 7, 4, 'SOCIOLOGÍA', 5),
(333, 11, 12, 'EL MUNDO EN EL SIGLO XX', 2),
(334, 11, 12, 'AMÉRICA LATINA EN EL SIGLO XX Y MOVIMIENTOS POPULARES EN LATINOAMERICANOS', 2),
(335, 11, 12, 'COLOMBIA EN EL SIGLO XX', 2),
(336, 11, 12, 'COLOMBIA COMO PAÍS Y ESTADO', 2),
(337, 11, 12, 'DERECHOS HUMANOS Y PARTICIPACIÓN CIUDADANA EN COLOMBIA', 2),
(338, 8, 4, 'ANTROPOLOGÍA', 3),
(339, 8, 4, 'HISTORIA', 4),
(340, 8, 4, 'GEOGRAFÍA', 3),
(341, 4, 4, 'SOCIOLOGÍA', 4),
(342, 4, 4, 'HISTORIA', 1),
(343, 4, 4, 'GEOGRAFÍA', 4),
(344, 5, 4, 'ANTROPOLOGÍA', 1),
(345, 5, 4, 'GEOGRAFÍA', 9),
(346, 3, 4, 'SOCIOLOGÍA', 4),
(347, 3, 4, 'GEOGRAFÍA', 6),
(348, 19, 0, 'HTML5', 22),
(349, 19, 0, 'CSS3', 10),
(350, 19, 0, 'JAVASCRIPT', 23),
(351, 19, 0, 'HTML5CSS3', 15),
(352, 19, 0, 'JQUERY', 20),
(353, 20, 0, 'PHP', 50),
(354, 20, 0, 'MYSQL', 40);

ALTER TABLE tbl_temas_preguntas AUTO_INCREMENT = 355;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_temas_preguntas_num;

CREATE TABLE tbl_temas_preguntas_num (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_grado int(11) NOT NULL,
  id_materia int(11) NOT NULL,
  tema varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  ct_preguntas int(4) NOT NULL,
  componente varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  retro varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_temp;

CREATE TABLE tbl_temp (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  c1 varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  v1 int(11) NOT NULL,
  C2 varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_temp1;

CREATE TABLE tbl_temp1 (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  t1 varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_tipos_agenda;

CREATE TABLE tbl_tipos_agenda (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  tipo_agenda varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

INSERT INTO tbl_tipos_agenda (tipo_agenda) VALUES
(' Seleccione');

UPDATE tbl_tipos_agenda SET id = 0 WHERE id = 1;

ALTER TABLE tbl_tipos_agenda
MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

INSERT INTO tbl_tipos_agenda (tipo_agenda) VALUES
('ACOMPAÑAMIENTO'),
('DIRECCION GRADO'),
('INDUCCION'),
('REUNION ACADEMICA'),
('REUNION ADMINISTRATIVA'),
('REUNION EQUIPO CREATIVO'),
('REUNION EVENTOS'),
('REUNION FINANCIERA'),
('REUNION GIU'),
('REUNION PENSAMIENTO'),
('REUNION PRACTICAS UNIVERSITARIAS'),
('REUNION PROYECTOS'),
('REUNION PSICOLOGIA'),
('REUNION SISTEMAS'),
('TUTORIA'),
('VALORACION'),
('CIERRE VALORACION'),
('ENTREVISTA'),
('SEGUIMIENTO');

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_tipo_preguntas;

CREATE TABLE tbl_tipo_preguntas (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  tipo_pregunta varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

INSERT INTO tbl_tipo_preguntas (tipo_pregunta) VALUES
('Seleccione tipo pregunta'),
('Respuesta corta'),
('Selección sencilla'),
('Selección múltiple 2'),
('Selección múltiple 3');

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_tp;

CREATE TABLE tbl_tp (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  tipo_persona varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

INSERT INTO tbl_tp (tipo_persona) VALUES
(' SELECCIONE');

UPDATE tbl_tp SET id = -1 WHERE id = 1;

ALTER TABLE tbl_tp
MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

INSERT INTO tbl_tp (tipo_persona) VALUES
('NATURAL'),
('JURIDICA');

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_usuarios_domain;

CREATE TABLE tbl_usuarios_domain (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  usuario varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  id_palabras varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  fecha_registro date NOT NULL,
  ultimo_id_cambiado int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_usuarios_domain_i;

CREATE TABLE tbl_usuarios_domain_i (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  usuario varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  id_palabras varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  fecha_registro date NOT NULL,
  ultimo_id_cambiado int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_usuarios_domain_palabras;

CREATE TABLE tbl_usuarios_domain_palabras (
  usuario varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  id_palabra varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_usuarios_domain_palabras_i;

CREATE TABLE tbl_usuarios_domain_palabras_i (
  usuario varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  id_palabra varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_usu_preguntas;

CREATE TABLE tbl_usu_preguntas (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_empleado int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

INSERT INTO tbl_usu_preguntas (id_empleado) VALUES
(9),
(10),
(12),
(14),
(18),
(20),
(24),
(25),
(26),
(27),
(50),
(16),
(19),
(34),
(11);

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_asistente_virtual_comprobantes_pago;

CREATE TABLE tbl_asistente_virtual_comprobantes_pago (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  documento varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  a int(11) UNSIGNED NOT NULL,
  tipo varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL COMMENT 'deuda, matrícula',
  ruta varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  valor int(11) NOT NULL DEFAULT 0,
  validado int(2) UNSIGNED NOT NULL,
  correo int(2) NOT NULL DEFAULT 0,
  rechazado int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

ALTER TABLE tbl_asistente_virtual_comprobantes_pago
ADD UNIQUE KEY documento (documento,a,tipo);

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_asistente_virtual_pasos;

CREATE TABLE tbl_asistente_virtual_pasos (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  paso varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  descripcion varchar(100) NOT NULL,
  paso_numero int(11) UNSIGNED NOT NULL,
  etiqueta_intencion varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

INSERT INTO tbl_asistente_virtual_pasos (id, paso, descripcion, paso_numero, etiqueta_intencion) VALUES
(1, '0', 'documento_estudiante', 0, 'menu_inicial'),
(2, '1.1', 'bienvenida antiguo sin deuda', 110000, 'bienvenida_ant_sd'),
(3, '1.2', 'datos actuales antiguo sin deuda', 120000, 'datos_actuales_ant_sd'),
(4, '1.2.1', 'actualiza datos antiguo sin deuda', 121000, 'actualiza_datos_ant_sd'),
(5, '1.3', 'costos matrícula antiguo sin deuda', 130000, 'costos_matricula_ant_sd'),
(6, '1.3.1', 'comprobante matrícula antiguo sin deuda', 131000, 'comprobante_matricula_ant_sd'),
(7, '1.3.2', 'validando comprobante matrícula antiguo sin deuda', 132000, 'validando_comprobante_matricula_ant_sd'),
(8, '1.4', 'documentos y datos finales antiguo sin deuda', 140000, 'documentos_finales_ant_sd'),
(9, '1.4.1', 'validando documentos antiguo sin deuda', 141000, 'validando_documentos_ant_sd'),
(10, '1.5', 'resumen antiguo sin deuda', 150000, 'resumen_ant_sd'),
(11, '2.1', 'bienvenida antiguo con deuda', 210000, 'bienvenida_ant_cd'),
(12, '2.1.1', 'valor deuda antiguo con deuda', 211000, 'valor_dueda_ant_cd'),
(13, '2.1.1.1', 'comprobante pago deuda antiguo con deuda', 211100, 'comprobante_deuda_ant_cd'),
(14, '2.1.1.2', 'validando comprobante deuda antiguo con deuda', 211200, 'validando_comprobante_deuda_ant_cd'),
(15, '2.2', 'datos actuales antiguo con deuda', 220000, 'datos_actuales_ant_cd'),
(16, '2.2.1', 'actualiza datos antiguo con deuda', 221000, 'actualiza_datos_ant_cd'),
(17, '2.3', 'costos matrícula antiguo con deuda', 230000, 'costos_matricula_ant_cd'),
(18, '2.3.1', 'comprobante matrícula antiguo con deuda', 231000, 'comprobante_matricula_ant_cd'),
(19, '2.3.2', 'validando comprobante matrícula antiguo con deuda', 232000, 'validando_comprobante_matricula_ant_cd'),
(20, '2.4', 'documentos y datos finales antiguo con deuda', 240000, 'documentos_finales_ant_cd'),
(21, '2.4.1', 'validando documentos antiguo con deuda', 241000, 'validando_documentos_ant_cd'),
(22, '2.5', 'resumen antiguo con deuda', 250000, 'resumen_ant_cd'),
(23, '3.1', 'bienvenida antiguo nuevo con deuda', 310000, 'bienvenida_ant_nuevo_cd'),
(24, '3.1.1', 'valor deuda antiguo nuevo con deuda', 311000, 'opciones_pago_deuda_antiguo_nuevo'),
(25, '3.1.1.1', 'comprobante pago deuda antiguo nuevo con deuda', 311100, 'comprobante_deuda_ant_nuevo_cd'),
(26, '3.1.1.2', 'validando comprobante deuda antiguo nuevo con deuda', 311200, 'validando_comprobante_deuda_ant_nuevo_cd'),
(27, '3.2', 'datos actuales antiguo nuevo con deuda', 320000, 'datos_actuales_ant_nuevo_cd'),
(28, '3.2.1', 'actualiza datos antiguo nuevo con deuda', 321000, 'datos_actuales_ant_nuevo_cd'),
(29, '3.3', 'evaluación admisión antiguo nuevo con deuda', 330000, 'evaluacion_admision_ant_nuevo_cd'),
(30, '3.4', 'entrevista antiguo nuevo con deuda', 340000, 'entrevista_ant_nuevo_cd'),
(31, '3.5', 'costos matrícula antiguo nuevo con deuda', 350000, 'costos_matricula_ant_nuevo_cd'),
(32, '3.5.1', 'comprobante matrícula antiguo nuevo con deuda', 351000, 'comprobante_matricula_ant_nuevo_cd'),
(33, '3.5.2', 'validando comprobante matrícula antiguo nuevo con deuda', 352000, 'validando_comprobante_matricula_ant_nuevo_cd'),
(34, '3.6', 'documentos y datos finales antiguo nuevo con deuda', 360000, 'documentos_finales_ant_nuevo_cd'),
(35, '3.6.1', 'validando documentos antiguo nuevo con deuda', 361000, 'validando_documentos_ant_nuevo_cd'),
(36, '3.7', 'resumen antiguo nuevo con deuda', 370000, 'resumen_ant_nuevo_cd'),
(37, '4.1', 'bienvenida antiguo nuevo sin deuda', 410000, 'bienvenida_ant_nuevo_sd'),
(38, '4.2', 'datos actuales antiguo nuevo sin deuda', 420000, 'datos_actuales_ant_nuevo_sd'),
(39, '4.2.1', 'actualiza datos antiguo nuevo sin deuda', 421000, 'actualiza_datos_ant_nuevo_sd'),
(40, '4.3', 'evaluación admisión antiguo nuevo sin deuda', 430000, 'evaluacion_admision_ant_nuevo_sd'),
(41, '4.4', 'entrevista antiguo nuevo sin deuda', 440000, 'entrevista_ant_nuevo_sd'),
(42, '4.5', 'costos matrícula antiguo nuevo sin deuda', 450000, 'costos_matricula_ant_nuevo_sd'),
(43, '4.5.1', 'comprobante matrícula antiguo nuevo sin deuda', 451000, 'comprobante_matricula_ant_nuevo_sd'),
(44, '4.5.2', 'validando comprobante matrícula antiguo nuevo sin deuda', 452000, 'validando_comprobante_matricula_ant_nuevo_sd'),
(45, '4.6', 'documentos y datos finales antiguo nuevo sin deuda', 460000, 'documentos_finales_ant_nuevo_sd'),
(46, '4.6.1', 'validando documentos antiguo nuevo sin deuda', 461000, 'validando_documentos_ant_nuevo_sd'),
(47, '4.7', 'resumen antiguo nuevo sin deuda', 470000, 'resumen_ant_nuevo_sd'),
(48, '5.1', 'bienvenida nuevo', 510000, 'bienvenida_nuevo'),
(49, '5.2', 'mostrar formulario inicial nuevo', 520000, 'formulario_inicial_nuevo'),
(50, '5.3', 'evaluación admisión nuevo', 530000, 'evaluacion_admision_nuevo'),
(51, '5.4', 'entrevista nuevo', 540000, 'entrevista_nuevo'),
(52, '5.5', 'costos de matrícula nuevo', 550000, 'costos_matricula_nuevo'),
(53, '5.5.1', 'comprobante pago matrícula nuevo', 551000, 'comprobante_matricula_nuevo'),
(54, '5.5.2', 'validando comprobante pago matrícula nuevo', 552000, 'validando_comprobante_matricula_nuevo'),
(55, '5.6', 'documentos y datos finales nuevo', 560000, 'documentos_finales_nuevo'),
(56, '5.6.1', 'validando documentos nuevo', 561000, 'validando_documentos_nuevo'),
(57, '5.7', 'mostrar resumen nuevo', 570000, 'resumen_nuevo');

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_asistente_virtual;

CREATE TABLE tbl_asistente_virtual (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  documento_estudiante varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  a int(4) UNSIGNED NOT NULL,
  proceso_iniciado int(2) UNSIGNED NOT NULL DEFAULT 1,
  paso varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '1',
  antiguo int(2) UNSIGNED NOT NULL DEFAULT 0,
  control_antiguos int(2) UNSIGNED NOT NULL DEFAULT 0,
  nuevo int(2) UNSIGNED NOT NULL DEFAULT 0,
  id_grado int(11) UNSIGNED NOT NULL DEFAULT 0,
  con_deuda int(2) UNSIGNED NOT NULL DEFAULT 0,
  deuda int(11) UNSIGNED NOT NULL DEFAULT 0,
  control_documentos_invalidos int(2) NOT NULL DEFAULT 0,
  fecha datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_estudiantes;

CREATE TABLE tbl_estudiantes (
  id int(5) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  apellidos varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  nombres varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  genero varchar(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  tipo_documento varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  n_documento varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  fecha_nacimiento date DEFAULT NULL,
  expedicion varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  ciudad varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  direccion varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  direccion_estudiante varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  telefono_estudiante varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  email_institucional varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT 'NA',
  actividad_extra varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT 'No Registra',
  email_acudiente_1 varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  email_acudiente_2 varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  acudiente_1 varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  acudiente_2 varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  telefono_acudiente_1 varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  telefono_acudiente_2 varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  parentesco_acudiente_1 varchar(10) DEFAULT 'NA',
  parentesco_acudiente_2 varchar(10) DEFAULT 'NA',
  rh varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT '--',
  password varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  mensaje varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  fecha_datos date NOT NULL,
  documento_responsable varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  situacion_se varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

ALTER TABLE tbl_estudiantes
ADD UNIQUE KEY n_documento (n_documento);

INSERT INTO tbl_estudiantes (apellidos, nombres, genero, tipo_documento, n_documento, fecha_nacimiento, expedicion, ciudad, direccion, direccion_estudiante, telefono_estudiante, email_institucional, actividad_extra, email_acudiente_1, email_acudiente_2, acudiente_1, acudiente_2, telefono_acudiente_1, telefono_acudiente_2, parentesco_acudiente_1, parentesco_acudiente_2, rh, password, mensaje, fecha_datos, documento_responsable, situacion_se) VALUES
('FIGUEREDO GUEVARA', 'GREGORY HERNANDO', 'MASCULINO', '3', '93974544', '1973-01-10', 'SOGAMOSO', 'SOGAMOSO', 'CA 14 2-27', 'CA 14 2-27', '1234567', 'gregory.figueredo@unicab.org', 'PROG', 'gregory.figueredo@unicab.org', '', 'ANA ELVA GUEVARA', '', '3192997229', '', 'MADRE', 'NA', 'B+', '9397454', '', '2023-10-29', '23543550', 'PRUEBA'),
('FIGUEREDO GUEVARA', 'GREGORY HERNANDO', 'MASCULINO', '3', '93974543', '1973-01-10', 'SOGAMOSO', 'SOGAMOSO', 'CA 14 2-27', 'CA 14 2-27 	', '1234567', 'gregory.figueredo@unicab.org', 'PROG', 'gregory.figueredo@unicab.org', '', 'ANA ELVA GUEVARA', '', '3192997229', '', 'MADRE', 'NA', 'B+', '9397454', '', '2023-10-29', '23543550', 'PRUEBA'),
('FIGUEREDO GUEVARA', 'GREGORY HERNANDO', 'MASCULINO', '3', '93974542', '1973-01-10', 'SOGAMOSO', 'SOGAMOSO', 'CA 14 2-27', 'CA 14 2-27', '1234567', 'gregory.figueredo@unicab.org', 'PROG', 'gregory.figueredo@unicab.org', '', 'ANA ELVA GUEVARA', '', '3192997229', '', 'MADRE', 'NA', 'B+', '9397454', '', '2023-10-29', '23543550', 'PRUEBA'),
('FIGUEREDO GUEVARA', 'GREGORY HERNANDO', 'MASCULINO', '3', '93974541', '1973-01-10', 'SOGAMOSO', 'SOGAMOSO', 'CA 14 2-27', 'CA 14 2-27', '1234567', 'gregory.figueredo@unicab.org', 'PROG', 'gregory.figueredo@unicab.org', '', 'ANA ELVA GUEVARA', '', '3192997229', '', 'MADRE', 'NA', 'B+', '9397454', '', '2023-10-29', '23543550', 'PRUEBA')
;

UPDATE tbl_estudiantes SET id = -1 WHERE n_documento = '93974541';
UPDATE tbl_estudiantes SET id = -2 WHERE n_documento = '93974542';
UPDATE tbl_estudiantes SET id = -3 WHERE n_documento = '93974543';
UPDATE tbl_estudiantes SET id = -4 WHERE n_documento = '93974544';

ALTER TABLE tbl_estudiantes
MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_generos;

CREATE TABLE tbl_generos (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  genero varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

INSERT INTO tbl_generos (genero) VALUES
('FEMENINO'),
('MASCULINO');

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_matriculas;

CREATE TABLE tbl_matriculas (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  n_matricula varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  fecha_ingreso date DEFAULT NULL,
  estado varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT 'pre_solicitud',
  id_estudiante int(11) NOT NULL,
  id_grado int(2) NOT NULL,
  estado_grado varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  grupo varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

INSERT INTO tbl_matriculas (n_matricula, fecha_ingreso, estado, id_estudiante, id_grado, estado_grado, grupo) VALUES
('-1-2025-4G', '2025-01-01', 'aprobado', -4, 4, 'ant nuevo', 'A'),
('-2-2025-4G', '2025-01-01', 'aprobado', -3, 4, 'ant nuevo con deuda', 'A'),
('-3-2024-4G', '2024-01-01', 'aprobado', -2, 4, 'ant con deuda', 'A'),
('-4-2024-4G', '2024-01-01', 'aprobado', -1, 4, 'ant', 'A')
;

UPDATE tbl_matriculas SET id = -1 WHERE id_estudiante = -1;
UPDATE tbl_matriculas SET id = -2 WHERE id_estudiante = -2;
UPDATE tbl_matriculas SET id = -3 WHERE id_estudiante = -3;
UPDATE tbl_matriculas SET id = -4 WHERE id_estudiante = -4;

ALTER TABLE tbl_matriculas
MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_tipos_documento;

CREATE TABLE tbl_tipos_documento (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  tipo_documento varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

INSERT INTO tbl_tipos_documento (tipo_documento) VALUES
('TARJETA DE IDENTIDAD'),
('REGISTRO CIVIL'),
('CEDULA'),
('PASAPORTE'),
('PERMISO DE PERMANENCIA TEMPORAL'),
('PERMISO POR PROTECCIÓN TEMPORAL');


/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_grados;

CREATE TABLE tbl_grados (
  id int(2) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  grado varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

INSERT INTO tbl_grados (grado) VALUES
('Sin grado'),
('Primero'),
('Segundo'),
('Tercero'),
('Cuarto'),
('Quinto'),
('Sexto'),
('Séptimo'),
('Octavo'),
('Noveno'),
('Décimo'),
('UnDécimo'),
('Ciclo I'),
('Ciclo II'),
('Ciclo III'),
('Ciclo IV'),
('Ciclo V'),
('Ciclo VI')
;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_pre_matriculas;

CREATE TABLE tbl_pre_matriculas (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_grado int(11) DEFAULT NULL,
  documento_est varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  nombres_est varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  apellidos_est varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  fecha date NOT NULL,
  actividad_extra varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  nombre_a varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  celular_a varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  email_a varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  ciudad_a varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  observaciones varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  entrevista varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  observaciones_ent varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  admitido int(2) NOT NULL DEFAULT 0,
  eval int(2) NOT NULL DEFAULT 0,
  id_medio int(11) DEFAULT NULL,
  interesado varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  año int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

INSERT INTO tbl_pre_matriculas (id_grado, documento_est, nombres_est, apellidos_est, fecha, actividad_extra, nombre_a, celular_a, email_a, ciudad_a, observaciones, entrevista, observaciones_ent, admitido, eval, id_medio, interesado, año) VALUES
(5, '93974544', 'GREGORY HERNANDO', 'FIGUEREDO GUEVARA', '2025-11-12', 'PROG', 'ANA ELVA GUEVARA', '3192997229', 'gregory.figueredo@unicab.org', '', NULL, 'NO', 'PRUEBA', 0, 0, 3, NULL, 2026),
(5, '93974545', 'GREGORY HERNANDO', 'FIGUEREDO GUEVARA', '2025-11-17', 'NINGUNA', 'ANA ELVA GUEVARA', '3192997229', 'gregory.figueredo@unicab.org', '', NULL, 'NO', 'PRUEBA', 0, 0, 1, NULL, 2026),
(5, '93974542', 'GREGORY HERNANDO', 'FIGUEREDO GUEVARA', '2025-11-05', 'PROG', 'ANA ELVA GUEVARA', '3192997229', 'gregory.figueredo@unicab.org', '', NULL, 'NO', NULL, 0, 0, 1, NULL, 2026),
(5, '93974541', 'GREGORY HERNANDO', 'FIGUEREDO GUEVARA', '2025-11-05', 'PROG', 'ANA ELVA GUEVARA', '3192997229', 'gregory.figueredo@unicab.org', '', NULL, 'NO', NULL, 0, 0, 1, NULL, 2026)
;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_entrevistas;

CREATE TABLE tbl_entrevistas (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_psicologo int(11) NOT NULL,
  fecha date NOT NULL,
  hora varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  documento_est varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  nombre_est varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  generar_contrato varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_parametros;

CREATE TABLE tbl_parametros (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  parametro varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  v1 int(11) DEFAULT NULL,
  v2 int(11) DEFAULT NULL,
  t1 varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  t2 varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  f1 date DEFAULT NULL,
  f2 date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

INSERT INTO tbl_parametros (parametro, v1, v2, t1, t2, f1, f2) VALUES
('mat_ordinarias', NULL, NULL, NULL, NULL, '2025-10-01', '2026-03-31'),
('mat_extraordinarias', NULL, NULL, NULL, NULL, '2025-10-01', '2026-03-31')
;


/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_estudiantes_bloqueados;

CREATE TABLE tbl_estudiantes_bloqueados (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  n_documento varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_deudas_anteriores;

CREATE TABLE tbl_deudas_anteriores (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  documento varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  a int(11) UNSIGNED NOT NULL,
  deuda int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

INSERT INTO tbl_deudas_anteriores (documento, a, deuda) VALUES
('93974543', 2022, 923900),
('93974543', 2023, 90400);

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_informacion_financiera;

CREATE TABLE tbl_informacion_financiera (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  documento_estudiante varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  periodo_ingreso int(11) NOT NULL DEFAULT 0,
  a int(11) NOT NULL DEFAULT 0,
  documento_acudiente varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  deuda_anterior int(11) NOT NULL DEFAULT 0,
  matricula_ocp int(11) NOT NULL DEFAULT 0,
  valor_pension_mes int(11) NOT NULL DEFAULT 0,
  total_pension_anual int(11) NOT NULL DEFAULT 0,
  cantidad_pensiones int(11) NOT NULL DEFAULT 0,
  derechos_grado int(11) NOT NULL DEFAULT 0,
  icfes int(11) NOT NULL DEFAULT 0,
  total_pagar_anual int(11) NOT NULL DEFAULT 0,
  pago_deuda int(11) NOT NULL DEFAULT 0,
  pago_matricula varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  pago_icfes varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  pago_derechos_grado varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  valor_recargo int(11) NOT NULL DEFAULT 0,
  diciembre int(11) NOT NULL DEFAULT 0,
  enero int(11) NOT NULL DEFAULT 0,
  febrero int(11) NOT NULL DEFAULT 0,
  marzo int(11) NOT NULL DEFAULT 0,
  abril int(11) NOT NULL DEFAULT 0,
  mayo int(11) NOT NULL DEFAULT 0,
  junio int(11) NOT NULL DEFAULT 0,
  julio int(11) NOT NULL DEFAULT 0,
  agosto int(11) NOT NULL DEFAULT 0,
  septiembre int(11) NOT NULL DEFAULT 0,
  octubre int(11) NOT NULL DEFAULT 0,
  noviembre int(11) NOT NULL DEFAULT 0,
  cantidad_pensiones_pagas int(11) NOT NULL DEFAULT 0,
  total_pagado int(11) NOT NULL DEFAULT 0,
  saldo_pendiente int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

INSERT INTO tbl_informacion_financiera (documento_estudiante, periodo_ingreso, a, documento_acudiente, deuda_anterior, matricula_ocp, valor_pension_mes, total_pension_anual, cantidad_pensiones, derechos_grado, icfes, total_pagar_anual, pago_deuda, pago_matricula, pago_icfes, pago_derechos_grado, valor_recargo, diciembre, enero, febrero, marzo, abril, mayo, junio, julio, agosto, septiembre, octubre, noviembre, cantidad_pensiones_pagas, total_pagado, saldo_pendiente) VALUES
('93974543', 1, 2025, '23453550', 1287500, 410475, 249625, 2496250, 10, 0, 0, 4194225, 0, 'SI', 'NO', 'NO', 0, 0, 660100, 0, 249625, 249625, 249625, 499250, 0, 249625, 0, 0, 0, 7, 2157850, 2036375),
('93974542', 1, 2025, '23453550', 500000, 410475, 249625, 2496250, 10, 0, 0, 2906725, 0, 'SI', 'NO', 'NO', 0, 0, 660100, 0, 249625, 249625, 249625, 499250, 0, 249625, 0, 0, 0, 7, 2157850, 748875),
('93974541', 1, 2025, '23453550', 0, 410475, 249625, 2496250, 10, 0, 0, 3406725, 0, 'SI', 'NO', 'NO', 0, 0, 660100, 0, 249625, 249625, 249625, 499250, 0, 249625, 0, 0, 0, 7, 2157850, 1248875),
('93974544', 1, 2025, '23453550', 0, 410475, 249625, 2496250, 10, 0, 0, 2906725, 0, 'SI', 'NO', 'NO', 0, 0, 660100, 0, 249625, 249625, 249625, 499250, 0, 249625, 0, 0, 0, 7, 2157850, 748875)
;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_documentos_matriculas;

CREATE TABLE tbl_documentos_matriculas (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  documento varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  a int(11) UNSIGNED NOT NULL,
  tipo varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  ruta varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  validado int(2) UNSIGNED NOT NULL,
  correo int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_costos;

CREATE TABLE tbl_costos (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  a int(11) NOT NULL,
  id_grado int(11) NOT NULL,
  matricula int(11) NOT NULL,
  pension int(11) NOT NULL,
  ocp int(11) NOT NULL,
  poliza int(11) NOT NULL,
  dg int(11) NOT NULL,
  dgv int(11) NOT NULL,
  pp int(11) NOT NULL,
  mocp int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

INSERT INTO tbl_costos (a, id_grado, matricula, pension, ocp, poliza, dg, dgv, pp, mocp) VALUES
(2026, 2, 275507, 247956, 133114, 25364, 0, 0, 656577, 408621),
(2026, 3, 277361, 249625, 133114, 25364, 0, 0, 660100, 410475),
(2026, 4, 277361, 249625, 133114, 25364, 0, 0, 660100, 410475),
(2026, 5, 277361, 249625, 133114, 25364, 0, 0, 660100, 410475),
(2026, 6, 277361, 249625, 133114, 25364, 319000, 0, 660100, 410475),
(2026, 7, 277361, 249625, 133114, 25364, 0, 0, 660100, 410475),
(2026, 8, 251299, 226170, 133114, 25364, 0, 0, 610583, 384413),
(2026, 9, 251299, 226170, 133114, 25364, 0, 0, 610583, 384413),
(2026, 10, 250135, 225122, 133114, 25364, 319000, 0, 608371, 383249),
(2026, 11, 250135, 225122, 133114, 25364, 0, 0, 608371, 383249),
(2026, 12, 250135, 225122, 133114, 25364, 319000, 0, 608371, 383249),
(2026, 13, 128106, 115296, 96500, 0, 0, 0, 339902, 224606),
(2026, 14, 128106, 115296, 96500, 0, 0, 0, 339902, 224606),
(2026, 15, 128106, 115296, 96500, 0, 0, 0, 339902, 224606),
(2026, 16, 128106, 115296, 96500, 0, 259000, 0, 339902, 224606),
(2026, 17, 68700, 61830, 96500, 0, 0, 0, 227030, 165200),
(2026, 18, 68700, 61830, 96500, 0, 259000, 0, 227030, 165200),
(2026, 0, 0, 0, 0, 0, 0, 0, 76500, 116500)
;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_medios_llegada;

CREATE TABLE tbl_medios_llegada (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  medio varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

INSERT INTO tbl_medios_llegada (medio) VALUES
('PAGINA WEB UNICAB'),
('OTRAS PAGINAS WEB'),
('RECOMENDACION'),
('REDES SOCIALES');

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_parentescos;

CREATE TABLE tbl_parentescos (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  parentesco varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
);

INSERT INTO tbl_parentescos (parentesco) VALUES
('MADRE'),
('PADRE'),
('ABUELA'),
('ABUELO'),
('HERMANA'),
('HERMANO'),
('TIA'),
('TIO'),
('PRIMA'),
('PRIMO'),
('OTRO');

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_instituciones;

CREATE TABLE tbl_instituciones (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nombre varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  logo varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  slogan varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  dominio varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
);

  INSERT INTO tbl_instituciones (nombre, logo, slogan, dominio) VALUES 
  ('GHF SCHOOL', 'chatbot/img/logo_ghfschool3.png', 'Sabiduría y Crecimiento', 'ghfscholl.digitalnextstep.link');

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_colores;

CREATE TABLE tbl_colores (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_institucion int(11) NOT NULL,
  color1 varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  color2 varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  color3 varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  color4 varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  color5 varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
);

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_textos;

CREATE TABLE tbl_textos (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_institucion int(11) NOT NULL,
  texto1 varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  texto2 varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  texto3 varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  texto4 varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  texto5 varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  texto6 varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  texto7 varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  texto8 varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  texto9 varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  texto10 varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  texto11 varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  texto12 varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  texto13 varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  texto14 varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  texto15 varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
);

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_respuestas;

CREATE TABLE tbl_respuestas (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_grado int(11) NOT NULL,
  id_materia int(11) NOT NULL,
  id_pregunta int(11) NOT NULL,
  a int(11) NOT NULL,
  identificacion varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  respuesta varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  resultado varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  estado varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_empleados;

CREATE TABLE tbl_empleados (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nombres varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  apellidos varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  email varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  pc varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  perfil varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  n_documento int(11) NOT NULL,
  dependencia varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  skype varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  celular varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  celular_what varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  cargo varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  profesion varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  descripcion varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  foto varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  nombre_corto varchar(100)  CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  infografia varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  rh varchar(10)  CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'NA',
  estado varchar(20)  CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'activo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

INSERT INTO tbl_empleados (nombres, apellidos, email, pc, perfil, n_documento, dependencia, skype, celular, celular_what, cargo, profesion, descripcion, foto, nombre_corto, infografia, rh, estado) VALUES
('NA', 'NA', 'NA', 'NA', 'NA', 0, 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA');

UPDATE tbl_empleados SET id = 0 WHERE n_documento = 0;

ALTER TABLE tbl_empleados
MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

INSERT INTO tbl_empleados (nombres, apellidos, email, pc, perfil, n_documento, dependencia, skype, celular, celular_what, cargo, profesion, descripcion, foto, nombre_corto, infografia, rh, estado) VALUES
('IMELDA', 'VERGARA', 'rectoria@unicab.org', 'aGaZRQ3n55KcwCxx/enWHg==', 'AR_AW', 46352177, 'RECTORIA', 'NA', '', '322 254 0389', 'RECTORA', 'INGENIERA DE MINAS', 'Soy respetuosa de mí misma, autónoma, comprometida y agradecida con la vida. Ingeniera de Minas de profesión, gerente social por convicción, apasionada por aprender, investigar y liderar procesos que generen mejores condiciones de vida, con respeto, dignidad y confiabilidad. Me encanta bailar, degustar buenos alimentos y caminar para mantener mi cuerpo, mi mente y mi alma en equilibrio. Feliz por ser la cocreadora de UNICAB, de ver los excelentes resultados de quienes han confiado en este proyecto. Sueño con un mundo de seres humanos felices, libres y en armonía con la naturaleza.', '../../../assets/img/equipo/imeldavergara.png', 'Imelda Vergara', NULL, 'O +', 'activo'),
('JULIAN ADOLFO', 'MESA VERGARA', 'psico01@unicab.org', 'Dhph+K0OBrDCxpTvKawNRp093HwtKghR9lWYsXhn0Lw=', 'AR_AW', 1057583959, 'COORDINACION ACADEMICA', 'https://meet.google.com/hfj-atbe-bjm', '318 400 4412', '318 400 4412', 'COORDINADOR ACADEMICO', 'PSICÓLOGO CLINICO', 'Soy un apasionado por el deporte y la lectura ya que fue un privilegio que me cambió la vida y me brinda mayores posibilidades junto a mi profesión, de poder abrir más puertas para mi crecimiento, apoyar a más personas y seguir aprendiendo constantemente. Me gusta observar más allá, observar y vivir el presente. Dentro de UNICAB manejo lo concerniente a la psicología y desde esta direcciono lo que es la coordinación académica. Para lograr junto con un equipo de maestros apasionados por su labor, una excelente educación de calidad.', '../../../assets/img/equipo/Julianvergara.png', 'Julián Mesa', NULL, 'A +', 'activo'),
('INGRID LILIANA', 'LASPRILLA GARCIA', 'matriculas@unicab.org', 'ZVJqXjqJHhbuHYD+8gWmWg==', 'AR', 1049630464, 'ADMINISTRATIVA', 'NA', '315 696 5291', '315 696 5291', 'SECRETARIA ACADEMICA', 'ADMINISTRADORA COMERCIAL Y FINANCIERA', '', '', 'Liliana Lasprilla', 'https://unicab.org/assets/img/equipo/ingrit_liliana.png', 'B +', 'activo'),
('MARIA CAMILA', 'CUBILLOS GUTIERREZ', 'psico02@unicab.org', 'uzxPzveQ2k7OQpRGZhIyKg==zzz', 'NA', 1015441071, 'ADMINISTRATIVA', '', '311 588 7849', '311 588 7849', 'PSICOLOGA ADMINISTRATIVA', 'PSICÓLOGA', 'Soy Psicóloga egresada de la Universidad Manuela Beltrán con experiencia y conocimiento en los distintos enfoques y campos del desempeño profesional psicológico. Cuento con estudios en Neuropsicología Forense, Psicología Educativa, Psicología Jurídica, SG-SST y Administración de Recursos Humanos. \r\nÁreas de experiencia: – Psicología educativa y Jurídica, producción y publicación de artículos académicos, creación e implementación de proyectos académicos y empresariales, experiencia en áreas administrativas.\r\nEn UNICAB se respira un ambiente laboral muy alegre, el equipo de trabajo es comprometido e innovador, esto hace que cada día más familias estén interesadas en unirse y emprender la educación de sus hijos en esta modalidad tan revolucionaria y actualizada.\r\n', '../../../assets/img/equipo/Camila_Cubillos.png', 'Camila Gutiérrez', NULL, 'A +', 'retirado'),
('DIANA', 'CHAPARRO UNIVIO', 'psico03zzz@unicab.org', '/38zEkfyO49mHTDbd18LgQ==', 'NA', 46376556, 'ADMISIONES', 'https://meet.google.com/teb-ujzw-giq', '320 588 6995', '320 588 6995', 'PSICOLOGA', 'PSICÓLOGA', 'Psicóloga social especialista en salud ocupacional y riesgos laborales, con diplomados en psicología clínica, primera infancia y desarrollo social. Con experiencia profesional de más de 10 años en áreas como: Tallerista, capacitadora, docente, psicóloga de atención en salud mental, psicóloga de comisaria de familia, participante de diferentes proyectos de carácter social con el área de convenios de la UPTC. Caracterizada por su capacidad para trabajar en equipo y facilidad de adaptación a diferentes entornos laborales, habilidades cognitivas, comunicativas y valorativas, lo que le permite participar en cualquier tipo de proyecto o acciones en pro del mejoramiento de la calidad de vida del ser humano.', '../../../assets/img/equipo/DIANA_UNIVIO.png', 'Diana Univio', NULL, 'O +', 'retirado'),
('LILIANA', 'DAVILA ALBARRACIN', 'unicabfinanciera@gmail.com', 'laZVWL5Ep/RFL9HG2LBZhA==', 'FI', 46371319, 'FINANCIERA', 'NA', '318 714 3774', '318 714 3774', 'CONTADORA', 'CONTADORA', 'Contadora Publica egresada de la Universidad de Pamplona, con experiencia de más de cinco años en compañías de diferentes actividades y obligaciones tributarias, tengo la capacidad de enfrentarme y resolver casos contables en relación de impuestos, registros contables, soportes de contabilidad, análisis de estados financieros acorde a las normas y estándares de contabilidad generalmente aceptadas; con manejo de Software Flash contable, flash efectivo, Siigo Contador y Siigo Nube.\r\nSoy una persona íntegra con valores como el respeto, tolerancia, responsabilidad, amabilidad y honestidad.\r\n', '../../../assets/img/equipo/LILIANA_ALBARRACIN.png', 'Liliana Albarracín', 'https://unicab.org/assets/img/equipo/lili.png', 'B +', 'activo'),
('CINDY LORENA', 'QUEMBA CARMAGO', 'unicabfinanciera@gmail.com', 'Vhqt7o6Sm9gzV5uMq6HDsw==', 'FI', 1057606165, 'FINANCIERA', 'NA', '318 714 3774', '318 714 3774', 'AUXILIAR CONTABLE', 'AUXILIAR CONTABLE', 'Estudiante de Contaduría Pública de la Universidad Pedagógica y Tecnológica de Colombia UPTC seccional Sogamoso con experiencia en el área contable, financiera y de  auditoría acordé a las normas y estándares  internacionales de contabilidad, con adecuado manejo de software  contable como Flash Efectivo, Flash Contable, SIIGO, con un  nivel alto de excel, word, nivel intermedio de Autocad bidimensional, y programas ofimáticos. Aporto seguridad y credibilidad en las labores que me son asignadas, con una adecuada administración  del tiempo , aplicando los conocimientos y la formación como valores fundamentales demostrando resultados sobresalientes y de calidad, reflejando así mi sentido de pertenencia y liderazgo. Cuento con capacidad de trabajo en equipo, y asimilo  rápidamente nuevos conocimientos a través de herramientas tecnológicas. me caracterizó además, por ser una persona responsable, honesta, creativa, proactiva y comprometida con el cumplimiento de los objetivos de la corporación; me gusta asumir retos y responsabilidades dejando a disposición todos mis conocimientos, capacidades y aptitudes', '../../../assets/img/equipo/CINDY_QUEMBA.png', 'Lorena Quemba', NULL, 'A +', 'retirado'),
('PAOLA ANDREA', 'MUÑOZ VARGAS', 'archivo@unicab.org', 'vp8nZrqKeM71/U8DQEQYkQ==', 'ARCH', 1057590334, 'ADMINISTRATIVA', 'NA', '318 714 3774', '318 714 3774', 'AUXILIAR DE ARCHIVO', 'AUXILIAR DE ARCHIVO', 'Me presento como una persona profesional en el área de archivistica y gestión documental, incluida las actividades que hacen parte de la producción, distribución y manejo de los documentos, acorde a la normatividad actual y los estándares nacionales. Dispuesta a asumir con responsabilidad las tareas asignadas, con capacidad de adaptación al cambio, principios y valores enmarcados dentro de las leyes constitucionales éticas y morales.', '../../../assets/img/equipo/PAOLA_VARGAS.png', 'Paola Vargas', NULL, 'B +', 'retirado'),
('OLGA STELLA', 'HURTADO RODRIGUEZ', 'olgastella.bioetico@unicab.org', 'Jh/LDs8sWCr/BxXwnxHYqA==', 'TU', 23769780, 'PENSAMIENTO BIOETICO', 'Olga.stella.hurtado.rodriguez', '316 259 6171', '316 259 6171', 'TUTOR MEDIADOR', 'INGENIERA DE ALIMENTOS', 'Me gusta mucho y disfruto al máximo compartir con mi familia y amigos. Me apasiona una buena lectura, escribir, cocinar, caminar y meditar en espacios naturales, preferentemente en las montañas. Aprendo de cada instante que comparto con mi esposo y mi hija y juntos admiramos la belleza de lo simple y de buen gusto. Agradezco sinceramente un saludo alegre, un abrazo fuerte, un gesto amable, porque creo en la generosidad de las personas. En el ámbito laboral doy lo mejor de mi experiencia profesional y procuro mantenerme actualizada para acompañar de manera efectiva los procesos de la Organización a la cual pertenezco.', '../../../assets/img/equipo/Olga_Hurtado.png', 'Olga Stella Hurtado', '../../../assets/img/equipo/info_stellita.jpg', 'O +', 'inactivo'),
('JOHANNA', 'MONROY MONGUA', 'johannamonroy@unicab.org', 'ihXRP88cBvjiFiVlhOQXMg==', 'TU', 1002393985, 'PENSAMIENTO TECNOLOGICO', 'diseno.unicab', '321 316 9663', '321 316 9663', 'TUTOR MEDIADOR', 'MG EN EDUCACIÓN', 'Soy tutora mediadora de pensamiento tecnológico, hago parte del equipo creativo y del grupo de investigación GIU del colegio virtual Unicab.\r\nMe llama la atención el impacto que las nuevas tecnologías han generado en el ser humano, de ahí el interés en investigar cómo estas pueden incidir positivamente en un contexto e-learning desde el diseño gráfico como un medio de comunicación en el que se integra diversidad de códigos visuales que posiblemente movilice conocimiento combinando adecuadamente elementos pedagógicos y tecnológicos en un escenario virtual de aprendizaje. \r\n', '../../../assets/img/equipo/Johanna_ Mongua.png', 'Johanna Monroy', 'https://unicab.org/assets/img/equipo/jOHANNA mONROY.png', 'O +', 'activo'),
('GINNA MARCELA', 'CASTELLANOS HUERTAS', 'ginna.castellanos@unicab.org', 'AEebInGbAkt1Vfj/vRTCXg==', 'TU', 1049615423, 'PENSAMIENTO BIOETICO', 'ginna.castellanos', '310 464 0244', '310 464 0244', 'TUTOR MEDIADOR', 'MG EN EDUCACIÓN', 'Soy Tutora mediadora de Pensamiento Tecnológico y Bioético Licenciada en informática y tecnología, actualmente curso una Maestría en educación, me encanta correr en las mañanas, nadar, hacer ejercicio, practicar algunas actividades deportivas me hace sentir muy bien pienso que” Cuerpo sano, mente sana”, me gusta el baile, en los tiempos libres compartir con mis seres queridos, pienso que la familia es muy valiosa y hay que disfrutarla lo máximo, me encanta el cine y la música. Mis metas son terminar con éxito mi Posgrado, viajar por toda Colombia, conocer otros países conocer sus culturas y aprender su idioma entre otras cosas, quiero profundizar y aprender más sobre el uso de las TIC en el aula, sobre nuevas tecnologías, seguir aprendiendo cada vez más para poder brindar lo mejor de mí.\r\nHago parte del colegio UNICAB hace 2 años los cuales han sido enriquecedores para mi formación como docente y como persona, estoy enamorada de la educación que brinda el colegio ya que trabajamos para que el niño y niña sea feliz y pueda desarrollar desde temprana edad su proyecto de vida, me siento muy bien cuando los niños nos comparten sus logros deportivos y además son muy buenos académicamente, esto demuestra que se están formando personitas con propósitos definidos y claros.\r\n', '../../../assets/img/equipo/Ginna_Marcela_Castellanos_Huertas.png', 'Ginna Castellanos', '../../../assets/img/equipo/info_ginna.jpg', 'O +', 'inactivo'),
('EDWIN GEOVANNY', 'PIRATOVA MESA', 'ed.tecnologico@unicab.org', 'ADoeQmGFUVCrlYg01GDAeQ==', 'TU', 1049620983, 'PENSAMIENTO TECNOLOGICO', 'edwingeo.unicab', '314 490 3460', '314 490 3460', 'TUTOR MEDIADOR', 'MG EN EDUCACIÓN', 'Me gusta ser parte del equipo creativo de Unicab, ya que me permite aportar e innovar en temas relacionados al diseño, informática y nuevas tecnologías. Así mismo, puedo contribuir creativamente en temas relacionados a lo educativo.Me gusta escuchar música, tocar guitarra, salir a caminar, ver cine y tenis de campo. Como meta tengo poder terminar mis estudios posgraduales avanzando en los diferentes peldaños educativos.', '../../../assets/img/equipo/Edwin-Piratova-1.png', 'Edwin Piratova', NULL, 'B +', 'retirado'),
('JUAN SEBASTIAN', 'SUAREZ CARRASQUILLA', 'juansebastian.suarez@unicab.org', 'VKuOsAgTNleLLK0942VcSQ==', 'TU', 1057578396, 'PENSAMIENTO SOCIAL', 'yo1587', '311 674 2264', '311 674 2264', 'TUTOR MEDIADOR', 'MG EN DERECHOS HUMANOS', 'Soy un ser humano convencido de que los procesos de interacción en cualquier espacio son necesarios para construir identidad. Y en los procesos pedagógicos encuentra esos espacios apropiados para contribuir a que todos construyamos nuestra felicidad. Soy un mediador convencido que desde el conocimiento de las ciencias sociales mediado por las TIC permite que cada uno de nuestros estudiantes florezca y se permita ser feliz y por esta razón es que me apasiona mi profesión y lo que hago como mediador. Cumplo con mi proyecto de vida: servir a mi sociedad e impulsarla para que sea equitativa, justa y digna.', '../../../assets/img/equipo/Juan_Carrasquilla.png', 'Juan Sebastían Suarez', '../../../assets/img/equipo/info_sebastian.jpg', 'A +', 'activo'),
('MONICA ALEJANDRA', 'RIVERA RAMIREZ', 'alejandra.rivera@unicab.org', '7UgSZ0cCGZ4JhQXlRaGGSw==', 'TU', 53160496, 'PENSAMIENTO HUMANISTICO ESPAÑOL', 'Alejandra.Phumanistico01', '310 464 0176', '310 464 0176', 'TUTOR MEDIADOR', 'LICENCIADA EN EDUCACIÓN BASICA', 'Soy tutora mediadora del Pensamiento Humanístico Español comprometida con una formación integral mediante la literatura, lengua castellana, tecnología, investigación  y responsabilidad social y ética consciente de una transformación en la educación. \r\nSoy feliz y orgullosa de pertenecer a Unicab y de estar al pendiente del proceso lectoescritor, es primordial leer y escribir correctamente para conseguir organizar y transmitir ideas de forma reflexiva “piensa antes de hablar” hoy en día podría ser  “Lee y escribe bien antes de expresarte”  \r\n Me gusta bailar y hacer ejercicio ya que beneficia mi salud mental y emocional, me gusta leer y escuchar música. Creo en Dios porque la fe obra y lo encuentro viviendo una vida buena, honesta, misericordiosa, desinteresada y moral, uno de mis principios es “Quien no vive para servir no sirve para vivir”.\r\n', '../../../assets/img/equipo/ALEJANDRA_RIVERA_RAMIREZ.png', 'Alejandra Rivera', 'https://unicab.org/assets/img/equipo/Monica Alejandra.png', 'O +', 'activo'),
('ANGELA CONSTANZA', 'CASAS PINILLA', 'angela.casas@unicab.org', 'zUA0icaHA9vVKm/fMlyBJg==999', 'TU', 52534296, 'PENSAMIENTO HUMANISTICO INGLES', 'Angela.Phumanistico02', '300 316 9550', '300 316 9550', 'TUTOR MEDIADOR', 'MG EN GESTIÓN DE LA TECNOLOGÍA DUCATIVA', 'Es una gran bendición ser parte de este espectacular grupo de tutores mediadores, estoy convencida que el cambio en la educación comienza por casa pero también se genera en ambientes opcionales que le brinden a nuestros niños alternativas de ver la educación como lo que realmente es, la mejor forma de conseguir sus sueños, siempre he sido una apasionada a los retos, a la música, la lectura, el arte, los deportes, la familia, los adelantos tecnológicos, el cine,la comida y la vida; valoro cada segundo que Dios me da para disfrutar lo que hago, amo mi profesión soy muy feliz compartiendo con niños y jóvenes pues ellos te llenan de vitalidad y te enseñan cada día algo nuevo, mi misión en la vida ser feliz e irradiar esa felicidad con todas las personas que me rodean. Mi mayor tesoro mi familia, mi mayor alegría mis hijos y mejor bendición mi esposo.', '../../../assets/img/equipo/Angela_Casas_Pinilla.png', 'Angela Casas', '../../../assets/img/equipo/inf_angela.png', 'O +', 'retirado'),
('DIEGO FERNANDO', 'ACERO VARGAS', 'diegoacero@unicab.org', 'DX6zNz40PoMcYtJSdcbevQ==', 'TU', 7184911, 'PENSAMIENTO SOCIAL', 'difev7', '310 463 5342', '310 463 5342', 'TUTOR MEDIADOR', 'ESP EN ARCHIVISTICA', 'Como mediador de las Ciencias Sociales he trabajado siempre en equipo con docentes y profesionales de la rama, elaborando estudios de investigación, históricos, sociales, geográficos, humanitarios y documentales contribuyendo en el rescate de la historia mediante el ejercicio constante en paleografía.  Como mediador cognitivo del pensamiento siempre logrando los propósitos asignados, armonizando la pedagogía y la didáctica en la construcción del pensamiento crítico. Me gusta la formación continua en herramientas virtuales de aprendizaje,  para mi es importante el desarrollo de las habilidades y talentos, con criterio social, crítico y ético, forjando el respeto y los valores en cada uno de los estudiantes que son el futuro del mañana para Colombia y el mundo.', '../../../assets/img/equipo/Diego_Acero.png', 'Diego Acero', 'https://unicab.org/assets/img/equipo/diego Social.png', 'O +', 'activo'),
('JUAN GUILLERMO', 'REY PEREZ', 'juanrey@unicab.org', 'U+8ksYHFXMyxUbU51Qphkg==', 'TU', 1058038030, 'PENSAMIENTO HUMANISTICO ESPAÑOL', 'juan_creed12', '322 362 5125', '322 362 5125', 'TUTOR MEDIADOR', 'MG EN LINGÜÍSTICA', 'Soy un docente convencido que la mejor herramienta para transformar al mundo es la educación. Por este motivo, veo la necesidad de mejorar mi práctica profesional y personal a través de la lectura y la investigación.\r\nPertenecer al grupo de trabajo de Unicab ha implicado tener una visión holística de mi quehacer docente, en este sentido, implica fortalecer el pensamiento crítico de los discentes, en aras de construir una mejor sociedad.  \r\n', '../../../assets/img/equipo/Juan_Rey.png', 'Juan Rey', '../../../assets/img/equipo/info_juan.jpg', 'O +', 'inactivo'),
('GREGORY HERNANDO', 'FIGUEREDO GUEVARA', 'gregory.figueredo@unicab.org', 'IL4g1TjPlYc+LgOtlWferA==', 'SU', 9397454, 'PENSAMIENTO NUMERICO', 'gregory.figueredo', '322 265 3547', '322 265 3547', 'TUTOR MEDIADOR', 'INGENIERO INDUSTRIAL', 'Aprecio mucho cada instante de vida que nos regala nuestro Padre Creador Yehovah. Doy gracias por todo y en especial por las bendiciones, pero también por las pruebas y tribulaciones, porque he aprendido que a través de ellas aprendemos, crecemos y podemos dar pasos importantes para restaurar nuestra vida por las sendas del ahavah (amor), simcha (gozo), shalom (paz), savlanut (paciencia), anah (benignidad), chesed (bondad), emunah (fe), anawah (mansedumbre) y templanza. Procuró con todas mis fuerzas y todo mi ser servir a todos de la mejor manera. Me encanta la naturaleza. Tengo una hermosa familia con cuatro hijos.\r\nEn cuanto a la parte profesional, soy Ingeniero Industrial apasionado por la optimización de los recursos y el mejoramiento de los procesos a través del diseño, desarrollo e implementación de tecnologías de información. Experto y certificado en lenguajes de programación y administración de bases de datos relacionales y multidimensionales.\r\n', '../../../assets/img/equipo/Gregory_Figueredo.png', 'Gregory Figueredo', '../../../assets/img/equipo/inf_ghf1_1.png', 'B +', 'activo'),
('JOHN HENRY', 'RAMIREZ MALAVER', 'john.ramirez@unicab.org', 'h6q5c4AIcpnhfdN4IBEcWw==', 'TU', 1057586900, 'PENSAMIENTO SOCIAL', 'john.ramirez16', '310 463 9566', '310 463 9566', 'TUTOR MEDIADOR', 'MG EN DERECHOS HUMANOS', 'Soy un ser humano convencido que la educación es el camino para la transformación social y cultural de cualquier sociedad. Por ende, cada día me levanto con el compromiso constante de brindar lo mejor de mi profesión para acompañar los diferentes proyectos de vida de nuestros estudiantes. \r\n\r\nSer maestro mediador a través de las TIC´S me ha permitido encontrar un espacio para el encuentro de ideas y de saberes que se construyen entre los participantes, esto a su vez permite enriquecer las visiones y las experiencias de los que allí confluimos. \r\n', '../../../assets/img/equipo/John Henry Ramírez Malaver.png', 'John Ramirez', '../../../assets/img/equipo/info_john.jpg', 'A +', 'inactivo'),
('PAULA ALEJANDRA', 'CRISTANCHO GOMEZ', 'paulacristancho@unicab.org', 'PmD4Arj850uo+AyZEBMXZg==', 'TU', 1057593704, 'PENSAMIENTO HUMANISTICO INGLES', 'live:paucg_teacher', '311 649 6218', '311 649 6218', 'TUTOR MEDIADOR', 'LICENCIADA EN LENGUAS EXTRANJERAS INGLÉS - FRANCÉS', 'Soy tutora mediadora del Pensamiento Humanístico Inglés, amante de la enseñanza, los idiomas, las artes plásticas, la danza y la música. Soy una persona comprometida, curiosa por excelencia, perfeccionista, autocrítica, y nada tradicional en cuanto a enseñanza se refiere. Me gusta aprender, imaginar, crear, evolucionar, cuestionar y cuestionarme todos los días, para poder de esta manera avanzar y ver más allá. No me gusta conformarme con el presente y busco el futuro constantemente. Estoy convencida de que se puede transformar el mundo por medio de la educación y de que la educación virtual es el futuro, razón por la que quiero aportar y ser parte de este proceso, no sólo en mi país sino alrededor del mundo. Por eso siento la necesidad de aprender y conocer diferentes culturas e idiomas. Considero que al integrar cada idioma y cultura dentro de los procesos de aprendizaje, estoy ayudando a abrir los horizontes de mis estudiantes, además de aportar en el crecimiento personal, moral y académico de cada uno de ellos. Ser tutora mediadora me ha dado la posibilidad de aprender y reinventarme cada día, estoy agradecida con Dios de poder formar parte de un equipo que trabaja y se exige al máximo para transformar la educación, y para fortalecer los proyectos de vida de cada uno de sus estudiantes.\r\n«Todo lo que puedas imaginar, es real»\r\n«Everything you can imagine is real»\r\n«Tout ce que tu peux imaginer est réel»\r\n«Alles, was du dir vorstellen kannst, ist real»\r\n«당신이 상상할 수있는 모든 것이 진짜입니다»\r\n                                                                          	 - Pablo Picasso \r\n', '../../../assets/img/equipo/Paula Cristancho.png', 'Paula Cristancho', '../../../assets/img/equipo/info_paulacrist.png', 'O +', 'inactivo'),
('PAULA ALEJANDRA', 'ALMONACID CARRASQUILLA', 'paulaalmonacid@unicab.org', 'MmtJHzToNGGIjULR5R4t1g==', 'TU', 1057601005, 'PENSAMIENTO BIOETICO', 'paulaalmonacid23@gmail.com', '310 464 8838', '310 464 8838', 'TUTOR MEDIADOR', 'INGENIERA AMBIENTAL Y SANITARIA', 'Soy tutora mediadora del pensamiento bioético, totalmente convencida de que es un pensamiento muy completo que permite que los estudiantes comprendan los temas y los relacionen con su entorno, ya que nosotros estamos compuestos por la biología, por la química y el deber de todos es  cuidar nuestro cuerpo, tanto física como mentalmente siendo personas éticas he íntegras. Me gustan mucho los niños, que sean felices, que sientan apoyo y cariño siempre, pienso que una persona cuando es querida a si sea por una sola persona tiene la fuerza suficiente para salir adelante en la vida. Creo en las maravilla de Dios, por eso me esfuerzo por dar lo mejor de mi siempre, actuando con honestidad y responsabilidad. Me gusta mucho ver películas, leer y estar informada, el tiempo en familia, cocinar y hacer manualidades. ', '../../../assets/img/equipo/Paula_Almonacid.png', 'Paula Almonacid', 'https://unicab.org/assets/img/equipo/Paula.png', 'A +', 'activo'),
('YULY ANDREA', 'AFRICANO TORRES', 'english.secondary@unicab.org', 'AilEBIY0Le4saLJVPM9fkg==999', 'TU', 1057586870, 'PENSAMIENTO HUMANISTICO INGLES', 'humanistico3.unicab', '312 479 9815', '312 479 9815', 'TUTOR MEDIADOR', 'LICENCIADA EN IDIOMAS MODERNOS', 'Soy tutor mediador de Pensamiento Humanístico Inglés. Soy un ser humano comprometido con la educación de mi país, convencida que desde el aprendizaje y enseñanza de los idiomas es posible generar cambios sociales y crear oportunidades de intercambio cultural en Colombia y en el mundo.  \r\nDisfruto mucho el compartir e interactuar con las personas porque a partir de la interacción aprendo bastante, así que, me gusta viajar y conocer culturas, aprender idiomas; escuchar música, en especial góspel en inglés y francés, además cantar e interpretar la guitarra acústica. \r\nConsidero muy interesante e importante el ejercicio de investigar e indagar sobre las herramientas, metodologías, estrategias y experiencias en el campo del aprendizaje-enseñanza, ya que me permite reflexionar sobre mi quehacer pedagógico y realizar acciones de cambio.\r\nSer maestro mediador es un privilegio, ya que tengo la oportunidad de orientar los procesos de aprendizaje de una lengua extranjera en ambientes virtuales.\r\nSer parte de un equipo que trabaja en pos de los sueños y talentos de los jóvenes, niños y familias es una bendición y un proceso continuo de cambios y aprendizajes.\r\n', '../../../assets/img/equipo/Yuly_Andrea_Africano_Torres.png', 'Yuly Africano', '../../../assets/img/equipo/inf_yuly1.png', 'A +', 'retirado'),
('SERGIO ANDRES', 'CADENA BAUTISTA', 'sergio.cadena@unicab.org', 'YNzGICsrWUlkQZsv4pZrNw==', 'TU', 1052383274, 'PENSAMIENTO TECNOLOGICO', 'sergiocadenab', '322 308 2360', '322 308 2360', 'TUTOR MEDIADOR', 'MG EN AMBIENTES EDUCATIVOS MEDIADOS POR TIC', 'Licenciado en informática y Tecnología, aspirante a Magister en Ambientes Educativos Mediados por TIC. Investigador del grupo de investigación GUI UNICAB virtual, administrado Moodle y G Suite (gmail) del colegio UNICAB Virtual.\r\n\r\nEntusiasta de los conocimientos científicos que a lo largo de la historia como a la fecha, han propiciado el desarrollo de la tecnología. Dentro de los campos de la tecnología que domina se encuentra el diseño y la producción audiovisual, la programación y la electrónica, y trabajar por la generación del nuevo conocimiento que, a través de la investigación, la tecnología genera para favorecer la educación.\r\n', '../../../assets/img/equipo/Sergio_Andres_Cadena_Bautista.png', 'Sergio Cadena', 'https://unicab.org/assets/img/equipo/Sergio Andres.png', 'B +', 'activo'),
('KAREN MAGALY', 'TORRES GUERRERO', 'karen.torres@unicab.org', 'CLBmBuPypnl2yzQS+3NAmA==', 'TU', 1048847702, 'PENSAMIENTO NUMERICO', 'karentorres355', '310 464 9658', '310 464 9658', 'TUTOR MEDIADOR', 'ESP EN NECESIDADES DE APRENDIZAJE EN LECTURA, ESCRITURA Y MATEMÁTICAS', 'Este año orientó Pensamiento Numérico y Bioético, me gusta trabajar en Unicab pues me permite ser,  dinámica, creativa, propositiva, estoy comprometida con el aprendizaje y progreso de los estudiantes, transmisora de criterio, búsqueda continua para incentivar valores humanos, desarrollar habilidades básicas, me gusta la investigación, formación permanente en herramientas virtuales de aprendizaje. Especialista en Necesidades de Aprendizaje en Lectura, Escritura y Matemáticas, Licenciada en Educación Básica con énfasis en Matemáticas y Humanidades, doce años de experiencia laboral, tengo un hermoso hogar, del cual me siento orgullosa y  en lo que les pueda colaborar estaré dispuesta. ', '../../../assets/img/equipo/Karen_Torres_Guerrero.png', 'KAREN TORRES', '../../../assets/img/equipo/info_karen.jpg', 'B +', 'inactivo'),
('ANA MILENA', 'NIEVES GONZALEZ', 'milena.humanistico@unicab.org', 'cZRt8HGE4KdwIxmECenGcg==', 'TU', 68305434, 'PENSAMIENTO HUMANISTICO ESPAÑOL', 'humanistico2.unicab@gmail.com', '310 465 0920', '310 465 0920', 'TUTOR MEDIADOR', 'MG EN TECNOLOGÍA EDUCATIVA Y COMPETENCIAS DIGITALES', 'Licenciada en  Lengua Castellana  y  Comunicación  mi  propósito  como   orientadora  del  Pensamiento  Humanístico es  ayudar  al  estudiante  a  descubrir  su  potencial    crítico, argumentativo  y  creativo   como  herramienta  para   expresar  su   aprendizaje  y   resolver  un  problema.\r\n”...Un problema solo existe en la ausencia de la conversación correcta”\r\nPaulo Freire. \r\n\r\n Me  gusta el cine, los buenos  hábitos , leer temas relacionados a la innovación, escuchar música, practicar  natación  y salir a caminar. \r\n\r\nSoy Tutora  mediadora del  Colegio  UNICAB porque me gustan los retos, los cambios y la creatividad. Mi  sueño  es  vivir en el mundo de las posibilidades para hacer una diferencia en la vida de las futuras generaciones  desde  la  creación ,  el  fortalecimiento  y   la aplicación   de   nuevos   paradigmas   educativos.', '../../../assets/img/equipo/Ana_Milena_Nieves.png', 'MILENA NIEVES', '../../../assets/img/equipo/info_milena.jpg', 'A -', 'retirado'),
('DENISSE LILYBETH', 'PUERTO COY', 'denissepuerto.numerico@unicab.org', 'WHErs98H4gvLP2tfQmmHCg==', 'TU', 46378121, 'PENSAMIENTO NUMERICO', 'numerico.unicab@gmail.com', '300 268 3009', '300 268 3009', 'TUTOR MEDIADOR', 'INGENIERA INDUSTRIAL', 'Soy tutora mediadora de Pensamiento Numérico, me gusta mi trabajo porque logro que los conceptos físicos y matemáticos sean entendidos de la mejor manera, de forma práctica y útil. Además del ambiente laboral, donde todos son compañeros y amigos, y no se ve sesgado cada uno de los departamentos del colegio. En la parte profesional, me gusta consultar sobre los procesos físicos actuales y como el hombre ha mejorado la investigación y tecnología para vivir mejor y por más tiempo. Quisiera continuar como tutora mediadora de Pensamiento Numérico, seguir capacitándome en pedagogía conceptual y orientar de la mejor manera a mis estudiantes, para que quieran la matemática y la física, como yo la quiero.', '../../../assets/img/equipo/Denisse_Coy.png', 'DENISSE PUERTO', '../../../assets/img/equipo/info_denisse.jpg', 'O +', 'retirado'),
('DAVID SANTIAGO', 'MARTINEZ CELY', 'santiagomartinez@unicab.org', '4ozt/Yu3V0oMHkcg33XFPg==', 'TU', 1057581651, 'PENSAMIENTO NUMERICO', 'santiagomartinez@unicab.org', '310 464 2837', '310 464 2837', 'TUTOR MEDIADOR', 'ESP EN GERENCIA DE TALENTO HUMANO', 'Como ser activo de la sociedad, estoy convencido en la humanización de los procesos que llevan a mejorar la calidad de vida de las personas de una forma sostenible y ética; así como del cuidado ambiental y el uso de sistemas numéricos que facilitan la comprensión del mundo en el que vivimos y le da importancia a su preservación. Disfruto plenamente de la música y la literatura. \r\nSer parte del equipo Unicab es hacer parte de un cambio necesario en los modelos pedagógicos en nuestro país, mirar al futuro apoyados en herramientas TIC para que cada estudiante asimile y cree su conocimiento demostrando puntos de vista cada vez más objetivos y sustentados en la investigación.      ', '../../../assets/img/equipo/Santiago_Martinez.png', 'Santiago Martínez', '../../../assets/img/equipo/info_santiago.jpg', 'O +', 'inactivo'),
('EDWIN', 'GONZALEZ', 'soporte@unicab.org', 'E4BXYrOHSuG7NKflNh1R+Q==', 'TU', 1049645073, 'PENSAMIENTO TECNOLOGICO', 'ferney0296@hotmail.com', '310 463 6867', '310 463 6867', 'SOPORTE TECNICO', 'LICENCIADO EN INFORMÁTICA Y TECNOLOGÍA', 'Soy tutor mediador del Pensamiento Tecnológico. Licenciado en Informática y Tecnología,\nme gusta practicar fútbol, salgo a jugar los fines de semana, escucho música, me gusta\npasar tiempo con mi familia lo cual lo disfruto al máximo. También me gusta mucho\ninvestigar sobre las nuevas tecnologías y herramientas para profundizar mis\nconocimientos sobre las Tic y así poder aprender y ofrecer mis habilidades a mis\nestudiantes. Hago parte del colegio UNICAB hace 2 años el cual ha sido muy enriquecedor\nmi trabajo ya que he aprendido bastante del colegio y de los estudiantes y tengo bastante\nsentido de pertenencia hacia la institución, de igual manera he podido ofrecerle al colegio\ny a los estudiantes mis conocimientos y poder brindar mi ayuda en lo que sea necesario,\ncada día en el colegio e fortalecido mi aprendizaje como docente ya que he aprendido de\nmis compañeros y de mis estudiantes para poder llegar hacer mejor docente.', 'NA', 'Edwin Gonzalez', 'https://unicab.org/assets/img/equipo/Edwin.png', 'NA', 'activo'),
('OLGA VICTORIA', 'GOMEZ PEREZ', 'admisiones@unicab.org', '5MZTlkHzWsMwOMIXTpaTXw==999', 'PS', 51768852, 'ADMISIONES', 'NA', '300 815 6531 Tel(+57) 8 7752309', '300 815 6531', 'ASISTENTE DE ADMISIONES', 'ADMINISTRADORA DE EMPRESAS', '', NULL, 'Olga', NULL, 'O +', 'retirado'),
('CLARA EMILSE', 'LIZCANO', 'admisiones02@unicab.org', 'R/BxadImr53FgQLTFE6dpA==', 'PS', 123456789, 'ADMINISTRATIVA', 'NA', '300 815 6531', '300 815 6531', 'AUXILIAR ADMINISTRATIVA', 'NA', 'NA', 'NA', 'Clara Lizcano', 'https://unicab.org/assets/img/equipo/clara.png', 'O +', 'activo'),
('ERICKA YURIETH', 'AVELLA LOPEZ', 'erickaavellalopez@unicab.org', 'gV60h3h8D4ASV00sSmxCsg==999', 'TU', 1057572753, 'PENSAMIENTO NUMERICO', 'NA', '314 300 9214', 'NA', 'TUTOR MEDIADOR', 'NA', 'NA', 'NA', 'Ericka Avella', '../../../assets/img/equipo/inf_ericka.png', 'A +', 'retirado'),
('CARLOS ADOLFO', 'LEMUS PATIÑO', 'carloslemuspatino@unicab.org', 'H1ksWX172+AgHrLt/RccPg==', 'TU', 9532021, 'PENSAMIENTO NUMERICO', 'NA', '313 867 1672', 'NA', 'TUTOR MEDIADOR', 'NA', 'Soy Tutor Mediador de pensamiento Matemático.\nLicenciado en Educación Industrial Especialidad (Electricidad), hace 20 años que me\ndesempeño como Docente en el Área de Matemáticas y afines; con lo cual me siento\nrealizado con mi profesión ya que le ha aportado a mi vida cada vez más conocimientos,\naprendizajes y satisfacción, con esto he podido transmitir los conocimientos a mis\nestudiantes y así poder contribuir a la formación académica, personal y profesional.\n\nMe gusta practicar el deporte en general, ya que desde pequeño me gusta el fútbol,\nciclismo, baloncesto, voleibol, me encanta realizar caminatas en familia compartir al\nmáximo momentos libres aprovechando con esto nos integremos cada vez más como\nfamilia.\nMis metas son cada vez adquirir más conocimientos como docente, también ver realizados\na mis hijos como grandes profesionales, que sean dados al servicio de la familia y la\ncomunidad, otra meta es terminar totalmente mi casa y viajar con mi familia. Hago parte\ndel colegio UNICAB VIRTUAL, hace 2 años los cuales me han permitido ampliar mis\nconocimientos como docente en la parte virtual, conocer a familias extraordinarias, a\njóvenes con unos proyectos de vida envidiables.\nTambién he conocido herramientas tecnológicas con las cuales he podido transmitir a los\nestudiantes mis conocimientos y apoyo en mejorar las habilidades y competencias que\ntienen cada uno de ellos que forman esta gran institución. La cual ha traído grandes\nresultados, en la parte académica, deportiva y personal. Me queda el gran reto de seguir\ncapacitándome para ser cada día mejor.', 'NA', 'Carlos Lemus', '../../../assets/img/equipo/info_carlos.jpg', 'B +', 'inactivo'),
('LAURA YERALDIN', 'FLOREZ DIAZ', 'lauraflorezdiaz@unicab.org', 'AYTnyI2roi+KEZMkdw1lRA==', 'TU', 1057599116, 'PENSAMIENTO BIOETICO', 'NA', '310 464 0345', '310 464 0345', 'TUTOR MEDIADOR', 'NA', 'Soy tutora mediadora de pensamiento bioético, convencida del poder transformador de la\neducación, por tal razón, desde mi profesión y vocación acompaño el proceso de\naprendizaje de cada uno de mis estudiantes, comprometida con una formación integral,\npara que a partir de ésta y de sus proyectos de vida los estudiantes puedan crecer con un\npropósito de vida claro, que les permita crecer como personas que aportan a la sociedad\ndesde cualquier ámbito disciplinar y ser felices.\nMe gusta bailar, leer, compartir tiempo en familia y aprender constantemente. Me siento\nfeliz con lo que hago como mediadora y de poder aportar un granito de arena en pro a una\neducación integra, de calidad y pertinente a las necesidades actuales.', 'NA', 'Laura Florez', 'https://unicab.org/assets/img/equipo/Laura.png', 'O +', 'activo'),
('INGRID ESTEFANY', 'AVELLA LOPEZ', 'ingridavellalopez@unicab.org', 'zRfnwJUj3Vii2YPPQClU0Q==', 'TU', 1057578583, 'PENSAMIENTO SOCIAL', 'NA', '315 308 1823', 'NA', 'TUTOR MEDIADOR', 'NA', 'Soy tutora mediadora de pensamiento Social soy licenciada en Ciencias Sociales y\nEspecialista en Archivo y Gestión Documental, me gusta leer, ver películas, compartir con\nmi familia, soy muy espiritual y me encanta vivir en completa armonía, paz y tranquilidad,\nen este año culmine mis estudios de especialización, así que deseo poder realizar mi\nmaestría pronto, aunque aún no me he decidido si en Historia o en Archivo, me gusta\nviajar, amo mi trabajo, y amo ser parte de UNICAB, mi experiencia como docente es de 9\naños, pero siento que estar en esta corporación ha ampliado en todos los sentidos mis\nexpectativas, que ha aumentado mi curiosidad y sentido de investigación, para ofrecer una\nmejor formación a mis estudiantes, me siento muy orgullosa cuando veo a mis\nestudiantes lograr sus propósitos, verlos sobresalir, ya sea frente a sus actividades\nexteriores al colegio, como en sus dificultades. Realmente creo que somos bendecidos y\nque podemos demostrar que la virtualidad va más allá de una simple red o pantalla, si no\nque la disciplina y el compromiso forma grandes seres humanos.', 'NA', 'Ingrid Avella', 'https://unicab.org/assets/img/equipo/ingrit.png', 'A +', 'activo'),
('LUIS FERNANDO', 'SILVA CASTRO', 'luissilvacastro@unicab.org', '+DHU8/lc5NpVhYPCqoElWw==', 'TU', 4168826, 'PENSAMIENTO HUMANISTICO ESPAÑOL', 'NA', '322 475 7508', 'NA', 'TUTOR MEDIADOR', 'NA', 'Tutor del Pensamiento Humanístico-español\nDecir que soy es muy difícil, he logrado en mi experiencia como persona entender que\nvamos siendo y que cada acción y circunstancia de nuestro día a día nos permite irnos\nentendiendo en esta existencia. De joven me preocupaba por aquellas personas que no\ntenían las oportunidades para vivir dignamente, pensamiento que me llevó a elegir una\nvida cercana a los más necesitados desde una experiencia religiosa, pero las circunstancias\nque me acompañaron, me dirigieron a optar por una vida profesional consagrada a los\nniños y jóvenes y fue así que logré terminar en la universidad Licenciatura en Filosofía, eso\npasó hace 26 años, en los cuales he compartido con muchas personas, las cuales me han\nenseñado a aprender y a desaprender. Creo que es la tarea más difícil, pero al mismo\ntiempo hermosa. Nunca dejaremos de hacerlo y como docente hace dos años de UNICAB,\nme ha tocado desaprender del modelo tradicional y aprender de esta nueva mirada de la\neducación desde la virtualidad, espacio en mi vida profesional y personal que ha\nconllevado a reconocer que nada está dicho en la educación y que si estamos\ncompartiendo este espacio, debemos asumirlo como el reto de construir siempre vidas\ndignas, que favorezcan la construcción de una sociedad en la cual todos “seamos” y\npermitamos que los otros “sean”.', 'NA', 'Luis Silva', '../../../assets/img/equipo/info_luis.jpg', 'A +', 'inactivo'),
('ANGIE DAYANNA', 'MENDOZA NOSSA', 'angiemendozanossa@unicab.org', '8XAi0bvOiIGV/DtlWiIrCg==', 'TU', 1052398133, 'PENSAMIENTO HUMANISTICO INGLES', 'NA', '313 228 5898', 'NA', 'TUTOR MEDIADOR', 'NA', 'Hey there! Soy Angie Mendoza, tutora mediadora del Pensamiento Humanístico Ingles.\nEste es mi segundo año en el Colegio Virtual Unicab, trabajando con secundaria. Creo\ntotalmente en el modelo educativo que el colegio ofrece tanto a estudiantes como a\npadres de familia, pues otorga el espacio para que los chicos desarrollen sus habilidades y\ntalentos. Como mamá de una pequeña niña, espero algún día ella pueda ser parte de esta\nfamilia. A parte de mi labor como tutora, amo la naturaleza, caminar y disfrutar de lo\nsimple pero hermoso que hay en el planeta. Normalmente me intereso por aprender\ndiferentes labores u oficios, como el diseño y confección de ropa, tiro con arco, patinaje,\ncocina, entre otros. Pienso que aprender algo nuevo siempre será bien venido, al igual\naprender a tratar y convivir con los demás, siendo un individuo empático y con gran\nconciencia social.', 'NA', 'Angie Mendoza', '../../../assets/img/equipo/ANGIE_MENDOZA_2024.jpg', 'O +', 'inactivo'),
('SONIA DEL PILAR', 'BARRERA CHAPARRO', 'soniabarrerachaparro@unicab.org', 'rSo4UhBEjJFzZAg8IxBVOw==999', 'TU', 1057570837, 'PENSAMIENTO HUMANISTICO INGLES', 'NA', '320 280 6185', 'NA', 'TUTOR MEDIADOR', 'NA', 'NA', 'NA', 'Sonia Barrera', '../../../assets/img/equipo/inf_sonia.png', 'A -', 'inactivo'),
('LEIDY CATHERINE', 'MONTAÑEZ LEON', 'catherinemontanez@unicab.org', '/mdvN+fWhKXFbYJiBZxevg==', 'TU', 1057592583, 'PENSAMIENTO BIOETICO', 'NA', '311 546 7820', 'NA', 'TUTOR MEDIADOR', 'NA', 'Soy tutora mediadora del pensamiento bioético Licenciada en Ciencias Naturales y\nEducación Ambiental especialista en Gestión Ambiental y actualmente estoy culminando\nla maestría en innovaciones Educativas, dentro de mis actividades diarias esta ir al\ngimnasio porque el ejercicio mantiene mi mente y cuerpo sano y activo durante el día, me\nencanta salir a caminar viajar y descubrir culturas, paisajes nuevos y pintar, además\ncompartir con mis seres queridos y amigos dándole paso a un momento de esparcimiento.\nTengo grandes expectativas de mi futuro como tener una familia, poder seguir\nformándome para ser una gran docente y líder destacada dentro de este campo, y poder\nimpactar a muchos más niños y jóvenes desde la educación, ofreciéndoles todos mis\nconocimientos por experiencia de vida o por profesión para que sean los mejores seres\nhumanos en cualquier lugar del mundo. Hago parte del colegio UNICAB desde hace año y\n6 meses aproximadamente donde considero he tenido una de las mejores experiencias\nlaborales por el excelente equipo de trabajo desde la alta dirección hasta la calidez\nhumano del equipo administrativo, he logrado aprender un modelo pedagógico\nextraordinario en el cual me he venido formando y fortaleciendo habilidades en\ninnovación y Tic, además contar con la fortuna de conocer a los estudiantes que desde\ndistintas culturas me han enseñado la autenticidad y el que ellos puedan compartir logros\ndeportivos artísticos académicos y personales me enorgullece, son un gran talento\napreciados estudiantes y seguiré ofreciendo lo mejor de mí al servicio de ustedes.', 'NA', 'Leidy Montañez', '../../../assets/img/equipo/info_catherine.jpg', 'O +', 'inactivo'),
('VICTOR EDUARDO', 'NUÑEZ MORALES', 'eduardonunezmorales@unicab.org', 'QvMvbhA+99IyBoXrTCsNsg==', 'TU', 315860, 'PENSAMIENTO BIOETICO', 'NA', '311 255 1499', 'NA', 'TUTOR MEDIADOR', 'NA', 'NA', 'NA', 'Victor Nuñez', '../../../assets/img/equipo/inf_eduardo.png', 'O +', 'retirado'),
('MARLI YINED', 'BALAGUERA PRIETO', 'marlibalagueraprieto@unicab.org', 'UYH0+zw4PQo3U0/XIIcApw==', 'TU', 1052407840, 'PENSAMIENTO NUMERICO', 'NA', '313 288 3737', '313 288 3737', 'TUTOR MEDIADOR', 'LICENCIADA EN MATEMATICAS Y ESTADISTICA', 'Soy tutora mediadora de pensamiento matemático. Soy Licenciada en Matemáticas y\nEstadística, actualmente estoy cursando una Maestría en Educación Matemática. En mi\ntiempo libre me gusta compartir en familia, leer y escuchar música. Me gusta el deporte,\ncomparto esta pasión con mi familia por el baloncesto, también caminar para poder\n\ndisfrutar de los paisajes. Estoy enfocada en mi posgrado con el fin de poder aprender más\nacerca de la matemática y mostrarles a mis estudiantes todo lo que las matemáticas\ntienen para brindar. Mis metas son culminar de manera satisfactoria mi posgrado, seguir\ndisfrutando del tiempo en familia, poder trasmitir ese amor y admiración que siento hacia\nla matemática a mis estudiantes y viajar para conocer y aprender de otras culturas. Desde\nhace 2 años me desempeño como tutora mediadora en el Colegio UNICAB, este tiempo ha\nsido enriquecedor en muchos ámbitos, todos los días apuesto por esta educación\ninnovadora que busca la felicidad de nuestros estudiantes, apoyándolos en sus proyectos\nde vida, donde la parte fundamental es la familia, experimento mucha felicidad cuando los\nestudiantes nos comunican sus logros. Me siento contenta de ser parte de ese cambio de\nla educación que tanto necesitamos, no se trata de buscar excelencia sino felicidad en los\nestudiantes y esta es la idea central de UNICAB.', 'NA', 'Marli Balaguerra', '../../../assets/img/equipo/info_marli.jpg', 'B +', 'inactivo'),
('MARIA ALEJANDRA', 'COY RODRIGUEZ', 'psico03@unicab.org', 'W9hGSR1U9VnnI+HShKV0vg==', 'PS', 1057610931, 'ADMINISTRATIVA', 'http://meet.google.com/uqq-iusq-umf', '320 588 6995', 'NA', 'PSICOLOGA', 'PSICOLOGA', 'Soy Psicóloga egresada de la universidad el Bosque, especialista en Gerencia de Seguridad\ny salud en el trabajo, mi formación está orientada hacia las diferentes áreas y teorías, me\ncaracterizo por ser una persona alegre y comprometida, me apasionan los animales y el\npoder apoyar los procesos de las personas que me rodean. Hago parte del equipo\nadministrativo del colegio UNICAB el cual me ha permitido fortalecer mis habilidades a\nnivel personal y profesional, desde mi área he podido apoyar los procesos de estudiantes y\nfamilias aportando en sus proyectos de vida, me siento feliz el poder hacer parte de esta\ninstitución la cual me ha brindado la posibilidad de conocer una manera diferente de\naprender.', 'NA', 'Maria Coy', NULL, 'A +', 'activo'),
('PAULA MILDRED', 'PEREZ LEON', 'matriculas.unicab@gmail.com', 'ojdbvt2ZOpwZeAhuSkJo3g==', 'AR1', 1057587239, 'ADMINISTRATIVA', 'NA', '312 786 9003', 'NA', 'ASISTENTE SECRETARIA ACADEMICA', 'ADMINISTRADORA EN SALUD', 'Soy Administradora de Servicios de Salud con Especialización en Gerencia de empresas de\nSalud, egresada de la Universidad Pedagógica y Tecnológica de Colombia “U.P.T.C.”. Me\ncaracterizo por ser una persona responsable, amable y comprometida con cada proyecto\nque me trazo en la vida. Me encanta viajar dentro y fuera de Colombia, ya que me permite\nconocer otras culturas, mejorar mi nivel de inglés y cultural, así como socializar con otras\npersonas. Hago parte del equipo administrativo de UNICAB hace año y medio,\ndesarrollando mis actividades en el área de secretaria académica como Asistente, tiempo\nque ha sido enriquecedor para mi vida personal y profesional, además de permitirme\ndesarrollar todas mis habilidades y haber encontrado oportunidades de seguir\ncapacitándome.', 'NA', 'Paula Pérez', NULL, 'O +', 'retirado'),
('JULIAN CAMILO', 'DIAZ ACERO', 'julian.diaz@unicab.org', '6BGP16udj3A4xaUbjGNTiQ==999', 'TU', 1052413329, 'PENSAMIENTO NUMERICO', 'NA', '320 216 8417', 'NA', 'TUTOR MEDIADOR', 'LICENCIADO EN MATEMATICAS Y ESTADISTICA', 'NA', 'NA', 'Julian Díaz', '../../../assets/img/equipo/info_julian.jpg', 'O +', 'retirado'),
('KAREN MARIANA', 'GRANADOS OVIEDO', 'karengranadosoviedo@unicab.org', '6tKYFeiSVHrK9B4n2TupdQ==', 'TU', 1052406703, 'PENSAMIENTO NUMERICO', 'NA', '317 495 2167', 'NA', 'TUTOR MEDIADOR', 'NA', 'Soy tutora mediadora de pensamiento matemático, licenciada en matemáticas y\nestadística, actualmente me encuentro involucrada en investigación matemática, más\nprecisamente en el área del álgebra y matemática avanzada, me encanta la estadística y\n\nsiempre estoy en búsqueda de conocimiento relacionado con esta área, actualmente\npráctico actividad física calistenia y pesas, mis metas son culminar dos postgrados, uno\nrelacionado con matemáticas y otro relacionado con actuaría (análisis de riesgos,\nestadística). Hago parte del equipo de UNICAB desde hace 10 meses, los cuales han\nenriquecido mi vida profesional y personal, lo que más me gusta de esta institución es su\nmodelo pedagógico, ya que no solo permite explorar los talentos de nuestros estudiantes,\nsino más importante aún potenciarlos, me gusta compartir mis conocimientos\nespecialmente en matemáticas y aplicar las diferentes teorías de estadística en la\ninstitución.', 'NA', 'Mariana Granados', 'https://unicab.org/assets/img/equipo/Karen .png', 'A +', 'activo'),
('FIDEL MAURICIO', 'DIAZ MARCIALES', 'mauricio.diaz@unicab.org', 'TqSCd2WdPKIdBRjkR+qoWw==', 'TU', 1053559294, 'PENSAMIENTO TECNOLOGICO', 'NA', '310 464 6612', '310 464 6612', 'TUTOR MEDIADOR', 'LICENCIADO EN INFORMATICA Y TECNOLOGIA', 'Soy Tutor mediador de Pensamiento Tecnológico, Licenciado en Informática y Tecnología,\nestudiante de la maestría en ambientes educativos mediados por las TIC ofrecida por la\nUniversidad Pedagógica y Tecnológica de Colombia, La Tecnología está presente en todos\nlos campos, siempre estará en constante innovación y la educación no es la excepción;\nestamos en una sociedad del conocimiento y debido a esto se ha dado un cambio a la\nconducta de la misma. Esto sucede gracias a la forma de comportarnos, de comunicarnos\nincluso la forma de emplearnos; estos son algunos de los motivos por el cual siento una\ngran atracción educativa por la ciencia y la tecnología, La institución UNICAB hace parte de\nestos cambios socio-educativos, por esta y más razones me siento agradecido y dichoso de\npertenecer a este establecimiento de alta calidad.\nMe apasiona los deportes extremos y competitivos, porque puedo superarme a mí mismo\ny para ello, es necesario el desarrollo de cualidades físicas, habilidades motoras,\nresistencia general y, sobre todo, adquirir preparación psicológica, cabe resaltar mi gusto\npor el medio ambiente y la naturaleza, quienes son escenarios para practicar mis\nactividades.', 'NA', 'Mauricio Díaz', 'https://unicab.org/assets/img/equipo/Mauricio.png', 'O +', 'activo');
INSERT INTO tbl_empleados (nombres, apellidos, email, pc, perfil, n_documento, dependencia, skype, celular, celular_what, cargo, profesion, descripcion, foto, nombre_corto, infografia, rh, estado) VALUES
('NAHOMY JERALDIN', 'MINOTA RODRIGUEZ', 'nahomyminota@unicab.org', 'SJPXRDvuQBKvKjrWnTwQ/Q==', 'TU', 1024584082, 'PENSAMIENTO HUMANISTICO ESPAÑOL', 'NA', '313 880 2392', 'NA', 'TUTOR MEDIADOR', 'LICENCIADA EN ESPAÑOL Y FILOLOGÍA CLÁSICA', 'Soy tutora de Pensamiento Humanístico inglés, licenciada y filóloga clásica de la\nUniversidad Nacional de Colombia. Soy amante de los idiomas, hasta el momento tengo\nconocimientos en inglés, francés, algo de latín y griego antiguo, pero quiero seguir\naprendiendo muchos más. Me encanta expresarme a través del arte, ya sea cantar\nmientras toco mi piano o guitarra, o con la actuación. Actualmente, pertenezco a un grupo\nde teatro, donde he retomado una pasión que surgió desde muy pequeña hacía las artes\nescénicas. Me siento afortunada de haber encontrado, hace año y medio, en UNICAB un\nespacio para desarrollar toda mi creatividad, ya que, la enseñanza de idiomas en esta\ninstitución, a través de las TIC me ha permitido enlazar mis dos pasiones, transmitiendo\nmis conocimientos en idiomas mediante el arte. Igualmente, he observado la fascinante\nexperiencia de los estudiantes, cuando encuentran en UNICAB un lugar donde se les\nmotiva a usar sus contextos y habilidades en el proceso de aprendizaje; así, esta\ninstitución se convierte día a día en un espacio seguro para desarrollar las pasiones y\nproyectos de vida de cada niño y niña.', 'NA', 'Nahomy Minota', 'https://unicab.org/assets/img/equipo/Nahomy.png', 'A +', 'activo'),
('YOHANA', 'MORALES', 'administracion@unicab.org', 'FIHiJetMBXePJ3N0juiD0w==', 'PS', 51784292, 'ADMINISTRATIVA', 'NA', '312 786 9003', '312 786 9003', 'ASISTENTE ADMINISTRATIVA', 'NA', '', 'NA', 'Yohana Morales', 'https://unicab.org/assets/img/equipo/yohanna.png', 'NA', 'activo'),
('LIZETH TATIANA', 'GONZALEZ CUEVAS', 'admisiones02@unicab.org', 'fFwc8772EzmhZj0IyhC8kg==', 'PS', 1007413821, 'ADMINISTRATIVA', 'NA', 'NA', 'NA', 'AUXILIAR ADMINISTRATIVA', 'NA', 'Soy estudiante de Contaduría Pública de la Corporación Universitaria Remington de la\nciudad de Sogamoso, soy técnico contable y financiero por el ITEANDES, cuento con\nexperiencia en análisis y cobro de cartera, manejo de programas ofimáticos, Gestión\ndocumental contable-financiera, atención al cliente, recepción de documentos, brindo\ninformación general en el área de admisiones, recibo solicitudes, llamadas y mensajes de\nla planta administrativa, las cuales son redireccionadas a cada área respectiva. También\nbrindo apoyo en el área de coordinación académica en la recepción y respuesta de\nmensajes relacionados con mi área.\nMe caracterizo por un buen manejo y disposición para el trabajo en equipo, soy\npropositiva, creativa, respetuosa, amable con un gran sentido de pertenencia, estoy a\ndisposición de escuchar, aprender y poner en práctica todo tipo de conocimientos y\nobservaciones en pro de mi crecimiento personal, profesional y laboral.', 'NA', 'Tatiana Gonzalez', '../../../assets/img/equipo/Tatiana_2024.jpg', 'NA', 'inactivo'),
('CAMILA ANDREA', 'PALACIOS OLARTE', 'camilapalacios@unicab.org', 'JAW3dEdwxUZRZgv5Fb/Sqw==', 'TU', 1057605307, 'PENSAMIENTO HUMANISTICO INGLES', 'NA', '313 717 9490', 'NA', 'TUTOR MEDIADOR', 'NA', 'Tutora Mediadora del Pensamiento Humanístico Inglés. Licenciada en Lenguas Extranjeras\n(inglés-francés). Actualmente cursando una Maestría en Docencia de Idiomas. Me\napasionan el arte, la música, la literatura, el patinaje y los idiomas. He aprendido y\nenseñado idiomas durante toda mi vida y creo que son la manera más bonita de conocer\notras culturas y conocerte a ti mismo. Para mí, la educación y la docencia son\noportunidades de cambiar el mundo, de sembrar ideas, de cultivar sueños y de construir\nfuturos brillantes. En UNICAB trabajamos no sólo para enseñar inglés sino también para\nfomentar una comunicación real y significativa. Ser Tutora Mediadora me ha permitido\nconocer el mundo deportivo, artístico y cultural de cada uno de mis estudiantes, al igual\nque guiarlos para potenciar sus habilidades y conocimientos a través del idioma. Ser guía\nde su aprendizaje, fomentar sus proyectos de vida y observar todo lo que tienen para\nbrindarle al mundo ha sido una experiencia muy gratificante.\n&quot;Education is the most powerful weapon which you can use to change the world.&quot; -Nelson\nMandela.', 'NA', 'Camila Palacios', '../../../assets/img/equipo/info_camila.png', 'O +', 'inactivo'),
('EILEEN KARINA', 'LA ROTA CORREA', 'eileenlarota@unicab.org', 'bz+aeJbV0m3dSUf7gjAESg==', 'TU', 1057601020, 'PENSAMIENTO HUMANISTICO ESPAÑOL', 'NA', '314 420 4224', 'NA', 'TUTOR MEDIADOR', 'NA', 'Soy tutora mediadora de pensamiento bioético, profesional en educación básica con\nénfasis en matemáticas, inglés y lengua castellana, especialista en necesidades de la\neducación. Mi interés primordial es poder transmitir con calidad mis conocimientos a mis\nestudiantes, lograr que el aprendizaje sea para ellos un disfrute y no una obligación\nporque a través del afianzamiento de los conocimientos primarios lograremos que tengan\nbases suficientes para superar con fluidez los nuevos retos, los siguientes cursos y demás\naspectos de la vida académica. En mi tiempo libre me encanta disfrutar del cine y la\nfamilia, soy apasionada por la lectura y la investigación en mi área de conocimiento, para\nlograr así tener nuevas herramientas actualizadas para desarrollar mi labor.\nSoy docente de UNICAB desde abril de 2021 y ha sido una experiencia gratificante, el\nfuturo de la educación no puede ser otro que el virtual, la inmediatez de la tecnología al\nservicio del conocimiento, espero poder seguir aportando para la formación de\nestudiantes bien preparados.', 'NA', 'Eileen La Rota', NULL, 'O +', 'inactivo'),
('MARIA JOSE', 'BELLO', 'comunicacion@unicab.org', 'H7htvFNJHiexQaZvv7uObg==', 'PU', 1007751497, 'EQUIPO CREATIVO', 'NA', '310 481 7115', 'NA', 'COMUNICADORA SOCIAL', 'COMUNICADORA SOCIAL', 'NA', 'NA', 'María José Bello', NULL, 'NA', 'inactivo'),
('JUAN DAVID', 'ALVAREZ LOPEZ', '_psico03@unicab.org', 'jBI+0bFf0OLBQsFUhijlmQ==', 'PS', 1057589940, 'ADMINISTRATIVA', 'https://meet.google.com/teb-ujzw-giq', '320 588 6995', 'NA', 'PSICOLOGO', 'PSICOLOGO', 'NA', 'NA', 'Juan Alvarez', '../../../assets/img/equipo/Psicologo_Juan_David_2024.jpg', 'O +', 'inactivo'),
('DANIEL', 'CONDIA FIGUEREDO', 'daniel.condia@unicab.org', 'HsU0VX8L1oHmgFxhIMwGSA==', 'SU_2', 1023163168, 'SISTEMAS', 'NA', '316 747 0699', '316 747 0699', 'DESARROLLADOR WEB', 'PRACTICANTE UNIVERSITARIO', 'NA', 'NA', 'N', NULL, 'NA', 'retirado'),
('ANGÉLICA', 'MESA VERGARA', 'angelicamesa@unicab.org', 'Gm0MP7h+x83LkcpFWhMv0g==', 'TU', 123456789, 'PENSAMIENTO HUMANISTICO INGLES', 'NA', '000 000 0000', 'NA', 'TUTOR MEDIADOR', 'NA', 'NA', 'NA', 'Angélica Mesa', 'https://unicab.org/assets/img/equipo/Angelica.png', 'NA', 'activo'),
('DIEGO FERNEY', 'CAÑÓN LÓPEZ', 'diegofernerclopez@unicab.org', 'r3Vm6536xbxYJ2cbR/sYtQ==', 'TU', 123456789, 'PENSAMIENTO NUMERICO', 'NA', '000 000 0000', '000 000 0000', 'TUTOR MEDIADOR', 'NA', 'NA', 'NA', 'DIEGO FERNEY', 'https://unicab.org/assets/img/equipo/diego.png', 'NA', 'activo'),
('DIANA', 'SANCHEZ', 'dianasanchez@unicab.org', 'zjn4IOYM4XjkGMepQso4mQ==', 'TU', 1052397899, 'PENSAMIENTO HUMANISTICO INGLES', 'NA', '321 492 5803', 'NA', 'TUTOR MEDIADOR', 'NA', 'NA', 'NA', '', 'https://unicab.org/assets/img/equipo/Diana.png', 'NA', 'activo'),
('HAYDER ORLANDO', 'ZORRO RIZO', 'hayderzorrorizo2@gmail.com', 'ZF7VKAVqJtHq0XrKzF0PLA==', 'TU', 1058352021, 'ADMINISTRATIVA', 'NA', '000 000 0000', 'NA', 'CREADOR DE CONTENIDO', 'NA', 'NA', 'NA', 'Hayder Zorro', NULL, 'NA', 'activo'),
('ARNULFO', 'MESA LARA', 'arnulfomesa@gmail.com', 'w8GbK1amufoYODUQLb5mmw==', 'PS', 9526629, 'ADMINISTRATIVA', '', '000 000 0000', 'NA', 'ASESOR', 'NA', 'NA', 'NA', 'Arnulfo Mesa', NULL, 'NA', 'activo');

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_seguimientos;

CREATE TABLE tbl_seguimientos (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_psicologo int(11) NOT NULL,
  fecha date NOT NULL,
  hora varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  documento_est varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_seg_psi;

CREATE TABLE tbl_seg_psi (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_valoracion int(11) NOT NULL,
  id_psicologo int(11) NOT NULL,
  objetivo varchar(500) NOT NULL,
  desarrollo varchar(500) NOT NULL,
  fecha date NOT NULL,
  hora varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  estado varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL COMMENT 'abierto, realizado, no_realizado',
  fecha_real date NOT NULL,
  hora_real varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  avances varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  acciones_est varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  acciones_acu varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  compromisos varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  proc_post varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_agendamientos;

CREATE TABLE tbl_agendamientos (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_empleado int(11) NOT NULL,
  id_tipo_agenda int(11) NOT NULL,
  fecha varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  hora varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  descripcion varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  estado varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL COMMENT 'en proceso, confirmado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*######################################################################################################*/

DROP TABLE IF EXISTS tbl_dias_festivos;

CREATE TABLE tbl_dias_festivos (
  dia varchar(10) NOT NULL PRIMARY KEY,
  descripcion varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

INSERT INTO tbl_dias_festivos (dia, descripcion) VALUES
('2025-12-08', 'festivo'),
('2025-12-12', 'receso'),
('2025-12-13', 'receso'),
('2025-12-14', 'receso'),
('2025-12-15', 'receso'),
('2025-12-16', 'receso'),
('2025-12-17', 'receso'),
('2025-12-18', 'receso'),
('2025-12-19', 'receso'),
('2025-12-20', 'receso'),
('2025-12-21', 'receso'),
('2025-12-22', 'receso'),
('2025-12-23', 'receso'),
('2025-12-24', 'receso'),
('2025-12-25', 'festivo'),
('2025-12-26', 'receso'),
('2025-12-27', 'receso'),
('2025-12-28', 'receso'),
('2025-12-29', 'receso'),
('2025-12-30', 'receso'),
('2025-12-31', 'receso'),
('2026-01-01', 'festivo'),
('2026-01-02', 'receso'),
('2026-01-03', 'receso'),
('2026-01-04', 'receso'),
('2026-01-05', 'receso'),
('2026-01-06', 'receso'),
('2026-01-07', 'receso'),
('2026-01-08', 'receso'),
('2026-01-09', 'receso'),
('2026-01-10', 'receso'),
('2026-01-11', 'receso'),
('2026-01-12', 'festivo'),
('2026-01-13', 'receso'),
('2026-01-14', 'receso'),
('2026-01-15', 'receso'),
('2026-01-16', 'receso'),
('2026-01-17', 'receso'),
('2026-01-18', 'receso'),
('2026-03-23', 'festivo'),
('2026-04-02', 'festivo'),
('2026-04-03', 'festivo'),
('2026-05-01', 'festivo'),
('2026-05-18', 'festivo'),
('2026-06-08', 'festivo'),
('2026-06-15', 'festivo'),
('2026-06-29', 'festivo'),
('2026-07-20', 'festivo'),
('2026-08-07', 'festivo'),
('2026-08-17', 'festivo'),
('2026-10-12', 'festivo'),
('2026-11-02', 'festivo'),
('2026-11-16', 'festivo'),
('2026-12-08', 'festivo'),
('2026-12-25', 'festivo'),
('2027-01-01', 'festivo'),
('2027-01-11', 'festivo'),
('2027-03-22', 'festivo'),
('2027-03-25', 'festivo'),
('2027-03-26', 'festivo'),
('2027-05-10', 'festivo'),
('2027-05-31', 'festivo'),
('2027-06-07', 'festivo'),
('2027-07-05', 'festivo'),
('2027-07-20', 'festivo'),
('2027-08-16', 'festivo'),
('2027-10-18', 'festivo'),
('2027-11-01', 'festivo'),
('2027-11-15', 'festivo'),
('2027-12-08', 'festivo');

/*######################################################################################################*/

/*######################################################################################################*/

/*######################################################################################################*/

/*######################################################################################################*/