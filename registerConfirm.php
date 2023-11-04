<?php
require_once __DIR__ . '/layout/head.php';
if(isset($_GET['username'])) {
    echo $_GET['username'];
}
?>
<main class="prose mx-auto">
  <h1>Merci, votre email <span class="text-green-600"><?php echo $_GET['username']; ?></span> a bien été enregistré !</h1>
</main>

<?php
require_once 'layout/footer.php';
require_once 'layout/footer.php';
