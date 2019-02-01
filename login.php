<?php
require "core/init.php";
//$kategori = tampilkan_kategori();

if(isset($_SESSION['user'])){
  header('Location: index.php');
}else{

$error = '';

if(isset($_POST['submit'])){
  $nama = $_POST['nama'];
  $pass = $_POST['password'];
  if(!empty(trim($nama)) && !empty(trim($pass))){
    if(cek_login($nama, $pass)){
      $_SESSION['user'] = $nama;
      header('Location: index.php');
    }else {
      $error = 'ada masalah saat login';
    }
  }else{
    $error = 'username dan password harus diisi';
  }
}

require "template/header.php";
require "template/sidebar.php";
?>
<h3>MENU LOGIN</h3>
<div class="halaman">

  <form action="" method="post">
    <label style="margin-right:12px;" for="nama">Username</label>
    <input type="text" name="nama" value=""><br><br>

    <label style="margin-right:12px;" for="password">Password</label>
    <input type="password" name="password" value=""><br><br>
    <?php if($error != ''): ?>
      <div id="error"><?= $error ?></div><br>
    <?php endif; ?>

    <input style="padding:4px;" type="submit" name="submit" value="Login"> atau <a href="register.php">Daftarkan akun</a>
  </form>
</div>

</div>
<?php
require "template/footer.php";
?>

<?php } ?>
