<?php

require_once __DIR__ . '/Course.php';
require_once 'AbstractPdo.php';

class TeacherInfo extends AbstractPdo
{
    /**
     * Méthode pour obtenir le nom complet d'un enseignant à partir de son identifiant
     * @param integer $teacher_id
     * @return string
     */
    public function getTeacherFullname(int $teacher_id): string
    {
        $stmt = $this->pdo->prepare("SELECT CONCAT(firstname, ' ', lastname) AS full_name FROM teacher WHERE id_teacher = :teacher_id");
        $stmt->bindValue("teacher_id", $teacher_id, PDO::PARAM_INT);
        $stmt->execute();
        $res = $stmt->fetch();
        return $res ? $res['full_name'] : null;
    }
    /**
     * Méthode pour obtenir l'URL de la photo de profil d'un enseignant à partir de son identifiant
     * @param integer $teacher_id
     * @return string
     */
    public function getProfilImg(int $teacher_id): string
    {
        $stmt = $this->pdo->prepare("SELECT `profile` FROM teacher WHERE id_teacher = :teacher_id");
        $stmt->execute(["teacher_id" => $teacher_id]);
        $profil = $stmt->fetch();
        // Retourne l'URL de la photo de profil de l'enseignant ou une chaîne vide si elle n'existe pas
        return $profil ? $profil['profile'] : '';
    }
}
