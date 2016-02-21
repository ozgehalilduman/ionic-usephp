<?php
header('Content-Type: application/x-www-form-urlencoded');
header('Access-Control-Allow-Methods: GET, POST');
header('Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept');
header('Access-Control-Allow-Origin: *');

include_once('vt_baglanti.php');

$gelen=json_decode(file_get_contents('php://input'));
echo json_encode($gelen);
  $sqlkomut="DELETE FROM yoklama WHERE (ogretmen=:ogretmen AND ders=:ders AND saat=:saat AND ogrenci=:ogrenci AND tarih=:tarih)";
  $islem=$b->prepare($sqlkomut);
  $islem->execute(array(
    ':ogretmen'=>$gelen->ogrt,
    ':ders'=>$gelen->ders,
    ':saat'=>$gelen->saat,
    ':ogrenci'=>$gelen->ogr->okulno,
    ':tarih'=>$gelen->tarih
  ));
  echo("İŞLEM TAMAM");
?>
