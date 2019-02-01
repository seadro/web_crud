<?php
require "core/init.php";

require "template/header.php";
require "template/sidebar.php";
?>

      <div id="content">
        <!-- insert the page content here -->
        <h1>Kontak Kami</h1>
        <p></p>
        <form action="" method="post">
          <div class="form_settings">
            <p><span>Name</span><input class="contact" type="text" name="your_name" value="" /></p>
            <p><span>Email Address</span><input class="contact" type="text" name="your_email" value="" /></p>
            <p><span>Message</span><textarea class="contact textarea" rows="8" cols="50" name="your_enquiry"></textarea></p>
            <p style="padding-top: 15px"><span>&nbsp;</span><input class="submit" type="submit" name="contact_submitted" value="submit" /></p>
          </div>
        </form>
        <p><br /><br />NOTE: Kirim formulir untuk menghubungi admin.</p>
      </div>
    </div>
<?php
require "template/footer.php";
?>
