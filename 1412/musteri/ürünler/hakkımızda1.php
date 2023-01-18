<?php
	require_once '../../db.php';
	require_once '../header1.php';
	
	
$hakkimizda = $conn->prepare("
	SELECT hakkimizda.*, kategorr.isim AS kate FROM hakkimizda
		LEFT JOIN kategorr
			ON hakkimizda.kate_id = kategorr.id
	
	");
	$hakkimizda->execute();
?>



	
	
	
	
	
	
	
	
	
	
<h1 align="center">HAKKIMIZDA</h1>
	
	
	<table  width="600" align="center">

	</br>
	
	
	<?php
		foreach($hakkimizda->fetchAll() as $hakk) {
			echo '
                <tr>
			<td>'.$hakk['kate'].'</td>
				</tr>
				
				<tr><td><br /></td></tr>

				<tr>
				<td>'.$hakk['baslik'].'</td>
				</tr>

				<tr><td><br /></td></tr>
				
				<tr>
				<td>'.$hakk['icerik'].'</td>
				

					
					<tr><td><br /></td></tr>
					<tr><td><br /></td></tr>
					<tr><td><br /></td></tr>
			</tr>
			<br />
			';
		}
	?>
	
</table>
	
	
	
	
	
	<?php
	require_once '../footer1.php';
?>