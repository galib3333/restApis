<?php
// include('connection.php');

// $menuData = [];

// $sql = "SELECT mi.*, c.category_name,CONCAT('http://localhost/restApis/',mi.imageSrc) as imageSrc
//         FROM menu_items mi
//         INNER JOIN categories c ON mi.category_id = c.id";
// $result = $db->query($sql);

// while ($row = $result->fetch_assoc()) {
//     $menuData[] = $row;
// }

// echo json_encode($menuData);

include('connection.php');

$menuData = [];

$sql = "SELECT mi.*, c.category_name, CONCAT('http://localhost/restApis/', mi.imageSrc) as imageSrc, co.code as coupon_code, co.discount_percentage
        FROM menu_items mi
        INNER JOIN categories c ON mi.category_id = c.id
        LEFT JOIN coupons co ON mi.coupon_id = co.id";
$result = $db->query($sql);

while ($row = $result->fetch_assoc()) {
    $menuData[] = $row;
}

echo json_encode($menuData);

?>
