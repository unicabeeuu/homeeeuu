<?php

$host = 'localhost';
$dbname = 'u512774881_admin_unieeuu';
$user = 'u512774881_s5p3r5s5_Un325';
$pass = 's5p3r_5Ni2255*';

try {
    $dsn = "mysql:host=$host;dbname=$dbname;charset=utf8mb4";
    $options = [
        PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
        PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
        PDO::ATTR_EMULATE_PREPARES   => false,
    ];

    $pdo = new PDO($dsn, $user, $pass, $options);
    echo "Conexión exitosa a la base de datos.";

} catch (PDOException $e) {
    die("Error de conexión: " . $e->getMessage());
}

?>