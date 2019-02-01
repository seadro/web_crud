<?php
function register_user($nama, $pass, $email){
  $nama = escape($nama);
  $pass = escape($pass);
  $email = escape($email);
  $query = "INSERT INTO anggota (username, password, email, level) VALUES ('$nama', '$pass', '$email', 2)";
  return run($query);
}
function register_cek_user($nama){
  $nama = escape($nama);
  global $link;
  $query = "SELECT * FROM anggota WHERE username='$nama'";
  if($result = mysqli_query($link, $query)){
    if(mysqli_num_rows($result) ==0) return true;
    else return false;
  }
}
function cek_login($nama, $pass){
  $nama = escape($nama);
  $pass = escape($pass);
  global $link;
  $query = "SELECT * FROM anggota WHERE username='$nama' AND password='$pass'";
  if($result = mysqli_query($link, $query)){
    if(mysqli_num_rows($result) !=0) return true;
    else return false;
  }
}
function escape($data){
  global $link;
  return mysqli_real_escape_string($link,$data);
}
function cek_status($username){
  $nama = escape($username);
  global $link;
  $query = "SELECT level FROM anggota WHERE username='$nama'";
  if($result = mysqli_query($link, $query)){
    while($row = mysqli_fetch_assoc($result)){
      $status = $row['level'];
    }
    return $status;
  }
}

?>
