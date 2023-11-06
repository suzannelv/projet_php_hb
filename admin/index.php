<?php
require_once __DIR__ . '/../layout/head.php';

require_once __DIR__ . '/../functions/db.php';
require_once __DIR__ . '/../classes/Course.php';
require_once __DIR__ . '/../classes/Chapiter.php';

try {
    $pdo = getConnection();
    $course = new Course($pdo);
    $courseList = $course->getCourseDetails(38);
    // obtenir les contenus de chapiter selon l'id de cours
    // $chapiter = new Chapiter($pdo);
    // $chapiterDetail = $chapiter->getChaptersDetail($id);
    // $totalDuration = $chapiter->getTotalCourseDuration($id);
    // $minuteToHour = Utils::minuteToHour($totalDuration);
    // var_dump($chapiterDetail);
} catch(PDOException $e) {
    echo $e->getMessage();
}
?>

<main class="mx-10">
  <?php require_once 'template-list.php'; ?>
</main>


<?php
require_once __DIR__ . '/../layout/foot.php';
require_once __DIR__ . '/../layout/footer.php';
