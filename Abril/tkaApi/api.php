<?php
header("access-control-allow-origin:*");
require_once 'vendor/autoload.php';

$app = new \Slim\Slim();

$db = new mysqli('127.0.0.1', 'root', '', 'takeaway');
mysqli_set_charset($db,"utf8");

$app->get("/getPlatos", function() use($db, $app) {
	$query = $db->query("SELECT * FROM platos");
	$platos = array();
	while ($fila = $query->fetch_assoc()) {
		$platos[] = $fila;
	}
	echo json_encode([
		"status" 	=> "success",
		"data"		=> $platos
		]);	
	
});



$app->run();

