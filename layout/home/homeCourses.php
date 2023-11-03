<?php
require_once __DIR__ . '/../../functions/db.php';
require_once __DIR__ . '/../../classes/Course.php';
// require_once __DIR__ . '/../../classes/CourseLanguage.php';
// require_once __DIR__ . '/../../classes/CourseLevel.php';
// require_once __DIR__ . '/../../classes/CourseTags.php';
$pdo = getConnection();
$course = new Course($pdo);
$courseDetail = $course->getCourseDetails(6);
?>

<div class="header">    
    <div >
      <h2 class="text-3xl font-bold py-8 my-10">Aperçu du cours</h2>
      <!-- menu filter -->
        <div class="text-center mx-auto relative gap-4 max-w-screen-lg">
           <?php require_once __DIR__ . "/../menuFilter.php"; ?>
        </div>

      <div class="grid md:grid-cols-3 gap-4 place-items-center max-w-screen-lg mx-auto"> 
          <?php require_once __DIR__ . "/../../template/course-card.php" ?>
      </div>

      <a href="courses.php" class="inline-flex items-center px-3 py-2 my-10 text-sm font-medium text-center text-white bg-blue-400 rounded-lg hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">
            Plus de cours
             <svg class="w-3.5 h-3.5 ml-2" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 14 10">
                <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M1 5h12m0 0L9 1m4 4L9 9"/>
            </svg>
        </a>

<!-- fond vague -->
        <svg class="waves" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
        viewBox="0 24 150 28" preserveAspectRatio="none" shape-rendering="auto">
          <defs>
            <path id="gentle-wave" d="M-160 44c30 0 58-18 88-18s 58 18 88 18 58-18 88-18 58 18 88 18 v44h-352z" />
          </defs>
          <g class="parallax">
            <use xlink:href="#gentle-wave" x="48" y="0" fill="rgba(255,255,255,0.7" />
            <use xlink:href="#gentle-wave" x="48" y="3" fill="rgba(255,255,255,0.5)" />
            <use xlink:href="#gentle-wave" x="48" y="5" fill="rgba(255,255,255,0.3)" />
            <use xlink:href="#gentle-wave" x="48" y="7" fill="#fff" />
          </g>
        </svg>
    </div>
</div>



