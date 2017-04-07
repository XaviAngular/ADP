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

$app->get("/getPlato/:id", function($id) use($db, $app) {
	$query = $db->query("SELECT * FROM platos WHERE id=$id");
	$plato = $query->fetch_assoc();
	echo json_encode([
		"status" 	=> "success",
		"data"		=> $plato
		]);	
	
});

$app->post("/editPlato/:id", function($id) use($db, $app) {
	$json = $app->request->post("json");
	$data = json_decode($json, true);

	$query = "UPDATE platos SET "
			. "nombre = '{$data["nombre"]}', "
			. "activado = '{$data["activado"]}', "
			. "descripcion = '{$data["descripcion"]}', "
			. "precio = '{$data["precio"]}', "
			. "id_categoria = '{$data["id_categoria"]}', "
			. "foto = '{$data["foto"]}' "
			. " WHERE id={$id}";
	$update = $db->query($query);

	if ($update) {
		$result = array("status" => "success", "message" => "El plato se ha actualizado correctamente!!!");
	} else {
		$result = array("status" => "error", "message" => "El plato NO SE HA actualizado!!!");
	}

	echo json_encode($result);
});

$app->get("/getCats", function() use($db, $app) {
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

$app->post("/addContact",function() use($db,$app){
	$json = $app->request->post("json");
	$data = json_decode($json, true);
	$query= "INSERT INTO contactform VALUES (null,"
		."'{$data["nombreApellidos"]}',"
		."'{$data["email"]}',"
		."'{$data["mensaje"]}'"
		.",null)";
	$update = $db->query($query);

	if ($update) {
		$result = array("status" => "success", "message" => "El contacto se ha registrado correctamente!!!");
	} else {
		$result = array("status" => "error", "message" => $query);
	}

	echo json_encode($result);

});

$app->run();

