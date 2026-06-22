<?php
/**
 * footerEEUU.php
 * 
 * Lógica de redes sociales tomada de footer.php (sentencias 36 y 37)
 * SIN sección de aliados.
 * Asume que $nivel y $mysqli1 ya están disponibles.
 */

// -----------------------------
// 1) DEFINICIONES GENERALES
// -----------------------------

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
// -----------------------------

$redesPermitidas = ['facebook', 'instagram', 'youtube', 'tiktok'];

// 4.1) Links (sentencia 37)
$linksDatos = obtenerFilas($mysqli1, $sentencia, 37);
$linksMap   = [];
foreach ($linksDatos as $filaLink) {
    $linksMap[$filaLink['parametro']] = $filaLink['t1'];
}

// 4.2) Imágenes (sentencia 36)
$smImagenesDatos = obtenerFilas($mysqli1, $sentencia, 36);

// 4.3) Combinar y filtrar
$smFooter = [];
foreach ($smImagenesDatos as $filaSM) {
    $titulo = strtolower(trim($filaSM['titulo']));
    if (!in_array($titulo, $redesPermitidas)) {
        continue;
    }
    $smFooter[] = [
        'ruta'  => $filaSM['ruta'],
        'title' => $titulo,
        'link'  => $linksMap[$titulo] ?? '#',
    ];
}

// 4.4) HTML redes sociales
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
// 5) ENLACES DE NAVEGACIÓN (sentencia 172)
// -----------------------------

$enlacesDatos = obtenerFilas($mysqli1, $sentencia, 172);

$enlacesMap = [];
foreach ($enlacesDatos as $filaEnlace) {
    $enlacesMap[(int)$filaEnlace['id']] = $filaEnlace;
}

// 5.1) Helper: resuelve cualquier tipo de link correctamente
//   - Links externos (http)     → sin modificar
//   - Rutas absolutas (/)       → sin modificar
//   - Anchors (#)               → index.php del nivel + anchor
//   - Rutas con ../             → limpiar ../ y resolver desde raíz
//   - Rutas relativas simples   → resolver desde raíz del proyecto
function resolverLink($link, $repoPrefix) {
    // Link externo → sin modificar
    if (strpos($link, 'http') === 0) {
        return $link;
    }
    // Ruta absoluta desde el servidor → sin modificar
    if (strpos($link, '/') === 0) {
        return $link;
    }
    // Anchor → apuntar al index del nivel correcto
    if (strpos($link, '#') === 0) {
        return $repoPrefix . 'index.php' . $link;
    }
    // Ruta relativa con ../ → limpiar los ../ primero
    if (strpos($link, '../') === 0) {
        $link = preg_replace('/^(\.\.\/)+/', '', $link);
    }
    // Ruta relativa simple (con o sin ../ previo) →
    // resolver siempre desde la raíz del proyecto
    $scriptDir = dirname($_SERVER['SCRIPT_NAME']);
    $niveles   = substr_count($repoPrefix, '../');
    $raiz      = $scriptDir;
    for ($i = 0; $i < $niveles; $i++) {
        $raiz = dirname($raiz);
    }
    $raiz = rtrim($raiz, '/');
    return $raiz . '/' . $link;
}

// 5.2) HTML de EXPLORE — todos abren en nueva pestaña
$html_explore = '';

// Home
$html_explore .= '
    <li class="mb-2">
        <a href="' . $repoPrefix . 'index.php" target="_blank"
           class="font-roboto-light tx-white text-decoration-none" style="font-size: 13px;">
            Home
        </a>
    </li>';

// Pedagogical Model
$html_explore .= '
    <li class="mb-2">
        <a href="' . $repoPrefix . 'business/org/pages/modelo.php" target="_blank"
           class="font-roboto-light tx-white text-decoration-none" style="font-size: 13px;">
            Pedagogical Model
        </a>
    </li>';

// Academic Offer → id 22
if (isset($enlacesMap[22])) {
    $e           = $enlacesMap[22];
    $linkOfertas = resolverLink($e['link'], $repoPrefix);

    $html_explore .= '
    <li class="mb-2">
        <a href="' . htmlspecialchars($linkOfertas) . '" target="_blank"
           class="font-roboto-light tx-white text-decoration-none" style="font-size: 13px;">
            ' . htmlspecialchars($e['identificacion']) . '
        </a>
    </li>';
}

// 5.3) HTML de ACCESS → ids 23, 24, 25, 26 — todos abren en nueva pestaña
$accessIds   = [23, 24, 25, 26];
$html_access = '';

foreach ($accessIds as $accId) {
    if (!isset($enlacesMap[$accId])) continue;

    $e     = $enlacesMap[$accId];
    $link  = htmlspecialchars(resolverLink($e['link'], $repoPrefix));
    $label = htmlspecialchars($e['identificacion']);

    $html_access .= '
    <li class="mb-2">
        <a href="' . $link . '" target="_blank"
           class="font-roboto-light tx-white text-decoration-none" style="font-size: 13px;">
            ' . $label . '
        </a>
    </li>';
}

// -----------------------------
// 6) COPYRIGHT (sentencia 38)
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

                        <div class="d-flex gap-2">
                            <?php echo $hmtl_social_media; ?>
                        </div>
                    </div>

                    <!-- COLUMNA CENTRAL: EXPLORE + ACCESS -->
                    <div class="col-12 col-lg-4 d-flex justify-content-between">

                        <!-- EXPLORE -->
                        <div class="col-auto">
                            <h6-footer class="font-roboto-black tx-pink mb-3" style="font-size: 14px;">EXPLORE</h6-footer>
                            <ul class="list-unstyled">
                                <?php echo $html_explore; ?>
                            </ul>
                        </div>

                        <!-- ACCESS -->
                        <div class="col-auto">
                            <h6-footer class="font-roboto-black tx-pink mb-3" style="font-size: 14px;">ACCESS</h6-footer>
                            <ul class="list-unstyled">
                                <?php echo $html_access; ?>
                            </ul>
                        </div>
                    </div>

                    <!-- COLUMNA DERECHA: CONTACTO -->
                    <div class="col-12 col-lg-3 d-flex flex-column align-items-start text-start">
                        <p-footer class="font-roboto-thinitalic tx-white mb-1" style="font-size: 12px; line-height: 1.2;">
                            Call us or write to us
                        </p-footer>
                        <h5-footer class="font-roboto-bolditalic tx-white mb-1" 
                                   style="font-size: 28px; line-height: 1.1; font-weight: bold;">
                            <?php echo $tel; ?>
                        </h5-footer>
                        <h5-footer class="font-roboto-bolditalic tx-white mb-3" 
                                   style="font-size: 16px; line-height: 1.2; font-weight: bold;">
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
            <div class="second-footer d-flex flex-column bg-dark-blue w-100 pb-4" 
                 style="background-color: #222A75; box-shadow: 0 -4px 6px rgba(0,0,0,0.2);">
                <?php echo $html_copyright; ?>
            </div>

        </footer>
    </div>
</div>