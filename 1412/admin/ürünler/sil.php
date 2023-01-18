<?php

	require_once '../../db.php';
		
	$conn
		->prepare("DELETE FROM ürünler WHERE id = ?")
		->execute([$_GET['id']]);
		
	header('Location: listele.php');
?>