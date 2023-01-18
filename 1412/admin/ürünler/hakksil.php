<?php

	require_once '../../db.php';
		
	$conn
		->prepare("DELETE FROM hakkimizda WHERE id = ?")
		->execute([$_GET['id']]);
		
	header('Location: hakkımızda.php');
?>