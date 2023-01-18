<?php
	require_once '../../db.php';
	require_once '../header1.php';
	
	$ürünler = $conn->prepare("
	SELECT ürünler.*, kategoriler.isim AS kategori FROM ürünler
		LEFT JOIN kategoriler
			ON ürünler.kategori_id = kategoriler.id
	
	");
	$ürünler->execute();
?>

<br />
<h1 align="center">ÜRÜNLERİMİZ</h1>

<table  width="600" align="center">
	<tr>
		<td>Ürün Kodu</td>
		<td>Kategori</td>
		<td>İsim</td>
		<td>Açıklama</td>
		<td>Fiyat</td>
		<td>Resim</td>
		<td>İşlem</td>
	</tr>
	</br>
	<?php
		foreach($ürünler->fetchAll() as $ürün) {
			echo '
			<tr>
				<td>'.$ürün['id'].'</td>
				<td>'.$ürün['kategori'].'</td>
				<td>'.$ürün['baslik'].'</td>
				<td>'.$ürün['icerik'].'</td>
				<td>'.$ürün['fiyat'].'</td>
				<td><img src="../../images/urunler/'.$ürün['resim'].'" width="100" height="100" /></td>
				<td>
					
					<a href="sepeteekle1.php?id=' .$ürün['id'].'">Sepete Ekle</a> 
					
				</td>
			</tr>
			';
		}
	?>
	
</table>
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
<?php
	require_once '../footer1.php';
?>