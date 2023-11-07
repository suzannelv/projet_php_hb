<?php
require_once __DIR__ . '/layout/head.php';
if(isset($_GET['username'])) { ?>
 <main class="prose mx-auto mt-20">
  <h1>Fécilitation <?php echo $_GET['username']; ?></span><i class="fa-regular fa-face-smile text-yellow-400 ml-6"></i> ! </h1>
  <p>Vous pouvez vous connecter maintenant pour découvir nos cours a bien été enregistré ! 
  <a href="login.php" class="text-blue-600">Cliquez ici !</a>
  </p> 
</main>
<?php } ?>


<?php
require_once 'layout/footer.php';
require_once 'layout/footer.php';
