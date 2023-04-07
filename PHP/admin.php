<?php


$user = "example_user";
$password = "password";
$database = "web-ban-hang";
$table = "admin";

$db = new PDO("mysql:host=localhost;dbname=$database", $user, $password);


if(!$db) {
	echo "Error: Unable to open database\n <br>";
	} else {
	echo "Open database successfully\n <br>";
	}
?>
