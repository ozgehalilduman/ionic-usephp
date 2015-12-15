<?php
  $servername="localhost";
  $dbname="ders";
  $host="mysql:host=$servername;dbname=$dbname";
  $user="root";
  $pass="";

  $b=new PDO($host,$user,$pass);
  $b->exec("SET NAMES utf8");

?>
