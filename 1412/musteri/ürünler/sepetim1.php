<?php
	require_once '../../db.php';
	require_once '../header1.php';
 ?>

 
 
<h1 align="center">SEPETİM</h1>

<table border="1" width="600" align="center">
	<tr>
		<td>Ürün Kodu</td>
		<td>Kategori</td>
		<td>İsim</td>
		<td>Açıklama</td>
		<td>Fiyat</td>
		<td>Adet</td>
		<td>İşlem</td>
	</tr>
	
	<?php


	$ids = array_keys($_SESSION['sepet']);

	$sepetim = $conn->prepare("
	SELECT ürünler.*, kategoriler.isim AS kategori FROM ürünler
		LEFT JOIN kategoriler
			ON ürünler.kategori_id = kategoriler.id
			WHERE ürünler.id IN (".implode(',', $ids).")
	");


	$sepetim->execute();

		foreach($sepetim->fetchAll() as $sepet) 
		{
			echo '
			<tr>
				<td>'.$sepet['id'].'</td>
				<td>'.$sepet['kategori'].'</td>
				<td>'.$sepet['baslik'].'</td>
				<td>'.$sepet['icerik'].'</td>
				<td>'.$sepet['fiyat'].'</td>
				<td>'.$_SESSION["sepet"][$sepet['id']].'</td>
				
				<td>
					<a href="satinal.php?id='.$sepet['id'].'">Satın Al</a>
					<a href="sepetcikar1.php?id='.$sepet['id'].'">Sepetten Çıkar</a>
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