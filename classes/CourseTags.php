<?php

require_once 'AbstractPdo.php';

class CourseTags extends AbstractPdo
{
    /**
     * Méthode pour obtenir tous les tags de cours disponibles
     * @return array
     */
    public function getAllTags(): array
    {
        $stmt = $this->pdo->query("SELECT id_tag, tag_name FROM course_tag");
        return $stmt->fetchAll();
    }
    /**
     * Méthode pour obtenir les tags d'un cours à partir de son identifiant de cours
     * @param integer $course_id
     * @return array
     */
    public function getCourseTags(int $course_id): array
    {
        $stmt = $this->pdo->prepare(
            "SELECT t.* FROM course_tag t 
            INNER JOIN course_tag_asso cta ON t.id_tag = cta.tag_id 
            WHERE cta.course_id = :courseId"
        );

        $stmt->execute(["courseId" => $course_id]);
        $tags = [];

        while ($row = $stmt->fetch()) {
            $tagInfo = [
                'tag_name'       => $row['tag_name'],
                'tag_bg_color'   => $row['tag_bg_color'],
                'tag_text_color' => $row['tag_text_color']
            ];
            $tags[] = $tagInfo;
        }
        return $tags;
    }

}
