<?php
include 'config.php';

$sql = "SELECT * FROM blog";
$result = $conn->query($sql);

$articles = array();
while($row = $result->fetch_assoc()) {
    $articles[] = $row;
}

return $articles;
$conn->close();
?>
