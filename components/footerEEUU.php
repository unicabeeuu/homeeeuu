<?php
/**
 * footer.php
 * 
 * Versión refactorizada y organizada del footer. 
 * Asume que $nivel y $mysqli1 ya están disponibles.
 */

// -----------------------------
// 1) DEFINICIONES GENERALES
// -----------------------------

// 1.1) Mapeo de niveles a rutas de inclusión/recurso
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

// Verificar que $nivel tenga un valor válido; en caso contrario, asignar “raiz”
if (!isset($nivel) || !array_key_exists($nivel, $nivelMap)) {
    $nivel = 'raiz';
}
$repoPrefix  = $nivelMap[$nivel]['repo_prefix'];
$levelSelect = $nivelMap[$nivel]['link_class'];

// 1.2) Incluir el repositorio correspondiente (business/repositories/1cc2s4Home.php)
require_once "{$repoPrefix}business/repositories/1cc2s4Home.php";

// 2) Funciones auxiliares
require_once __DIR__ . '/auxiliares.php'; 

// -----------------------------
// 3) OBTENER DATOS DE CONTACTO
// -----------------------------

$tel       = obtenerValorSimple($mysqli1, $sentencia, 13) ?: '';
$correo    = obtenerValorSimple($mysqli1, $sentencia, 14) ?: '';
$direccion = obtenerValorSimple($mysqli1, $sentencia, 15) ?: '';
$ubicacion = obtenerValorSimple($mysqli1, $sentencia, 16) ?: '';


// -----------------------------
// 4) IMÁGENES DEL FOOTER (sección principal)
// -----------------------------

// 4.1) Cargar datos de imágenes (sentencia 34)
$imagenesDatos = obtenerFilas($mysqli1, $sentencia, 34);

// 4.2) Construir logo de THRIVE (para la sección principal del footer)
// Buscar imagen con descripción 'logo' en id_seccion = 10
$logoFooter = [];
foreach ($imagenesDatos as $fila) {
    if (strpos($fila['descripcion'], 'logo') !== false) {
        $logoFooter = $fila;
        break;
    }
}


// -----------------------------
// 5) REDES SOCIALES
// -----------------------------

// 5.1) Obtener menú para EXPLORAR
$menuExplorar = obtenerFilas($mysqli1, $sentencia, 27); // Sentencia para obtener menús

// 5.2) Obtener menú para ACCESOS
$menuAccesos = obtenerFilas($mysqli1, $sentencia, 27); // Ajustar según sea necesario

// 5.3) Obtener lista de enlaces (sentencia 37: links con parámetros)
$linksDatos   = obtenerFilas($mysqli1, $sentencia, 37);
$linksMap     = [];
foreach ($linksDatos as $filaLink) {
    // cada $filaLink tiene 'parametro' y 't1' (el link real)
    $linksMap[$filaLink['parametro']] = $filaLink['t1'];
}

// 5.4) Obtener imágenes redes sociales + títulos (sentencia 36)
$smImagenesDatos = obtenerFilas($mysqli1, $sentencia, 36);

// 5.5) Combinar datos: ruta, título y link
$smFooter = [];
foreach ($smImagenesDatos as $filaSM) {
    $titulo = $filaSM['titulo'];
    $ruta   = $filaSM['ruta'];
    $link   = $linksMap[$titulo] ?? '#';
    $smFooter[] = [
        'ruta'  => $ruta,
        'title' => $titulo,
        'link'  => $link,
    ];
}

// 5.6) Construir HTML de redes sociales (versión compacta)
$hmtl_social_media = '';
foreach ($smFooter as $imagen) {
    $rutaImg     = rutaPorNivel($imagen['ruta']);
    $tituloClean = $imagen['title'];
    $linkClean   = $imagen['link'];
    $height      = $tituloClean == 'youtube' ? 20 : 25;

    $hmtl_social_media .= '
        <a class="mx-2 mx-lg-2 mx-xl-2" href="' . $linkClean . '" target="_blank">
            <img class="social-media-icon zoom-hover" style="height:' . $height . 'px" 
                src="' . $rutaImg . '" 
                alt="' . $tituloClean . '">
        </a>';
}


// -----------------------------
// 6) ALIADOS
// -----------------------------

// 6.1) Obtener datos de aliados (sentencia 138)
$aliadosDatos = obtenerFilas($mysqli1, $sentencia, 138);

// 6.2) Construir HTML de aliados
$hmtl_aliados = '';
foreach ($aliadosDatos as $aliado) {
    $titulo    = $aliado['titulo'];
    $ruta      = $aliado['ruta'];
    $rutaImg   = rutaPorNivel($ruta);

    $hmtl_aliados .= '
        <div class="row col-12 col-lg-7 col-md-7 d-flex flex-column flex-lg-row flex-md-row">
            <p3-footer class="col-12 col-lg-3 col-md-3 font-roboto-black tx-white my-4 my-lg-auto mx-auto mx-lg-0 text-center text-lg-start">'
                . $titulo .
            '</p3-footer>
            <img class="col-12 col-lg-7 col-md-7 my-auto mx-auto mx-lg-0" 
                src="' . $rutaImg . '" 
                alt="' . $titulo . '" 
                style="width:200px;height:auto;">
        </div>';
}


// -----------------------------
// 7) ENTIDADES QUE NOS VIGILAN
// -----------------------------

// Esta sección se ha quitado. No se renderiza ninguna información de entidades.

