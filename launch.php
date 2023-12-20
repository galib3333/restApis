<?php
include('connection.php');

$launchData = [];

$sql = "SELECT * FROM launch";
$result = $db->query($sql);

while ($row = $result->fetch_assoc()) {
    $launchData[] = $row;
    
}
echo json_encode($launchData);
?>
