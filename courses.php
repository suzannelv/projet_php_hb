<?php
require_once __DIR__ . "/layout/head.php";
require_once __DIR__ . "/classes/Course.php";
require_once __DIR__ . '/functions/db.php';
require_once __DIR__ . '/classes/Pagination.php';

$pdo = getConnection();
$course = new Course($pdo);
$courseDetail = [];

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $language = $_POST['language'] ;
    $level = $_POST['level'];
    $theme = $_POST['theme'];

    try {
        $courseDetail = $course->getFilteredCourses($language, $level, $theme);
    } catch (Exception $e) {
        echo json_encode(["error" => $e->getMessage()]);
    }
} else {
    $courseDetail = $course->getCourseDetails(38);
}


?> 


<main class="mx-auto text-center">
  <h2 class="text-3xl font-bold py-8 my-10">Aperçu du cours</h2>

  <!-- menu filter -->
  <div class="px-20 max-w-screen-lg mx-auto">
    <?php require_once __DIR__ . "/layout/menuFilter.php"; ?>
  </div>

  <!-- si on a trouvé les cours, afficher le template cours -->
  <?php if (!empty($courseDetail)) { ?>
    <div class="grid md:grid-cols-3 gap-4 place-items-center max-w-screen-lg mx-auto">
      <?php require_once __DIR__ . "/template/course-card.php"; ?>
    </div>
  <?php } else { ?>
    <!-- message pour les cours non trouvé -->
    <div class="my-10 text-gray-700 text-3xl">Cours non trouvé <i class="fa-regular fa-face-frown text-yellow-400"></i></div>
  <?php } ?>

  <div class="mx-auto my-10 text-gray-700 text-lg">- Fin -</div>
</main>

<?php
require_once __DIR__ ."/layout/foot.php";
require_once __DIR__ ."/layout/footer.php";
