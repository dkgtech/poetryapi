<?php

$servername = "localhost";
$username = "root";
$password = "";
$db = "poetry_db";

$connection = new mysqli($servername, $username, $password, $db);

if ($connection->connect_error) {
    die("Connection Failed" . $connection->connect_error);
}
$POETRY_ID = $_POST['id'];
$POETRY_DATA = $_POST['poetry_data'];
$POET_NAME = $_POST['poet_name'];

$query = "DELETE FROM poetry WHERE $POETRY_ID = id";

$result = $connection->query($query);

if ($result ==1) {
    $response = array("Status" => "1", "Message" => "Poetry Deleted Sucessfully");
} else {
    $response = array("Status" => "0", "Message" => "Poetry Deletion Failed");
}

echo json_encode($response);