<?php
ob_start();
session_start();
require 'baglan1.php';
if(isset($_POST['kayıt']))
{
$username=$_POST['username'];	
$password=sha1($_POST['password']);		
$password_again=sha1(@$_POST['password_again']);			
if(!$username)
{
echo "Lütfen kullanıcı adınızı girin";	
}
elseif(!$password||!$password_again)
{
echo "Lütfen şifrenizi giriniz";
}
elseif($password!=$password_again)
{
	echo "Girdiğiniz şifreler birbiriyle uyuşmuyor";
}
else{
	$sorgu = $db->prepare('INSERT INTO users SET user_name=?,user_password=?');
	$ekle=$sorgu ->execute([
	$username,$password
	]);
	if($ekle){
	echo "Kayıt başarıyla gerçekleşti,yönlendiriliyorsunuz...";
	header('Refresh:2; index1.php');
	}
	else{
		echo "Bir hata oluştu lütfen tekrar deneyin";
	}
  }
}
if(isset($_POST['giriş']))
{
$username=$_POST['username'];
$password=sha1($_POST['password']);	
if(!$username)
{
echo" kullanıcı adınızı girin";
}
elseif(!$password)
{
	echo " şifrenizi girin";
}
else{
	$kullanici_sor = $db->prepare('SELECT * FROM users WHERE user_name=? && user_password=?');
	$kullanici_sor ->execute([
	$username,$password
	]);
	$say=$kullanici_sor->rowCount();
	if($say==1)
	{
	$_SESSION['username']=$username;
		echo "Başarıyla giriş yaptınız ,yönlendiriliyorsunuz...";
		header('Refresh:2; listele1.php');
	}
	else{
		echo "Bir hata oluştu tekrar deneyin.";
	}
}
}
?>