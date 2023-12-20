<?php
// include '../connection.php';
// $data = [];

// $sql = 'SELECT menu_items.*, categories.category_name as cname, CONCAT("http://localhost/restApis/",menu_items.imageSrc) as image FROM `menu_items`
// join categories on categories.id=menu_items.category_id order by menu_items.id DESC';
// $result=$db->query($sql);
// if($result->num_rows > 0){
// 	while($row = $result->fetch_object()){
// 		$data[]= $row;
// 	}
// 	echo json_encode(array("status" => 1,"data"=>$data));
// }else{
// 	echo json_encode(array("status" => 0,"data"=>""));
// }

include '../connection.php';
$data = [];

$sql = 'SELECT menu_items.*, 
        categories.category_name as cname, 
        CONCAT("http://localhost/restApis/", menu_items.imageSrc) as image, 
        coupons.discount_percentage,
        coupons.code
				
FROM `menu_items`
JOIN categories ON categories.id = menu_items.category_id
LEFT JOIN coupons ON coupons.id = menu_items.coupon_id  
ORDER BY menu_items.id DESC';

$result = $db->query($sql);
if ($result->num_rows > 0) {
	while ($row = $result->fetch_object()) {
		$data[] = $row;
	}
	echo json_encode(array("status" => 1, "data" => $data));
} else {
	echo json_encode(array("status" => 0, "data" => ""));
}
