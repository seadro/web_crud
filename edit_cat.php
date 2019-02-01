<?php
require "core/init.php";
if(!$_SESSION['user']){
  header('Location: login.php');
}

$error = '';
$id = $_GET['id'];

if(isset($_GET['id'])){
  $edit_kategori = tampilkan_nama_artikel($id);
  while($row = mysqli_fetch_assoc($edit_kategori)){
    $kategori_awal = $row['nama_kategori'];
  }
}

if(isset($_POST['submit'])){
  $nama_kategori = $_POST['kategori'];

  if(!empty(trim($nama_kategori))){
    if(update_kategori($id, $nama_kategori)){
      header('Location: category.php');
    }else {
      $error = 'ada masalah saat mengedit kategori';
    }
  }else{
    $error = 'nama kategori harus diisi';
  }
}

require "template/header.php";
require "template/sidebar.php";
?>

  <div id="content">
    <h2>Edit Kategori</h2><br>
    <form action="" method="post">
      <div class="form_settings">
       <p><span>Nama Kategori</span>
       <input type="text" name="kategori" value="<?=$kategori_awal;?>"></p>

       <div id="error"><?= $error ?></div>

       <p style="padding-top: 10px"><span>&nbsp;</span><input class="submit" type="submit" name="submit" value="Simpan" /></p>
     </div>
    </form>
  </div>

</div>
<?php
require "template/footer.php";
?>
