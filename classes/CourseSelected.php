<?php

require_once 'AbstractPdo.php';
require_once __DIR__ . '/../functions/db.php';
require_once 'Utils.php';

class CourseSelected extends AbstractPdo
{
    public function __construct($pdo)
    {
        parent::__construct($pdo);
    }

    public function checkIfCourseSelected(int $userId, $courseId): ?array
    {
        // Vérifier si un utilisateur a choisi le même cours
        $query = "SELECT * FROM selection_course WHERE user_id = :user_id AND course_id = :course_id";
        $stmtCheck = $this->pdo->prepare($query);
        $stmtCheck->execute([
            'user_id'   => $userId,
            'course_id' => $courseId
        ]);


        $refer = $_SERVER['HTTP_REFERER'];

        if($stmtCheck->rowCount() > 0) {
            $_SESSION["message"] = "Vous avez déjà ajouter dans votre liste de voeux.";
            Utils::redirect($refer);
        } else {
            // sinon, insérer les cours non choisi dans la liste
            $pdo = getConnection();
            $course = new Course($pdo);
            $course->getCourseDetails(1, $courseId);

            $query = "INSERT INTO selection_course (`user_id`, `course_id`)
          VALUES (:user_id, :course_id)";
            $stmtInsert = $this->pdo->prepare($query);
            $stmtInsert->execute([
              'user_id'   => $userId,
              'course_id' => $courseId
            ]);
            $_SESSION['message'] = "Ajouté avec succès!";

            // retourner la page précédente
            Utils::redirect($refer);

        }

    }
}
