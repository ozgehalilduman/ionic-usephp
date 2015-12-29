<?php
header('Content-Type: application/x-www-form-urlencoded');
header('Access-Control-Allow-Methods: GET, POST');
header('Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept');
header('Access-Control-Allow-Origin: *');

include_once('vt_baglanti.php');

$gelen=json_decode(file_get_contents('php://input'));

  $sqlkomut="SELECT * FROM users WHERE uname=:username AND upsw=:password";
  $islem=$b->prepare($sqlkomut);
  $islem->execute(array(
    ':username'=>$gelen->loginData->username,
    ':password'=>$gelen->loginData->password
  ));
  $kayitlar=$islem->fetchAll(PDO::FETCH_ASSOC);
  if($kayitlar)
  {
    echo"TAMAM";
  }
    else
  {
    echo"NATAMAM";
  }
?>
