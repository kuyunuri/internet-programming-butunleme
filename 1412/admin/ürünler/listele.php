<?php
	require_once '../../db.php';
	require_once '../header.php';
	
	$ürünler = $conn->prepare("
	SELECT ürünler.*, kategoriler.isim AS kategori FROM ürünler
		LEFT JOIN kategoriler
			ON ürünler.kategori_id = kategoriler.id
	
	");
	$ürünler->execute();
?>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="/1412/admin/ürünler/ekle.php">ÜRÜN EKLE</a>
<br />
<br />
<h1 align="center">ÜRÜNLERİNİZ</h1>

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
					<a href="duzenle.php?id='.$ürün['id'].'">Düzenle</a> | 
					<a href="sil.php?id=' .$ürün['id'].'">Sil</a> 
					 
					
				</td>
			</tr>
			';
		}
	?>
	
</table>
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
<?php
	require_once '../footer.php';
?>