<?php
include('connection.php');

$dinnerData = [];

$sql = "SELECT * FROM dinner";
$result = $db->query($sql);

while ($row = $result->fetch_assoc()) {
    $dinnerData[] = $row;
}
echo json_encode($dinnerData);
?>
