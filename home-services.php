<?php
include('connection.php');

$serviceData = [];

$sql = "SELECT * FROM services limit 4";
$result = $db->query($sql);

while ($row = $result->fetch_assoc()) {
    $serviceData[] = $row;
    
}
echo json_encode($serviceData);
?>
