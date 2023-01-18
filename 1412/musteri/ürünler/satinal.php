<?php

	require_once '../../db.php';
	
	if  (!isset($_SESSION['satin'][$_GET['id']])) {
		$_SESSION['satin'][$_GET['id']] = 1;
	} else {
		$_SESSION['satin'][$_GET['id']]++;
	}
	
	header('Location: satin.php');
?>