<?php

$servername = "localhost";
$username = "root";
$password = "";
$db = "poetry_db";

$connection = new mysqli($servername, $username, $password, $db);

if ($connection->connect_error) {
    die("Connection Failed" . $connection->connect_error);
}

$USER_EMAIL = $_POST['user_email'];
$USER_PASSWORD = $_POST['user_password'];
$USER_CONFIRM_PASSWORD = $_POST['user_confirm_password'];


$query = "INSERT INTO users(user_email,user_password,user_confirm_password)VALUES('$USER_EMAIL','$USER_PASSWORD','$USER_CONFIRM_PASSWORD')";

$result = $connection->query($query);

if ($result == 1) {
    $response = array("Status" => "1", "Message" => "User Created Sucessfully");
} else {
    $response = array("Status" => "0", "Message" => "User Creation Failed");
}

echo json_encode($response);
