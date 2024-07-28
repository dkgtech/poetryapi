<?php

$servername = "localhost";
$username = "root";
$password = "";
$db = "poetry_db";

$connection = new mysqli($servername, $username, $password, $db);

if ($connection->connect_error) {
    die("Connection Failed" . $connection->connect_error);
}

$POETRY_DATA = $_POST['poetry_data'];
$POET_NAME = $_POST['poet_name'];

$query = "INSERT INTO poetry(poetry_data,poet_name)VALUES('$POETRY_DATA','$POET_NAME')";

$result = $connection->query($query);

if ($result == 1) {
    $response = array("Status" => "1", "Message" => "Poetry Inserted Sucessfully");
} else {
    $response = array("Status" => "0", "Message" => "Poetry Insertion Failed");
}

echo json_encode($response);
