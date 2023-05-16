<?php
// Paramètres de connexion à la base de données
include_once './db_evamarne/connexion.php';
function getSpectacles() {
    global $conn;
    $getspectacles = $conn->prepare('SELECT * FROM spectacles S, billets B WHERE S.id = B.spectacle_id ');
    $getspectacles->execute();
    $getspectacles = $getspectacles->fetchAll(PDO::FETCH_ASSOC); 
    return $getspectacles;
}

?>
