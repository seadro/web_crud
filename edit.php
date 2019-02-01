<?php
require "core/init.php";
if(!$_SESSION['user']){
  header('Location: login.php');
}
$combo_kategori = tampilkan_kategori();

$error = '';
$id = $_GET['id'];

if(isset($_GET['id'])){
  $artikel_id = tampilkan_id($id);
  while($row = mysqli_fetch_assoc($artikel_id)){
    $judul_awal = $row['judul'];
    $konten_awal = $row['isi'];
    $tag_awal = $row['tag'];
    $gambar_awal = $row['gambar'];
  }
}

if(isset($_POST['submit'])){
  $judul = $_POST['judul'];
  $konten = $_POST['konten'];
  $tag = $_POST['tag'];

  $sumber = $_FILES['gambar']['tmp_name'];
  $target = 'img/';
  $nama_gambar = $_FILES['gambar']['name'];
  $image_type = $_FILES['gambar']['type'];
  $judul=trim($judul);
  $konten = trim($konten);
  if(!empty($judul) && !empty($konten)){
    if ($image_type == '' || $image_type == 'image/jpg' || $image_type == 'image/jpeg' || $image_type == 'image/gif' || $image_type == 'image/png') {
      if($image_type == ''){
        if(update_data_tanpa_gambar($judul, $konten, $tag, $sumber, $target, $id)){
          header('Location: index.php');
        }else {
          $error = 'ada masalah saat mengedit data';
        }
      }else {
        $pindah = move_uploaded_file($sumber, $target.$nama_gambar);
        if($pindah){
          if(update_data($judul, $konten, $tag, $sumber, $target, $nama_gambar, $id)){
            header('Location: index.php');
          }else {
            $error = 'ada masalah saat mengedit data';
          }
        }else {
          $error = 'Gagal Upload gambar';
        }
      }
    }else {
      $error = 'Invalid file type';
    }
  }else{
    $error = 'judul dan konten harus diisi';
  }
}

require "template/header.php";
require "template/sidebar.php";
?>

<div id="content">
  <h2>Edit Artikel</h2><br>
  <form action="" method="post" enctype="multipart/form-data">
    <div class="form_settings">

    <p><span>Judul Artikel</span>
    <input type="text" name="judul" value="<?=$judul_awal;?>"></p>

    <p><span>Konten</span>
    <textarea name="konten" rows="8" cols="40"><?=$konten_awal;?></textarea></p>

    <p><span>Kategori</span>
      <select name="tag">
        <?php while($row = mysqli_fetch_assoc($combo_kategori)):?>
          <option onfocus="<?= $tag_awal;?>"><?= $row['nama_kategori']; ?></option>
        <?php endwhile; ?>
      </select>
    </p><br>

    <p>
      <span>Gambar</span>
      <input type="file" name="gambar" value="<?= $gambar_awal; ?>"/>
    </p>
    <?php if($gambar_awal != ''): ?>
      <p class="ket_gambar">
        *kosongkan jika gambar tidak ingin diganti
      </p>
      <img id="gambar_edit" src="img/<?= $gambar_awal ?>" />
    <?php endif; ?>

    <div id="error"><?= $error ?></div>

    <p style="padding-top: 10px"><span>&nbsp;</span><input class="submit" type="submit" name="submit" value="Edit Artikel" /></p>
    </div>
  </form>
</div>
</div>

<?php
require "template/footer.php";
?>
