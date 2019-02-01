<?php
require "core/init.php";
if(!$_SESSION['user']){
  header('Location: login.php');
}
$kategori = tampilkan_kategori();
$combo_kategori = tampilkan_kategori();
$error = '';

if(isset($_POST['submit'])){
  $judul = $_POST['judul'];
  $konten = $_POST['konten'];
  $tag = $_POST['tag'];
  $penulis = $_SESSION['user'];

  $sumber = $_FILES['gambar']['tmp_name'];
  $target = 'img/';
  $nama_gambar = $_FILES['gambar']['name'];
  $image_type = $_FILES['gambar']['type'];

  if(!empty(trim($judul)) && !empty(trim($konten))){
    if ($image_type == '' || $image_type == 'image/jpg' || $image_type == 'image/jpeg' || $image_type == 'image/gif' || $image_type == 'image/png') {
      if($image_type == ''){
        if(tambah_data($judul, $konten, $tag, $sumber, $target, $nama_gambar, $penulis)){
          header('Location: index.php');
        }else {
          $error = 'ada masalah saat menambah data';
        }
      }else {
        $pindah = move_uploaded_file($sumber, $target.$nama_gambar);
        if($pindah){
          if(tambah_data($judul, $konten, $tag, $sumber, $target, $nama_gambar, $penulis)){
            header('Location: index.php');
          }else {
            $error = 'ada masalah saat menambah data';
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
          <h2>Tambahkan Artikel</h2><br>
          <form action="" method="post" enctype="multipart/form-data">
            <div class="form_settings">

            <p><span>Judul Artikel</span>
            <input type="text" name="judul" value=""></p>

            <p><span>Konten</span>
            <textarea name="konten" rows="8" cols="40"></textarea></p>

            <p><span>Kategori</span>
              <select name="tag">
                <?php while($row = mysqli_fetch_assoc($combo_kategori)):?>
                  <option><?= $row['nama_kategori']; ?></option>
                <?php endwhile; ?>
              </select>
            </p><br>

            <p>
              <span>Gambar</span>
              <input type="file" name="gambar"/>
            </p>

            <div id="error"><?= $error ?></div>

            <p style="padding-top: 10px"><span>&nbsp;</span><input class="submit" type="submit" name="submit" value="Tambah Artikel" /></p>
            </div>
          </form>
        </div>
    </div>
<?php
require "template/footer.php";
?>
