<?php
header('Content-Type: application/x-www-form-urlencoded');
header('Access-Control-Allow-Methods: GET, POST');
header('Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept');
header('Access-Control-Allow-Origin: *');

include_once('vt_baglanti.php');

$gelen=json_decode(file_get_contents('php://input'));

  $sqlkomut="SELECT * FROM ogrenciler WHERE sinif=:sinif";
  $islem=$b->prepare($sqlkomut);
  $islem->execute(array(
    ':sinif'=>$gelen->sinif
  ));
  $kayitlar=$islem->fetchAll(PDO::FETCH_ASSOC);
  echo json_encode($kayitlar);
?>
