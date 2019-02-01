    <div id="site_content">
      <form method="get" action="search.php" id="search_form">
        <input class="search" type="text" name="cari" value="" placeholder="Cari Berita Disini..."/>
        <input name="search" type="image" style="border: 0; margin: 0 0 -9px 5px;" src="template/style/search.png" alt="Search" title="Search" />
			</form>
      <div id="sidebar_container">
        <div class="sidebar">
          <div class="sidebar_top"></div>
          <div class="sidebar_item">
            <?php if($login == true): ?>
              <p id="login">
                selamat datang <?= $_SESSION['user']; ?><br>
                <a href="logout.php">Logout</a>
              </p>
            <?php else: ?>
              <p id="login">
                <a href="login.php">Login</a><br>
                atau <br>
                <a href="register.php">Daftar Akun</a>
              </p>
            <?php endif; ?>
          </div>
          <div class="sidebar_base"></div>
        </div>
        <div class="sidebar">
          <div class="sidebar_top"></div>
          <div class="sidebar_item">
            <h3>Kategori</h3>
            <ul>
              <?php while($row = mysqli_fetch_assoc($kategori)):?>
                <li><a href="view.php?cat=<?= $row['nama_kategori']; ?>"><?= $row['nama_kategori']; ?></a></li>
              <?php endwhile; ?>
            </ul>
          </div>
          <div class="sidebar_base"></div>
        </div>
      </div>
