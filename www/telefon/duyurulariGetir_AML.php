<?php

  $bilgi["id"]= "1";
  $bilgi["baslik"]= "baslik iste";
  $bilgi["gonderen"]= "AML-12";
$dizi[]=$bilgi;
  $bilgi["id"]= "2";
  $bilgi["baslik"]= "baslik iste2";
  $bilgi["gonderen"]= "AML-12-2";
$dizi[]=$bilgi;
  $bilgi["id"]= "3";
  $bilgi["baslik"]= "baslik iste3";
  $bilgi["gonderen"]= "AML-12-3";
$dizi[]=$bilgi;
  $bilgi=array("id"=>"4","baslik"=>"baslik istexxx4","gonderen"=>"AML-12-4xxx");
$dizi[]=$bilgi;
  echo json_encode($dizi);
 ?>
