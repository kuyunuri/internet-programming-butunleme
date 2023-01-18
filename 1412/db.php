<?php
try {
  $conn = new PDO("mysql:host=127.0.0.1;dbname=dpu;charset=utf8", 'root', '');
} catch(PDOException $e) {
  echo "Connection failed: " . $e->getMessage();
  die();
}

session_start();

if (!isset($_SESSION['sepet'])) {
  $_SESSION['sepet'] = [];
}
?>