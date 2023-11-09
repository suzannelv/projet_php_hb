<?php

require_once 'AbstractPdo.php';

class CourseTags extends AbstractPdo
{
    public function getAllTags(): array
    {
        $stmt = $this->pdo->query("SELECT id_tag, tag_name FROM course_tag");
        return $stmt->fetchAll();
    }

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
