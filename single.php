<?php
require "core/init.php";
$kategori = tampilkan_kategori();

$id = $_GET['id'];
if(isset($_GET['id'])){
  $artikel_id = tampilkan_id($id);
  while($row = mysqli_fetch_assoc($artikel_id)){
    $judul  = $row['judul'];
    $konten  = $row['isi'];
    $tag  = $row['tag'];
    $penulis  = $row['penulis'];
    $gambar  = $row['gambar'];
    $waktu  = $row['waktu'];
  }
}

require "template/header.php";
require "template/sidebar.php";
?>
      <div id="content">
        <h1 class="judul"><?= $judul ; ?> </h1>
        <h5><i> <?= date("D, d/M/Y", strtotime($waktu)); ?> | </i><b>by</b><i> <?= $penulis ; ?>  </i></h5>

          <?php if ($gambar): ?>
            <div class="left">
            <img id="gambar_artikel" src="img/<?=$gambar?>"/>
            </div>
          <?php endif; ?>

        <p class="konten">
          <?= $konten ; ?>
        </p>
        <h5 class="tag">
          kategori : <?= $tag ; ?>
        </h5>
      </div>
    </div>

<?php
require "template/footer.php";
?>
