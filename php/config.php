<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "tik2032-project";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
?>
