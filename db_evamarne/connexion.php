<?php
// Paramètres de connexion à la base de données
$host = "localhost";
$username = "root";
$password = "";
$dbname = "evamarne";

// Créer une connexion à la base de données avec PDO (PHP Data Objects)
try {
    $conn = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
    // Définir le mode d'erreur de PDO sur Exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    // echo "Connected successfully";
} catch(PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
}

?>

