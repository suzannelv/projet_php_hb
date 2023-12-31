<?php

require_once 'AbstractPdo.php';

class Chapiter extends AbstractPdo
{
    private $courseId;

    /**
     * Méthode pour récupérer les détails des chapitres d'un cours donné
     * @param integer $courseId
     * @return array
     */
    public function getChaptersDetail(int $courseId): array
    {
        $query = "SELECT * FROM chapiter WHERE course_id = :course_id";
        $stmt = $this->pdo ->prepare($query);
        $stmt->execute(['course_id' => $courseId]);
        $chapiterContent = [];

        while($row = $stmt->fetch()) {
            $chapiterInfo = [
              'chapiterId'       => $row['id_chapiter'],
              'chapiterTitle'    => $row['chapiter_title'],
              'chapiterDuration' => $row['chapiter_duration_minutes'],
              'chapiterVideoId'  => $row['chapiter_video_id'],
              'chapiterContent'  => $row['chapiter_content'],
            ];
            $chapiterContent[] = $chapiterInfo;
        }
        return $chapiterContent;

    }
    /**
     *  Méthode pour calculer la durée totale du cours (en minutes)
     * @param integer $courseId
     * @return integer
     */
    public function getTotalCourseDuration(int $courseId): int
    {
        $query = "SELECT SUM(chapiter_duration_minutes) AS total_duration FROM chapiter WHERE course_id = :course_id";
        $stmt = $this->pdo->prepare($query);
        $stmt->execute(['course_id' => $courseId]);

        $result = $stmt->fetch();
        if ($result) {
            return (int)$result['total_duration'];
        }

        return 0;
    }

}
