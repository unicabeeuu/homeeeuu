<?php
    include('../../../clases/ImageAttributeBuilder.php');
?>
<!DOCTYPE html>
<html lang="en">
<?php 
    $nivel = "tres";
    $page_title = "Publicaciones Académicas";
    include('../../../components/headMain.php');
?>
<body>
    <?php 
        $nivel = "tres";
        include('../../../components/navBar.php');
        include('../../../components/botonFlotante.php');

        include('../components/publicacionesAcademicas/publicacionesAcademicas.php');
        //include('../../../components/footer.php');
        include('../../../components/footerEEUU.php');
        include('../../../components/bookstoresMain.php');
    ?>  
<body>
    
</html>