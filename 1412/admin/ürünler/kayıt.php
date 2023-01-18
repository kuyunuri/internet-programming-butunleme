<?php

require'baglan.php';


?>

<!DOCTYPE html>
<html>
<head>
<title>KAYIT OL</title>
<link rel="stylesheet" type="text/css" href="style.css">

</head>

<body>
<div class="login">

<div class="login-screen">
 <div class="app-title">

  <h1>KAYIT OL</h1>
  
<form action="islem.php" method="post">

 </div>
   <div class="login-form">

     <div class="control-group">
<input type="text" name="username" class="login-field" placeholder="kullanıcı adı" id="login-name">
<label class="login-field-icon fui-user" for="login-name"> </label>


</div>


<div class="control-group">
<input type="password" name="password" class="login-field" placeholder="şifre" id="login-passw">

<label class="login-field-icon fui-user" for="login-pass"> </label>


</div>


<div class="control-group">
<input type="password" name="password_again" class="login-field" placeholder=" tekrar şifre" id="login-passw">

<label class="login-field-icon fui-user" for="login-pass"> </label>


</div>










<button href="kayıt.php" name="kayıt" class="btn btn-primary btn-large btn-block">kayıt ol</button>
</div>

</form>
<a href="index.php"><button href="index.php" class="btn btn-primary btn-large btn-block">giriş yap</button></a>

</div>
</div>
</body>
</html>
