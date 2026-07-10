<?php
    $nivelMap = [
        'raiz' => [
            'repo_prefix' => '',
            'link_class'  => 'linkNivelRaiz',
        ],
        'uno' => [
            'repo_prefix' => '../',
            'link_class'  => 'linkNivelUno',
        ],
        'dos' => [
            'repo_prefix' => '../../',
            'link_class'  => 'linkNivelDos',
        ],
        'tres' => [
            'repo_prefix' => '../../../',
            'link_class'  => 'linkNivelTres',
        ],
    ];

    if (!isset($nivel) || !array_key_exists($nivel, $nivelMap)) {
        $nivel = 'raiz';
    }
    $repoPrefix  = $nivelMap[$nivel]['repo_prefix'];
    $levelSelect = $nivelMap[$nivel]['link_class'];

    require_once "{$repoPrefix}business/repositories/1cc2s4Home.php";
    require_once __DIR__ . '/auxiliares.php'; 

    // -----------------------------
    // 2) OBTENER DATOS DE CONTACTO
    // -----------------------------

    $tel       = obtenerValorSimple($mysqli1, $sentencia, 13) ?: '';
    $correo    = obtenerValorSimple($mysqli1, $sentencia, 14) ?: '';
    $direccion = obtenerValorSimple($mysqli1, $sentencia, 15) ?: '';
    $ubicacion = obtenerValorSimple($mysqli1, $sentencia, 16) ?: '';

    // -----------------------------
    // 3) LOGO DEL FOOTER
    // -----------------------------

    $imagenesDatos = obtenerFilas($mysqli1, $sentencia, 34);
    $logoFooter = [];
    foreach ($imagenesDatos as $fila) {
        if (strpos($fila['descripcion'], 'logo') !== false) {
            $logoFooter = $fila;
            break;
        }
    }

    // -----------------------------
    // 4) REDES SOCIALES
    // Misma lógica de footer.php: sentencia 37 para links, sentencia 36 para imágenes
    // Filtrar solo: facebook, instagram, youtube, tiktok
    // -----------------------------

    $redesPermitidas = ['facebook', 'instagram', 'youtube', 'tiktok'];

    // 4.1) Obtener links (sentencia 37: parametro -> t1)
    $linksDatos = obtenerFilas($mysqli1, $sentencia, 37);
    $linksMap   = [];
    foreach ($linksDatos as $filaLink) {
        $linksMap[$filaLink['parametro']] = $filaLink['t1'];
    }

    // 4.2) Obtener imágenes de redes sociales (sentencia 36)
    $smImagenesDatos = obtenerFilas($mysqli1, $sentencia, 36);

    // 4.3) Combinar y filtrar solo las redes permitidas
    $smFooter = [];
    foreach ($smImagenesDatos as $filaSM) {
        $titulo = strtolower(trim($filaSM['titulo']));
        if (!in_array($titulo, $redesPermitidas)) {
            continue; // saltar redes no deseadas
        }
        $ruta = $filaSM['ruta'];
        $link = $linksMap[$titulo] ?? '#';
        $smFooter[] = [
            'ruta'  => $ruta,
            'title' => $titulo,
            'link'  => $link,
        ];
    }

    // 4.4) Construir HTML de redes sociales
    $hmtl_social_media = '';
    foreach ($smFooter as $imagen) {
        $rutaImg     = rutaPorNivel($imagen['ruta']);
        $tituloClean = $imagen['title'];
        $linkClean   = $imagen['link'];
        $height      = $tituloClean === 'youtube' ? 20 : 25;

        $hmtl_social_media .= '
            <a class="mx-2" href="' . $linkClean . '" target="_blank">
                <img class="social-media-icon zoom-hover" style="height:' . $height . 'px" 
                    src="' . $rutaImg . '" 
                    alt="' . $tituloClean . '">
            </a>';
    }

    // -----------------------------
    // 5) COPYRIGHT
    // Sentencia 38: parametro 'terminos_condiciones' y 'copyright'
    // -----------------------------

    $copyrightDatos = obtenerFilas($mysqli1, $sentencia, 38);
    $html_copyright = '';
    foreach ($copyrightDatos as $filaCopy) {
        $textoCopy = $filaCopy['t1'];
        $html_copyright .= '
            <p4-footer class="terminos-condiciones-footer text-center m-auto font-roboto-regular tx-white">'
                . $textoCopy .
            '</p4-footer>';
    }

    // Obteniendo Enlaces
    $sql_datos = "";
    $res_sentencia = $mysqli1->query($sentencia."172");
    while($row_sentencia = $res_sentencia->fetch_assoc()){
         $sql_datos = $row_sentencia['campos'].$row_sentencia['tablas'].str_replace('|', '\'', $row_sentencia['condiciones']);
    }

    $enlaces_explore_footer = '<div class="col-auto">
                                <h6-footer class="font-roboto-black tx-pink mb-3" style="font-size: 14px;">EXPLORE</h6-footer>
                                <ul class="list-unstyled">';
    $enlaces_access_footer = '<div class="col-auto">
                                <h6-footer class="font-roboto-black tx-pink mb-3" style="font-size: 14px;">ACCESS</h6-footer>
                                <ul class="list-unstyled">';

    $res_enlaces = $mysqli1->query($sql_datos);
    $filas = [];
    $fila = 1;
    while ($row_enlaces = $res_enlaces->fetch_assoc()) {
        $filas[] = $row_enlaces;        
        if ($fila < 4) {
            $enlaces_explore_footer .= '<li class="mb-2"><a href="'.$row_enlaces[$levelSelect].'" class="font-roboto-light tx-white text-decoration-none" style="font-size: 13px;" target="'.$row_enlaces['destino'].'">'.$row_enlaces['enlace'].'</a></li>';
        }
        else {
            $enlaces_access_footer .= '<li class="mb-2"><a href="'.$row_enlaces[$levelSelect].'" class="font-roboto-light tx-white text-decoration-none" style="font-size: 13px;" target="'.$row_enlaces['destino'].'">'.$row_enlaces['enlace'].'</a></li>';
        }
        $fila++;
    }
    $enlaces_explore_footer .= '</ul>
                        </div>';
    $enlaces_access_footer .= '</ul>
                        </div>';

    $a = 1;
    // -----------------------------
    // 6) SALIDA FINAL (HTML)
    // Diseño igual a la imagen de referencia:
    // [LOGO + descripción + redes] | [EXPLORE] | [ACCESS] | [CONTACTO]
    // -----------------------------
