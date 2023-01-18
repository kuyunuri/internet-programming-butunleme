<?php

	require_once '../../db.php';
		
	unset($_SESSION['sepet'][$_GET['id']]);

	header('Location: sepetim.php');
?>