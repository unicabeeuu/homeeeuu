DROP TABLE IF EXISTS tbl_enlaces_footer;

CREATE TABLE tbl_enlaces_footer (
    id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    enlace varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
    linkNivelRaiz varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
    linkNivelTres varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
    destino varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL,
    visible int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

INSERT INTO tbl_enlaces_footer (enlace, linkNivelRaiz, linkNivelTres, destino, visible) VALUES
('Home', '#', '../../../index.php', '', 1),
('Pedagogical Model', 'business/org/pages/modelo.php', '../../../business/org/pages/modelo.php', '', 1),
('Academic Offer', '#ofertaAcademica', '../../../#ofertaAcademica', '', 1),
('Virtual Classroom', 'https://campus.thriveusa.org/login/index.php', 'https://campus.thriveusa.org/login/index.php', '_blank', 1),
('Academic Records', 'https://thriveusa.org/login_registro.php', 'https://thriveusa.org/login_registro.php', '_blank', 1),
('Institutional Email', 'https://mail.google.com/a/unicab.org/', 'https://mail.google.com/a/unicab.org/', '_blank', 1),
('Tuition Payments', 'business/org/pages/pagos.php', '../../../business/org/pages/pagos.php', '', 1);