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
  $email = $_POST['email'];


  if(!empty(trim($nama)) && !empty(trim($pass))){
    if(register_cek_user($nama)){
        if(register_user($nama, $pass, $email)){
          $_SESSION['user'] = $nama;
          header('Location: index.php');
        }else {
          $error = 'ada masalah saat daftar';
        }
    }else {
        $error = 'nama yang didaftarkan sudah ada, pilih nama lain';
    }
  }else{
    $error = 'username dan password harus diisi';
  }
}
require "template/header.php";
require "template/sidebar.php";
?>

  <h3>DAFTAR AKUN</h3>
  <div class="halaman">
    <form action="" method="post">
      <label style="margin-right:12px;" for="nama">Username</label>
      <input type="text" name="nama" value=""><br><br>

      <label style="margin-right:12px;" for="password">Password</label>
      <input type="password" name="password" value=""><br><br>

      <label style="margin-right:28px;" for="email">E-Mail</label>
      <input type="text" name="email" value=""><br><br>

      <div id="error"><?= $error ?></div><br>

      <input style="padding:4px;" type="submit" name="submit" value="Daftarkan Akun"><br>
      <p style="margin-top:3px">
        atau <a href="login.php">Login disini</a>
      </p>

    </form>
  </div>

</div>
<?php
require "template/footer.php";
?>

<?php } ?>
