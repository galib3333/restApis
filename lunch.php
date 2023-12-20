<?php
include('connection.php');

$lunchData = [];

$sql = "SELECT * FROM lunch";
$result = $db->query($sql);

while ($row = $result->fetch_assoc()) {
    $lunchData[] = $row;
    
}
echo json_encode($lunchData);
?>
