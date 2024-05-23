<?php
include 'config.php';

$sql = "SELECT * FROM gallery";
$result = $conn->query($sql);

$images = array();
while($row = $result->fetch_assoc()) {
    $images[] = $row;
}

return $images;
$conn->close();
?>
