<?php
require "core/init.php";
if(!$_SESSION['user']){
  header('Location: login.php');
}

if(isset($_GET['id'])){
  if(hapus_kategori($_GET['id'])) {
    header('Location: category.php');
  }
  else echo 'gagal hapus data';
}
?>
