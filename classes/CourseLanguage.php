<?php

require_once 'AbstractPdo.php';

class CourseLanguage extends AbstractPdo
{
    public function getAllLanguages(): array
    {
        $stmt = $this->pdo->query("SELECT * FROM languages");
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    public function getLanguageName(int $lang_id): string
    {
        $stmt = $this->pdo->prepare("SELECT lang_name FROM languages WHERE id_lang = :lang_id");
        $stmt->bindValue("lang_id", $lang_id, PDO::PARAM_INT);
        $stmt->execute();
        $res = $stmt->fetch();
        return $res ? $res['lang_name'] : null;

    }
}
