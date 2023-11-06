<?php
require_once __DIR__ . "/layout/head.php";
require_once __DIR__ . "/classes/Course.php";
require_once __DIR__ . '/functions/db.php';
require_once __DIR__ . '/classes/Pagination.php';


try {
    $pdo = getConnection();
    $course = new Course($pdo);
    $courseDetail = $course->getCourseDetails(38);
    $pagination = new Pagination($pdo, 'your_table');
    // $chapiter = new Chapiter($pdo);
    // $totalDuration = $chapiter->getTotalCourseDuration($id);
    // $minuteToHour = Utils::minuteToHour($totalDuration);
} catch(PDOException $e) {
    echo $e->getMessage();
}


$page = $_GET['page'] ?? 1;
$limit = $_GET['limit'] ?? 10;
$data = $pagination->getPaginatedData($page, $limit);

?> 


<main class="mx-auto text-center">
  <h2 class="text-3xl font-bold py-8 my-10">Aperçu du cours</h2>

  <!-- menu filter -->
  <div class="px-20 max-w-screen-lg mx-auto">
    <?php require_once __DIR__ . "/layout/menuFilter.php"; ?>
  </div>

  <!-- template cours -->
  <div class="grid md:grid-cols-3 gap-4 place-items-center max-w-screen-lg mx-auto"> 
    <?php require_once __DIR__ . "/template/course-card.php" ?>
  </div>
<!-- 
      <a href="courses.php" class="inline-flex items-center px-3 py-2 my-10 text-sm font-medium text-center text-white bg-blue-400 rounded-lg hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">
            Voir plus
      </a> -->

      <div class="mx-auto my-10 text-gray-700 text-lg">- Fin -</div>
</main>

<?php
require_once __DIR__ ."/layout/foot.php";
require_once __DIR__ ."/layout/footer.php";
