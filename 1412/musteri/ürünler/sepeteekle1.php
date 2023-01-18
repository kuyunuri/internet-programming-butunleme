<?php

	require_once '../../db.php';
	
	if  (!isset($_SESSION['sepet'][$_GET['id']])) {
		$_SESSION['sepet'][$_GET['id']] = 1;
	} else {
		$_SESSION['sepet'][$_GET['id']]++;
	}
	
	header('Location: sepetim1.php');
?>