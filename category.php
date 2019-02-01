<?php
require "core/init.php";
$tampil_kategori = tampilkan_kategori();
$error = '';

require "template/header.php";
require "template/sidebar.php";
?>

<h1>Kategori</h1>
<ul>
  <?php while($row = mysqli_fetch_assoc($tampil_kategori)):?>
    <li style="font-size:14px;"><a href="view.php?cat=<?= $row['nama_kategori']; ?>"><?= $row['nama_kategori']; ?></a>
      <?php if($login == true): ?>
        <?php if($super_user == true): ?><a id="hapus_kategori" href="delete_cat.php?id=<?= $row['no'];?>">hapus</a><?php endif; ?>
          <a id="edit_kategori" href="edit_cat.php?id=<?= $row['no'];?>">edit</a>
      <?php endif; ?></li>
  <?php endwhile; ?>
</ul>
<a href="add_category.php" id="tambah_kategori">Tambah Kategori</a>


</div>
<?php
require "template/footer.php";
?>
