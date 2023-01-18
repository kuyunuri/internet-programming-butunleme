<?php
try {
  $conn = new PDO("mysql:host=127.0.0.1;dbname=dpu;charset=utf8", 'root', '');
} catch(PDOException $e) {
  echo "Connection failed: " . $e->getMessage();
  die();
}

/* Insert
$conn
	->prepare("INSERT INTO uyeler(isim) VALUES (?)")
	->execute(['İlayda']);
*/

/* Update
$conn
	->prepare("UPDATE uyeler SET isim = ? WHERE id = ?")
	->execute(['Mert', 2]);
*/

/* Delete
$conn
	->prepare("DELETE FROM uyeler WHERE id = ?")
	->execute([4]);
*/

/* Select
$uyeler = $conn->prepare("SELECT * FROM uyeler WHERE id = ?");
$uyeler->execute([0]);
print_r($uyeler->fetchAll()[0]);
*/
?>