<?php
    include('./clases/ImageAttributeBuilder.php');
    include('./clases/ButtonStylesBannerBuilder.php');
    include('./clases/FlexTitleLoader.php');
    include('./clases/GenerateQuery.php');
?>
<!DOCTYPE html>
<html lang="en">
<?php 
    $nivel = "raiz";
    $page_title = "Home THRIVE";
    include('components/headMain.php');
?>
<body>
    <?php 
        $nivel = "raiz";
        include('components/navbar.php');
        include('components/botonFlotante.php');
        include('components/bannerCarrousel.php');
        include('components/academicOffer.php');
        include('components/descubreHabilidades.php');
        include('components/inscripciones.php');
        include('components/indicators.php');
        include('components/meetcampus.php');
        include('components/linksZone.php');
        include('components/conectadosBlog.php');
        include('components/footer.php');
        include('components/bookstoresMain.php');
    ?>  
<body>
    
</html>