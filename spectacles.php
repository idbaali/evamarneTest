<?php
// Paramètres de connexion à la base de données
include_once './db_evamarne/connexion.php';
function getSpectacles() {
    global $conn;
    $getspectacles = $conn->prepare("SELECT s.id, s.spectacle_name, s.date, s.number_place_dispo, COUNT(b.id) AS nombre_billets_vendus, s.price, spectacle_timing, spectacle_start, spectacle_end, spectacle_description 
    FROM spectacles s
    LEFT JOIN billets b ON s.id = b.spectacle_id
    GROUP BY s.id");
    $getspectacles->execute();
    $getspectacles = $getspectacles->fetchAll(PDO::FETCH_ASSOC); 
    return $getspectacles;
}
?>
