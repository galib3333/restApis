<?php
include 'connection.php';
$data = [];
$code=$_GET['code'];
$sql = "SELECT * FROM coupons where code='$code'";
$result=$db->query($sql);
while($row = $result->fetch_assoc()){
	$data= $row;
}
echo json_encode($data);
 ?>