// -----------------------------
// 8) COPYRIGHT / TEXTO FINAL
// -----------------------------

// 8.1) Obtener texto de copyright (sentencia 38)
$copyrightDatos = obtenerFilas($mysqli1, $sentencia, 38);

// 8.2) Construir HTML final
$html_copyright = '';
foreach ($copyrightDatos as $filaCopy) {
    $textoCopy = $filaCopy['t1'];
    $html_copyright .= '
        <p4-footer class="terminos-condiciones-footer text-center m-auto font-roboto-regular tx-white">'
            . $textoCopy .
        '</p4-footer>';
}


// -----------------------------
// 9) SALIDA FINAL (HTML)
// -----------------------------
?>

<div class="container-fluid p-0 m-0">
    <div class="row w-100 p-0 m-0">
        <footer class="w-100 p-0 m-0 bg-dark-blue">
            <!-- PRIMER FOOTER: LAYOUT HORIZONTAL TIPO IMAGEN -->
            <div class="first-footer mt-5 col-11 m-auto d-flex flex-column tx-white justify-content-end pb-5">
                <div class="d-flex flex-column flex-lg-row justify-content-between align-items-start">
                    
                    <!-- SECCIÓN IZQUIERDA: LOGO + DESCRIPCIÓN + REDES -->
                    <div class="col-12 col-lg-3 d-flex flex-column mb-5 mb-lg-0">
                        <!-- Logo THRIVE -->
                        <?php if (!empty($logoFooter)): ?>
                            <div class="mb-3">
                                <img src="<?php echo rutaPorNivel($logoFooter['ruta']); ?>" 
                                     alt="THRIVE Global Academy" 
                                     style="height: 80px; width: auto;">
                            </div>
                        <?php endif; ?>
                        
                        <!-- Descripción THRIVE -->
                        <p-footer class="font-roboto-light tx-white mb-4" style="font-size: 14px; line-height: 1.6;">
                            Education without borders to shape the global leaders of tomorrow, from anywhere in the world.
                        </p-footer>
                        
                        <!-- Redes Sociales -->
                        <div class="d-flex gap-2">
                            <?php echo $hmtl_social_media; ?>
                        </div>
                    </div>

                    <!-- SECCIÓN CENTRAL: MENÚS DE NAVEGACIÓN -->
                    <div class="col-12 col-lg-4 d-flex justify-content-between">
                        <!-- EXPLORAR -->
                        <div class="col-auto">
                            <h6-footer class="font-roboto-black tx-pink mb-3" style="font-size: 14px;">EXPLORE</h6-footer>
                            <ul class="list-unstyled">
                                <li class="mb-2"><a href="#" class="font-roboto-light tx-white text-decoration-none" style="font-size: 13px;">Home</a></li>
                                <li class="mb-2"><a href="business/org/pages/modelo.php" class="font-roboto-light tx-white text-decoration-none" style="font-size: 13px;">Pedagogical Model</a></li>
                                <li class="mb-2"><a href="business/org/pages/calendario.php" class="font-roboto-light tx-white text-decoration-none" style="font-size: 13px;">Academic Offer</a></li>
                                <li class="mb-2"><a href="business/org/pages/entrevista.php" class="font-roboto-light tx-white text-decoration-none" style="font-size: 13px;">Admission Process</a></li>
                            </ul>
                        </div>
                        
                        <!-- ACCESS -->
                        <div class="col-auto">
                            <h6-footer class="font-roboto-black tx-pink mb-3" style="font-size: 14px;">ACCESS</h6-footer>
                            <ul class="list-unstyled">
                                <li class="mb-2"><a href="https://aulavirtual.unicab.org/login/" class="font-roboto-light tx-white text-decoration-none" style="font-size: 13px;">Virtual Classroom</a></li>
                                <li class="mb-2"><a href="https://unicab.org/login_registro.php" class="font-roboto-light tx-white text-decoration-none" style="font-size: 13px;">Academic Records</a></li>
                                <li class="mb-2"><a href="#" class="font-roboto-light tx-white text-decoration-none" style="font-size: 13px;">Institutional Email</a></li>
                                <li class="mb-2"><a href="#" class="font-roboto-light tx-white text-decoration-none" style="font-size: 13px;">Tuition Payments</a></li>
                            </ul>
                        </div>
                    </div>

                    <!-- SECCIÓN DERECHA: CONTACTO -->
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
                        
                        <!-- Ubicación -->
                        <p1-footer class="font-roboto-bolditalic tx-white mb-1" style="font-size: 12px; line-height: 1.3;">
                            <?php echo $direccion; ?>
                        </p1-footer>
                        <p-footer class="font-roboto-light tx-white" style="font-size: 12px; line-height: 1.3;">
                            <?php echo $ubicacion; ?>
                        </p-footer>
                    </div>
                </div>

                <!-- SECCIÓN DE ALIADOS -->
                <div class="d-flex flex-column">
                    <?php echo $hmtl_aliados; ?>
                </div>
            </div>

            <!-- SEGUNDO FOOTER: ENTIDADES + COPYRIGHT -->
            <div class="second-footer d-flex flex-column bg-dark-blue w-100 pb-4" id="entidadesVigilan" style="background-color: #222A75; box-shadow: 0 -4px 6px rgba(0,0,0,0.2);">
                <?php echo $html_copyright; ?>
            </div>
        </footer>
    </div>
</div>
