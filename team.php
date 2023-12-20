<?php
include('connection.php');

$teamData = [];

$sql = "SELECT * FROM team";
$result = $db->query($sql);

while ($row = $result->fetch_assoc()) {
    $teamData[] = $row;
    
}
echo json_encode($teamData);
?>
