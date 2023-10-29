<?php

class CourseLanguage
{
    public function __construct(private PDO $pdo)
    {
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
