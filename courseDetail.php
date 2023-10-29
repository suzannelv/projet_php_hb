<?php
$pageTitle="detail";
require_once __DIR__ . '/layout/head.php';
require_once __DIR__ . '/functions/db.php';
require_once __DIR__ . '/classes/Utils.php';
require_once __DIR__ . '/classes/Course.php';

$id = $_GET['id'];

if(!isset($id) || !is_numeric($id)) {
    http_response_code(404);
    Utils::redirect('notFoundPage.php');
    exit;
}

$pdo = getConnection();
$course = new Course($pdo);
$courseDetail = $course->getCourseDetails(1, $id);

var_dump($courseDetail);
?>

<main class="flex bg-slate-200 mx-auto"> 
     <!-- partie gauche -->
    <div class="left flex-1 mx-20">
      <div class="my-3 gap-1 flex flex-wrap">
        <!-- tag des cours -->
        <?php
        foreach ($courseDetail[0]['tags'] as $tag) { ?>
        <span class="text-sm font-medium px-2.5 py-0.5  rounded <?php echo $tag['tag_bg_color'] . ' ' . $tag['tag_text_color']; ?>"> 
          <?php echo $tag['tag_name']; ?>
        </span>
        <?php } ?>
      </div>

      <!-- title -->
      <h2 class="text-4xl font-extrabold text-gray-900 dark:text-white my-6">
        <?php echo $courseDetail[0]['courseName']; ?>
      </h2>
      <p class="mb-3 text-lg text-gray-500 dark:text-gray-400" style="white-space: nowrap; overflow: hidden; text-overflow: ellipsis; max-height: 3em;">
        <?php echo $courseDetail[0]['description']; ?>
      </p>

      <!-- extra info -->
      <div class="flex gap-8 my-5">   
        <!-- duration -->
        <div class="flex">
          <img class="mr-2 w-6 h-6 text-gray-800 dark:text-white" src="../assets/img/icon/duration.svg" aria-hidden="true" alt="Duration Icon">
          <span class="font-semibold">Duration : </span><?php echo "20h"; ?>
        </div>
        <!-- langue -->
        <div class="flex">
          <img class="mr-2 --w-6 h-6 text-gray-800 dark:text-white" src="../assets/img/icon/global.svg" aria-hidden="true" alt="language Icon">
          <span class="font-semibold">Langue : </span><?php echo $courseDetail[0]['language']; ?>
        </div>
      </div>



      <!-- vidéo du cours  -->
      <iframe class="w-[750px] h-[450px] border border-gray-200 rounded-lg dark:border-gray-700" src="https://www.youtube.com/embed/<?php echo $courseDetail[0]['videoUrl']; ?>" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
    </div>

<!-- partie droite -->
    <div class="right flex-1">

    </div>
</main>


<?php
require_once __DIR__ . '/layout/foot.php';
?>