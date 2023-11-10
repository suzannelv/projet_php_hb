<?php

require_once 'AbstractPdo.php';

class CourseLanguage extends AbstractPdo
{
    /**
     * Méthode pour obtenir toutes les langues disponibles
     * @return array
     */
    public function getAllLanguages(): array
    {
        $stmt = $this->pdo->query("SELECT * FROM languages");
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
    /**
     * Méthode pour obtenir le nom d'une langue à partir de son identifiant
     * @param integer $lang_id
     * @return string
     */
    public function getLanguageName(int $lang_id): string
    {
        $stmt = $this->pdo->prepare("SELECT lang_name FROM languages WHERE id_lang = :lang_id");
        $stmt->bindValue("lang_id", $lang_id, PDO::PARAM_INT);
        $stmt->execute();
        $res = $stmt->fetch();
        return $res ? $res['lang_name'] : null;

    }
}
