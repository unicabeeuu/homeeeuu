DROP TABLE IF EXISTS tbl_formularios;

CREATE TABLE tbl_formularios (
    id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_seccion int(11) NOT NULL,
    campo varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
    tipo varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
    texto varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
    obligatorio varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
    soloLectura varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '',
    habilitado varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '',
    placeHolder varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT '',
    INDEX fk_tbl_formularios_tbl_secciones (id_seccion),
    CONSTRAINT fk_tbl_formularios_tbl_secciones FOREIGN KEY (id_seccion) REFERENCES tbl_secciones (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

INSERT INTO tbl_formularios (id_seccion, campo, tipo, texto, obligatorio, soloLectura, habilitado, placeHolder ) VALUES 
(4, 'nombre', 'text', 'name', 'required', '', '', '' ),
(4, 'correo', 'text', 'mail', 'required', '', '', '' ),
(4, 'asunto', 'text', 'matter', 'required', '', '', '' ),
(4, 'mensaje', 'text', 'message', 'required', '', '', '' ),
(4, 'checkbox', 'checkbox', 'checkbox', 'required', '', '', '' ),
(4, 'enviaMensaje', 'submit', 'Send your message', '', '', '', '' ),

(34, 'register_documentoe', 'text', 'Enter the student ID number and then click Continue with the process!', 'required', '', '', '"Write the student´s document number without periods"' ),
(34, 'register_documentoe_f', 'hidden', '', 'required', '', '', '' ),
(34, 'estnuevo', 'hidden', '', '', '', '', '' ),
(34, 'register_apellidos', 'text', 'Last name', 'required', '', '', 'Write the student´s last name(s).' ),
(34, 'register_nombres', 'text', 'Names', 'required', '', '', 'Write the student´s first name(s).' ),
(34, 'register_grado', 'select', 'Select the grade you are entering', 'required', '', '', '' ),
(34, 'grado_permitido', 'hidden', '', '', '', '', '' ),
(34, 'register_tipo_documento', 'select', 'Type of identity document', 'required', '', '', '' ),
(34, 'td_text', 'hidden', '', '', '', '', '' ),
(34, 'register_telefono', 'text', 'Phone number', 'required', '', '', 'Write the student´s phone number without spaces' ),
(34, 'register_medio', 'select', 'Select the arrival method', 'required', '', '', '' ),
(34, 'register_genero', 'select', 'Gender', 'required', '', '', '' ),
(34, 'activiadad_extra', 'text', 'Extra activity', 'required', '', '', 'Write the student´s extra activity' ),
(34, 'register_nombreA', 'text', 'Name', 'required', '', '', 'Write the guardian name' ),
(34, 'register_documentoA', 'text', 'Document', 'required', '', '', 'Write the guardian document number without periods' ),
(34, 'register_direccionA', 'text', 'Residence address', 'required', '', '', 'Write the guardian residence address' ),
(34, 'register_celularA', 'text', 'Cell phone number', 'required', '', '', 'Write the guardian cell phone number without spaces' ),
(34, 'register_correoA', 'text', 'Guardian email (to which the electronic invoice will be sent)', 'required', '', '', 'Write the guardian email address' ),
(34, 'register_correoA1', 'text', 'Confirm guardian email address', 'required', '', '', 'Confirm the guardian email address' ),
(34, 'parentesco_acudiente_1', 'select', 'Relationship', 'required', '', '', '' ),
(34, 'register_ciudada', 'text', 'City in charge', 'required', '', '', 'Write the guardian city' ),
(34, '', 'submit', '', '', '', '', '' );

INSERT INTO tbl_formularios (id_seccion, campo, tipo, texto, obligatorio, soloLectura, habilitado, placeHolder) VALUES
(37, 'comentario', 'text', 'Comment', 'required', '', '', 'Comment'),
(37, 'correo', 'text', 'Email', 'required', '', '', 'Email address'),
(37, 'aceptaDatos', 'checkbox', 'I agree that these data are stored and processed for the purpose of establishing contact. I am aware that I can revoke my consent at any time.', 'required', '', '', ''),
(37, 'enviarComentarioBlog', 'submit', 'Send', '', '', '', '');

INSERT INTO tbl_formularios (id_seccion, campo, tipo, texto, obligatorio, soloLectura, habilitado, placeHolder) VALUES
(39, 'btn_pagoamigo', 'button', 'Click to pay', '', '', '', ''),
(39, 'nombre_responsable', 'text', 'Information about who pays', 'required', ' ', ' ', 'Name of the payer'),
(39, 'identificacion_responsable', 'text', '', 'required', '', '', 'Identification number'),
(39, 'tratamiento_datos', 'checkbox', 'I agree to the processing of my data', 'required', '', '', ''),
(39, 'opvalor0', 'radio', 'Enter payment reference', '', '', '', ''),
(39, 'opvalor1', 'radio', 'Enter manual value', '', '', '', ''),
(39, 'txtref', 'text', '', 'required', '', '', 'Payment reference'),
(39, 'txtvalorref', 'text', '', '', 'readonly', '', 'Amount to pay'),
(39, 'consultaref', 'button', 'Consult', '', '', '', ''),
(39, 'txtnumdoc', 'text', 'Student document', 'required', '', '', 'Student document'),
(39, 'txtanio', 'text', 'Year', 'required', '', '', 'Year'),
(39, 'txtvalor', 'text', 'Enter payment value', 'required', '', '', 'Enter value'),
(39, 'txtvalorrefman', 'text', '', '', 'readonly', '', 'Payment reference'),
(39, 'btnpagar', 'submit', 'Make payment via ePayco', '', '', '', '')
;

INSERT INTO tbl_formularios (id_seccion, campo, tipo, texto, obligatorio, soloLectura, habilitado, placeHolder)
VALUES 
(25, 'correo_estados_financieros', 'correo', 'email', 'required', '', '', 'User email'),
(25, 'password_estados_financieros', 'password', 'password', 'required', '', '', 'Password'),
(25, 'submit-estados-financieros', 'submit', 'Request', '', '', '', '');

INSERT INTO tbl_formularios (id_seccion, campo, tipo, texto, obligatorio, soloLectura, habilitado, placeHolder)
VALUES 
-- Primera fila
(26, 'nombre_certificaciones', 'texto', 'name', 'required', '', '', 'Full name'),
(26, 'identificacion_certificaciones', 'number', 'identification', 'required', '', '', 'Identification number'),
(26, 'tipo_id_certificaciones', 'texto', 'type', 'required', '', '', 'Select type'),

-- Segunda fila
(26, 'correo_certificaciones', 'correo', 'email', 'required', '', '', 'Email address'),
(26, 'telefono_certificaciones', 'numero', 'phone', 'required', '', '', 'Phone number'),
(26, 'grado_id_certificaciones', 'texto', 'grade', 'required', '', '', 'Select grade'),

-- Relación con la institución
(26, 'relacion_certificaciones_select', 'texto', 'relation', 'required', '', '', 'Select relation with the institution'),

-- Tipo de certificación
(26, 'tipo_certificaciones_select', 'texto', 'type of certification', 'required', '', '', 'Select type of certification'),

-- Fecha 
(26, 'certificaciones_date', 'numero', 'date', 'required', '', '', 'Date'),

-- Propósito
(26, 'proposito_certificaciones', 'texto', 'purpose', 'required', '', '', 'Purpose of the document'),

-- Tratamiento de datos
(26, 'tratamiento_certificaciones', 'checkbox', 'I accept data treatment', 'required', '', '', 'I accept data treatment.'),

-- Botón de envío
(26, 'submit-certificaciones-papeles', 'submit', 'Request', '', '', '', '');

DELETE FROM tbl_formularios WHERE id = 36 AND campo = 'tratamiento_datos';

INSERT INTO tbl_formularios (id_seccion, campo, tipo, texto, obligatorio, soloLectura, habilitado, placeHolder) VALUES
(39, 'selmediopago', 'select', 'You must select a payment method.', 'required', '', '', 'Select payment method'),
(39, 'selconcepto', 'select', 'You must select a payment concept.', 'required', '', '', 'Select payment concept')
;

INSERT INTO tbl_formularios (id_seccion, campo, tipo, texto, obligatorio, soloLectura, habilitado, placeHolder) VALUES
(8, 'correoNewsletter', 'text', 'Email', 'required', '', '', 'Enter your email');

INSERT INTO tbl_formularios (id_seccion, campo, tipo, texto, obligatorio, soloLectura, habilitado, placeHolder) VALUES
(39, 'txtcodfact', 'hidden', '', '', '', '', ''),
(39, 'txtconcepto', 'hidden', '', '', '', '', ''),
(39, 'txtcontrolpago', 'hidden', '', '', '', '', ''),
(39, 'txtidgrado', 'hidden', '', '', '', '', '')
;

INSERT INTO tbl_formularios (id_seccion, campo, tipo, texto, obligatorio, soloLectura, habilitado, placeHolder) VALUES
(8, 'unsubscribeNewsletter', 'text', 'Email', 'required', '', '', 'Enter your email'),
(8, 'unsubscribeNewsletterButton', 'submit', 'Cancel Subscription.', '', '', '', '')
;
