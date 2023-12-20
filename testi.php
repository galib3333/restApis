<?php
include('connection.php');

$testimonialsData = [];

$sql = "SELECT * FROM testimonials";
$result = $db->query($sql);

while ($row = $result->fetch_assoc()) {
    $testimonialsData[] = $row;
    
}
echo json_encode($testimonialsData);
?>
