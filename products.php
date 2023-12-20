<?php
include 'connection.php';
$data = [];

$sql = 'SELECT menu_items.*, categories.category_name as cname, CONCAT("http://localhost/restApis/",menu_items.imageSrc) as image FROM `menu_items`
join categories on categories.id=menu_items.category_id';
$result=$db->query($sql);
while($row = $result->fetch_object()){
	$data[]= $row;
}
echo json_encode($data);