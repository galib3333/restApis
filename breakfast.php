<?php
include('connection.php');

$breakfastData = [];

$sql = "SELECT * FROM breakfast";
$result = $db->query($sql);

while ($row = $result->fetch_assoc()) {
    $breakfastData[] = $row;
    
}
echo json_encode($breakfastData);
?>
