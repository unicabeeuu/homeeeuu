DROP TABLE IF EXISTS tbl_conceptos_pago;

CREATE TABLE tbl_conceptos_pago (
    id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    valor varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
    texto varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci; 

INSERT INTO tbl_conceptos_pago ( valor ,  texto ) VALUES ('m', 'Enrollment');
INSERT INTO tbl_conceptos_pago ( valor ,  texto ) VALUES ('pm1', 'Pension month 1 (February)');
INSERT INTO tbl_conceptos_pago ( valor ,  texto ) VALUES ('pm2', 'Pension month 2 (March)');
INSERT INTO tbl_conceptos_pago ( valor ,  texto ) VALUES ('pm3', 'Pension month 3 (April)');
INSERT INTO tbl_conceptos_pago ( valor ,  texto ) VALUES ('pm4', 'Pension month 4 (May)');
INSERT INTO tbl_conceptos_pago ( valor ,  texto ) VALUES ('pm5', 'Pension month 5 (June)');
INSERT INTO tbl_conceptos_pago ( valor ,  texto ) VALUES ('pm6', 'Pension month 6 (July)');
INSERT INTO tbl_conceptos_pago ( valor ,  texto ) VALUES ('pm7', 'Pension for month 7 (August)');
INSERT INTO tbl_conceptos_pago ( valor ,  texto ) VALUES ('pm8', 'Pension month 8 (September)');
INSERT INTO tbl_conceptos_pago ( valor ,  texto ) VALUES ('pm9', 'Pension month 9 (October)');
INSERT INTO tbl_conceptos_pago ( valor ,  texto ) VALUES ('pm10', 'Pension month 10 (November)');
INSERT INTO tbl_conceptos_pago ( valor ,  texto ) VALUES ('ocp', 'Other periodic charges');
INSERT INTO tbl_conceptos_pago ( valor ,  texto ) VALUES ('pp', 'First payment');
INSERT INTO tbl_conceptos_pago ( valor ,  texto ) VALUES ('dg', 'Graduation fees');
