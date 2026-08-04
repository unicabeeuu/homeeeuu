<?php
//footerEEUU.php
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

$tel       = obtenerValorSimple($mysqli1, $sentencia, 13) ?: '';
$correo    = obtenerValorSimple($mysqli1, $sentencia, 14) ?: '';
$direccion = obtenerValorSimple($mysqli1, $sentencia, 15) ?: '';
$ubicacion = obtenerValorSimple($mysqli1, $sentencia, 16) ?: '';

$imagenesDatos = obtenerFilas($mysqli1, $sentencia, 34);
$logoFooter    = [];
foreach ($imagenesDatos as $fila) {
    if (strpos($fila['descripcion'], 'logo') !== false) {
        $logoFooter = $fila;
        break;
    }
}

$linksDatos = obtenerFilas($mysqli1, $sentencia, 37);
$linksMap   = [];
foreach ($linksDatos as $filaLink) {
    $linksMap[$filaLink['parametro']] = $filaLink['t1'];
}

$smImagenesDatos = obtenerFilas($mysqli1, $sentencia, 36);
$smFooter        = [];
foreach ($smImagenesDatos as $filaSM) {
    $titulo = strtolower(trim($filaSM['titulo']));
    $smFooter[] = [
        'ruta'  => $filaSM['ruta'],
        'title' => $titulo,
        'link'  => $linksMap[$titulo] ?? '#',
    ];
}

$hmtl_social_media = '<div class="my-2">';
foreach ($smFooter as $imagen) {
    $rutaImg     = rutaPorNivel($imagen['ruta']);
    $tituloClean = $imagen['title'];
    $linkClean   = $imagen['link'];
    $height      = $tituloClean == 'youtube' ? 20 : 25;

    $hmtl_social_media .= '
        <a class="mt-2 mb-3 mx-2 mx-lg-2 mx-xl-3" href="' . $linkClean . '" target="_blank">
            <img class="social-media-icon zoom-hover" style="height:' . $height . 'px" 
                src="' . $rutaImg . '" 
                alt="' . $tituloClean . '">
        </a>';
}
$hmtl_social_media .= '</div>';

$enlacesDatos   = obtenerFilas($mysqli1, $sentencia, 172);
$exploreEnlaces = array_slice($enlacesDatos, 0, 3);
$accessEnlaces  = array_slice($enlacesDatos, 3);

$html_explore = '';
foreach ($exploreEnlaces as $e) {
    $link    = htmlspecialchars($e[$levelSelect] ?? '#');
    $label   = htmlspecialchars($e['enlace']);
    $destino = !empty($e['destino']) ? $e['destino'] : ''; 

    $html_explore .= '
        <li class="mb-2">
            <a href="' . $link . '" target="' . $destino . '"
                class="font-roboto-light tx-white text-decoration-none" style="font-size: 13px;">
                ' . $label . '
            </a>
        </li>';
}

$html_access = '';
foreach ($accessEnlaces as $e) {
    $link    = htmlspecialchars($e[$levelSelect] ?? '#');
    $label   = htmlspecialchars($e['enlace']);
    $destino = !empty($e['destino']) ? $e['destino'] : '';

    $html_access .= '
        <li class="mb-2">
            <a href="' . $link . '" target="' . $destino . '"
                class="font-roboto-light tx-white text-decoration-none" style="font-size: 13px;">
                ' . $label . '
            </a>
        </li>';
}

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

<footer class="w-100 p-0 m-0 bg-dark-blue">
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-12">
                <div class="row first-footer mt-5 pb-5 tx-white">
                    <!-- BLOQUE LOGO + DESCRIPCIÓN + REDES -->
                    <div class="col-6 col-md-6 col-lg-3">
                        <div class="row">
                            <div class="col-12 d-flex flex-column align-items-center align-items-lg-start text-center text-lg-start">
                                <?php if (!empty($logoFooter)): ?>
                                    <div class="">
                                        <img src="<?php echo rutaPorNivel($logoFooter['ruta']); ?>"
                                            alt="THRIVE Global Academy"
                                            style="height: 120px; width: auto; max-width: 100%;">
                                    </div>
                                <?php endif; ?>
                                <p-footer class="font-roboto-light tx-white mb-2" style="font-size: 14px; line-height: 1.6;">
                                    Education without borders to shape the global leaders of tomorrow, from anywhere in the world.
                                </p-footer>
                                <div class="d-flex flex-wrap justify-content-center justify-content-lg-start gap-2">
                                    <?php echo $hmtl_social_media; ?>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--  BLOQUE CONTACTO -->
                    <div class="col-6 col-md-6 col-lg-3 ps-5">
                        <div class="row">
                            <div class="col-12 d-flex flex-column align-items-start text-start">
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
                    </div>
                    <!-- BLOQUE EXPLORE -->
                    <div class="col-6 col-md-6 col-lg-3 ps-5">
                        <div class="row">
                            <div class="col-12">
                                <h6-footer class="font-roboto-black tx-pink mb-3" style="font-size: 14px;">EXPLORE</h6-footer>
                                <ul class="list-unstyled">
                                    <?php echo $html_explore; ?>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- BLOQUE ACCESS -->
                    <div class="col-6 col-md-6 col-lg-3 ps-5">
                        <div class="row">
                            <div class="col-12">
                                <h6-footer class="font-roboto-black tx-pink mb-3" style="font-size: 14px;">ACCESS</h6-footer>
                                <ul class="list-unstyled">
                                    <?php echo $html_access; ?>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row m-0">
        <div class="col-12 second-footer d-flex flex-column pb-4"
            style="background-color: #222A75; box-shadow: 0 -4px 6px rgba(0,0,0,0.2);">
            <?php echo $html_copyright; ?>
        </div>
    </div>
</footer>