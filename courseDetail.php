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
?>

<main class="bg-gradient-to-b from-blue-100 to-transparent dark:from-blue-900"> 
     <!-- partie top -->
    <div class="top mx-20">
      <div class="my-3 gap-1 flex flex-wrap pt-12">
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
    </div>

    <div class="flex flex-col lg:flex-row mx-20">
      <div class="w-full md:w-8/12">
        <!-- vidéo du cours  -->
        <iframe class="w-[750px] h-[450px] border border-gray-200 rounded-lg dark:border-gray-700" src="https://www.youtube.com/embed/<?php echo $courseDetail[0]['videoUrl']; ?>" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
      </div>


      <div class="md:w-4/12 mx-auto flex flex-col items-center justify-center">
        <div class="card-teacher">
          <img class="h-36 w-36 rounded-full object-cover" src="<?php echo $courseDetail[0]['teacherProfile']; ?>" alt="">
        </div>
        <p class="text-lg font-semibold text-start my-6">Créé par : <?php echo $courseDetail[0]['teacher']; ?></p>

        <p class="text-lg font-semibold text-start my-6">Mise en ligne : <?php echo $courseDetail[0]['dateOnline']; ?></p>

        <p class="text-lg font-semibold text-start my-6">Langue : <?php echo $courseDetail[0]['language']; ?> 
          <span class="text-sm text-center font-semibold text-start my-6 rounded py-0.5 px-2.5 ml-2 <?php echo $courseDetail[0]['level']['level_bg_color'] . ' ' . $courseDetail[0]['level']['level_text_color'] ?>">
          <?php echo $courseDetail[0]['level']['level_name']; ?>
          </span>
        </p>

        
        <a type="button" href="register.php" class="text-gray-900 bg-[#F7BE38] hover:bg-[#F7BE38]/90 focus:ring-4 focus:outline-none focus:ring-[#F7BE38]/50 font-medium rounded-lg text-sm px-5 py-2.5 text-center inline-flex items-center dark:focus:ring-[#F7BE38]/50 mr-2 mb-2">
          Connectez-vous pour vous inscrire
        </a>
   

      </div>
      
    </div>
      
  


</main>


<?php
require_once __DIR__ . '/layout/foot.php';
?>