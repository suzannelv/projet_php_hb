<?php
require_once __DIR__ . '/../layout/head.php';

require_once __DIR__ . '/../functions/db.php';
require_once __DIR__ . '/../classes/Course.php';
require_once __DIR__ . '/../classes/Utils.php';

try {
    $pdo = getConnection();
    $course = new Course($pdo);
    $courseList = $course->getCourseDetails(38);
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