?>

<div class="container-fluid p-0 m-0">
    <div class="row w-100 p-0 m-0">
        <footer class="w-100 p-0 m-0 bg-dark-blue">

            <!-- PRIMER FOOTER -->
            <div class="first-footer mt-5 col-11 m-auto d-flex flex-column tx-white justify-content-end pb-5">
                <div class="d-flex flex-column flex-lg-row justify-content-between align-items-start">

                    <!-- COLUMNA IZQUIERDA: LOGO + DESCRIPCIÓN + REDES -->
                    <div class="col-12 col-lg-3 d-flex flex-column mb-5 mb-lg-0">
                        <?php if (!empty($logoFooter)): ?>
                            <div class="mb-3">
                                <img src="<?php echo rutaPorNivel($logoFooter['ruta']); ?>" 
                                     alt="THRIVE Global Academy" 
                                     style="height: 120px; width: auto;">
                            </div>
                        <?php endif; ?>

                        <p-footer class="font-roboto-light tx-white mb-4" style="font-size: 14px; line-height: 1.6;">
                            Education without borders to shape the global leaders of tomorrow, from anywhere in the world.
                        </p-footer>

                        <!-- Redes sociales: facebook, instagram, youtube, tiktok -->
                        <div class="d-flex gap-2">
                            <?php echo $hmtl_social_media; ?>
                        </div>
                    </div>

                    <!-- COLUMNA CENTRAL: MENÚS EXPLORE y ACCESS -->
                    <div class="col-12 col-lg-4 d-flex justify-content-between">

                        <!-- EXPLORE -->
                        <!--<div class="col-auto">
                            <h6-footer class="font-roboto-black tx-pink mb-3" style="font-size: 14px;">EXPLORE</h6-footer>
                            <ul class="list-unstyled">
                                <li class="mb-2"><a href="#" class="font-roboto-light tx-white text-decoration-none" style="font-size: 13px;">Home</a></li>
                                <li class="mb-2"><a href="business/org/pages/modelo.php" target="_blank" class="font-roboto-light tx-white text-decoration-none" style="font-size: 13px;">Pedagogical Model</a></li>
                                <li class="mb-2"><a href="#ofertaAcademica" class="font-roboto-light tx-white text-decoration-none" style="font-size: 13px;">Academic Offer</a></li>
                            </ul>
                        </div>-->
                        <?php echo $enlaces_explore_footer; ?>

                        <!-- ACCESS -->
                        <!--<div class="col-auto">
                            <h6-footer class="font-roboto-black tx-pink mb-3" style="font-size: 14px;">ACCESS</h6-footer>
                            <ul class="list-unstyled">
                                <li class="mb-2"><a href="https://aulavirtual.unicab.org/login/" target="_blank" class="font-roboto-light tx-white text-decoration-none" style="font-size: 13px;">Virtual Classroom</a></li>
                                <li class="mb-2"><a href="https://unicab.org/login_registro.php" target="_blank" class="font-roboto-light tx-white text-decoration-none" style="font-size: 13px;">Academic Records</a></li>
                                <li class="mb-2"><a href="https://mail.google.com/a/unicab.org/" target="_blank" class="font-roboto-light tx-white text-decoration-none" style="font-size: 13px;">Institutional Email</a></li>
                                <li class="mb-2"><a href="business/org/pages/pagos.php" target="_blank" class="font-roboto-light tx-white text-decoration-none" style="font-size: 13px;">Tuition Payments</a></li>
                            </ul>
                        </div>-->
                        <?php echo $enlaces_access_footer; ?>
                    </div>

                    <!-- COLUMNA DERECHA: CONTACTO -->
                    <div class="col-12 col-lg-3 d-flex flex-column align-items-start text-start">
                        <p-footer class="font-roboto-thinitalic tx-white mb-1" style="font-size: 12px; line-height: 1.2;">
                            Call us or write to us
                        </p-footer>
                        <h5-footer class="font-roboto-bolditalic tx-white mb-1" style="font-size: 28px; line-height: 1.1; font-weight: bold;">
                            <?php echo $tel; ?>
                        </h5-footer>
                        <h5-footer class="font-roboto-bolditalic tx-white mb-3" style="font-size: 16px; line-height: 1.2; font-weight: bold;">
                            <?php echo $correo; ?>
                        </h5-footer>
                        <p1-footer class="font-roboto-bolditalic tx-white mb-1" style="font-size: 12px; line-height: 1.3;">
                            <?php echo $direccion; ?>
                        </p1-footer>
                        <p-footer class="font-roboto-light tx-white" style="font-size: 12px; line-height: 1.3;">
                            <?php echo $ubicacion; ?>
                        </p-footer>
                    </div>

                </div>
                <!-- ALIADOS OMITIDOS INTENCIONALMENTE -->
            </div>

            <!-- SEGUNDO FOOTER: COPYRIGHT -->
            <div class="second-footer d-flex flex-column bg-dark-blue w-100 pb-4" style="background-color: #222A75; box-shadow: 0 -4px 6px rgba(0,0,0,0.2);">
                <?php echo $html_copyright; ?>
            </div>

        </footer>
    </div>
</div>