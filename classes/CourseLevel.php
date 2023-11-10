<?php

require_once 'AbstractPdo.php';

class CourseLevel extends AbstractPdo
{
    /**
     * Méthode pour obtenir tous les niveaux de cours disponibles
     * @return array
     */
    public function getAllLevels(): array
    {
        $stmt = $this->pdo->query("SELECT id_level, level_name FROM level");
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
    /**
     * Méthode pour obtenir le niveau d'un cours à partir de son identifiant de niveau
     * @param integer $level_id
     * @return array
     */
    public function getCourseLevel(int $level_id): array
    {
        $stmt = $this->pdo->prepare(
            "SELECT level_name, level_bg_color, level_text_color 
            FROM courses c
            LEFT JOIN level l ON c.level_id = l.id_level 
            WHERE c.level_id = :level_id"
        );
        $stmt->execute(["level_id" => $level_id]);
        $row = $stmt->fetch();
        return $row;
    }
}
