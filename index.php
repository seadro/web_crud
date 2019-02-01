<?php
require "core/init.php";
$artikel = tampilkan();
$error = '';

if(isset($_GET['cari'])){
  $cari    = $_GET['cari'];
  $artikel = pencarian($cari);
}

require "template/header.php";
require "template/sidebar.php";
?>

<body background="template/style/p.png">

      <?php if($login == true): ?>
      <a href="add.php" id="tambah">Tambah Artikel</a>
      <?php endif; ?>
      <?php while($row = mysqli_fetch_assoc($artikel)):?>
        <div id="content">
          <h1 class="judul"><a href="single.php?id=<?= $row['id']; ?>"> <?= $row['judul']; ?> </a></h1>

          <h5><i> <?= date("D, d/M/Y", strtotime($row['waktu'])); ?> | </i> <b>by<i> <?= $row['penulis']; ?>  </i></b></h5>

          <?php if ($row['gambar']): ?>
            <div class="left">
            <img id="depan" src="img/<?= $row['gambar']; ?>" />
            </div>
          <?php endif; ?>

          <p class="konten">
            <?= potong_teks($row['isi']); ?>
          </p>
          <h5 class="tag">
            kategori : <?= $row['tag']; ?>
          </h5>

          <?php if($login == true): ?>
            <a href="edit.php?id=<?= $row['id']; ?>">Edit</a>
            <?php if($super_user == true): ?>
              <a href="delete.php?id=<?= $row['id']; ?>">Hapus</a>
            <?php endif; ?>
          <?php endif; ?>
          <hr color="#323534" size="1"/>
        </div>
      <?php endwhile; ?>
    </div>

    <div class="pagination">
      <?php for($i = 1; $i<=$pages; $i++){ ?>
        <a class="paging" href="?page=<?= $i; ?>"><?= $i; ?></a>
      <?php } ?>
    </div>

<?php
require "template/footer.php";
?>
