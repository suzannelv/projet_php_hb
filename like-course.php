<?php

session_start();
require_once __DIR__ . "/functions/db.php";
require_once __DIR__ . "/classes/Utils.php";
require_once __DIR__ ."/classes/Course.php";
require_once __DIR__ . "/classes/CourseSelected.php";


if(!isset($_SESSION["userInfos"])) {
    Utils::redirect("login.php");
}

$pdo = getConnection();
$course = new Course($pdo);

$userId = $_SESSION["userInfos"]['id'];
$courseId = intval($_GET['id']);


// Vérifier si un utilisateur a choisi le même cours
$query = "SELECT * FROM selection_course 
          WHERE user_id = :user_id 
          AND course_id = :course_id";

$stmtCheck = $pdo->prepare($query);
$stmtCheck->execute([
    'user_id'   => $userId,
    'course_id' => $courseId
]);


$refer = $_SERVER['HTTP_REFERER'];


// Pour informer l'utilisaur a réussi à ajouter le cours dans la liste de voeux ou pas.
// mais cette partie j'ai pas réussi à afficher à cause de problème d'affichage.
if($stmtCheck->rowCount() > 0) {
    $_SESSION["message"] = "Vous avez déjà ajouter dans votre liste de voeux.";
    Utils::redirect($refer);
} else {
    // sinon, insérer les cours non choisi dans la liste
    $course->getCourseDetails(1, $courseId);

    $query = "INSERT INTO selection_course (`user_id`, `course_id`)
              VALUES (:user_id, :course_id)";
    $stmtInsert = $pdo->prepare($query);
    $stmtInsert->execute([
      'user_id'   => $userId,
      'course_id' => $courseId
    ]);
    $_SESSION['message'] = "Ajouté avec succès!";

    // retourner la page précédente
    Utils::redirect($refer);

}
