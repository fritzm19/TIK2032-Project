<?php
include 'config.php';

$sql = "SELECT * FROM blog ORDER BY date_created DESC";
$result = $conn->query($sql);

$articles = array();
while($row = $result->fetch_assoc()) {
    $articles[] = $row;
}

echo json_encode($articles);
$conn->close();
?>
