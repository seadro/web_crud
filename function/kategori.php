<?php

function tampilkan_kategori(){
  $query = "SELECT * from kategori";
  return result($query);
}

function tampilkan_nama_artikel($id){
  $query = "SELECT * from kategori WHERE no=$id";
  return result($query);
}

function tampilkan_cat($cat){
  $query = "SELECT * from berita WHERE tag='$cat' ORDER BY waktu DESC";
  return result($query);
}

function tambah_kategori($nama_kategori){
  $query = "INSERT INTO kategori (nama_kategori) VALUES ('$nama_kategori')";
  return run($query);
}

function update_kategori($id, $nama_kategori){
  $query = "UPDATE kategori SET nama_kategori='$nama_kategori' WHERE no='$id'";
  return run($query);
}

function hapus_kategori($id){
  $query = "DELETE FROM kategori WHERE no='$id'";
  return run($query);
}

?>
