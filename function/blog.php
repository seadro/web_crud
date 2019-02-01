<?php

function tampilkan(){
  global $start, $perhalaman;
  $query = "SELECT * FROM berita ORDER BY waktu DESC LIMIT $start, $perhalaman";
  return result($query);
}

function tampilkan_id($id){
  $query = "SELECT * from berita WHERE id=$id";
  return result($query);
}

function pencarian($cari){
  $query = "SELECT * FROM berita WHERE judul OR isi LIKE '%$cari%' ORDER BY waktu DESC";
  return result($query);
}

function result($query){
  global $link;
  if($result = mysqli_query($link,$query) or die ('gagal tampil data')){
    return $result;
  }
}

function tambah_data($judul, $konten, $tag, $sumber, $target, $nama_gambar, $penulis){
    $query = "INSERT INTO berita (judul, isi, tag, gambar, penulis) VALUES ('$judul','$konten','$tag','$nama_gambar','$penulis')";
    return run($query);
}

function update_data($judul, $konten, $tag, $sumber, $target, $nama_gambar, $id){
  $query = "UPDATE berita SET judul='$judul', isi='$konten', tag='$tag', gambar='$nama_gambar' WHERE id='$id'";
  return run($query);
}

function update_data_tanpa_gambar($judul, $konten, $tag, $sumber, $target, $id){
  $query = "UPDATE berita SET judul='$judul', isi='$konten', tag='$tag' WHERE id='$id'";
  return run($query);
}

function hapus_data($id){
  $query = "DELETE FROM berita WHERE id='$id'";
  return run($query);
}

function run($query){
  global $link;

  if(mysqli_query($link, $query)) return true;
  else return false;
}

function potong_teks($string){
  $string = substr($string, 0, 400);
  return $string . "...";
}

?>
