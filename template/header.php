<?php
$kategori = tampilkan_kategori();
$super_user = $login = false;
if(isset($_SESSION['user'])){
  $login = true;
  if(cek_status($_SESSION['user']) == 1){
    $super_user = true;
  }
}
?>

<!DOCTYPE HTML>
<html>
	<head>
	  <title>Portal Berita</title>
	  <meta name="description" content="website description" />
	  <meta name="keywords" content="website keywords, website keywords" />
	  <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
	  <link rel="stylesheet" type="text/css" href="template/style/style.css" />
	</head>


<body>
  <div id="main">
    <div id="header">
      <div id="logo">
        <div id="logo_text">
          <!-- class="logo_colour", allows you to change the colour of the text -->
					<h1><a href="index.php"><span class="logo_colour">Portal Berita</span></a></h1>
	        <h2>Informasi seputar dunia</h2>
	      </div>
	    </div>
	    <div id="menubar">
	      <ul id="menu">
	        <li><a href="index.php">Home</a></li>
	        <li><a href="category.php">Kategori</a></li>
	        <li><a href="contact.php">Kontak Kami</a></li>
	        <li><a href="about.php">About</a></li>
        </ul>
      </div>
    </div>
		<div id="content_header"></div>
