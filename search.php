<?php
require_once __DIR__ . '/layout/head.php';
require_once __DIR__ . '/functions/db.php';
require_once __DIR__ . '/classes/Utils.php';
require_once __DIR__ . '/classes/Course.php';

if(!isset($_GET["q"]) || empty($_GET['q'])) {
    Utils::redirect("index.php");
}


$pdo = getConnection();
$course = new Course($pdo);
$courseDetail = $course->getCourseDetails(38);

if ($_SERVER['REQUEST_METHOD'] === 'GET') {
    $search = $_GET["q"];

    try {
        $searchRes = Utils::findCourse($courseDetail, $search);
        $courseDetail = $searchRes;
    } catch (Exception $e) {
        echo json_encode(["error" => "Une erreur est survenue lors de la recherche"]);
    }
}

?>


<main class="mx-auto my-6">
    <?php if($courseDetail) { ?> 
        <h1 class="text-4xl font-bold text-gray-700 my-10 text-center">Résultats de la recherche pour "<?php echo $search; ?>"</h1>
    
        <div class="grid md:grid-cols-3 gap-4 place-items-center max-w-screen-lg mx-auto">
            <?php require_once __DIR__ . '/template/course-card.php' ;?>
        </div>
    <?php } else {?>
      <h2 class="text-4xl font-bold text-gray-700 my-10 text-center">Aucun résultat trouvé pour votre recherche "<?php echo $search; ?>" <i class="fa-regular fa-face-frown-open text-blue-500 ml-2"></i></h2>
    <?php } ?>
    
    
</main>

<?php
require_once __DIR__ . '/layout/foot.php';
