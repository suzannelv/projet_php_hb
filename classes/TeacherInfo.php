<?php

require_once __DIR__ . '/Course.php';
class TeacherInfo
{
    public function __construct(private PDO $pdo)
    {
    }
    public function getTeacherInfo(int $teacher_id): string
    {
        $stmt = $this->pdo->prepare("SELECT CONCAT(firstname, ' ', lastname) AS full_name FROM teacher WHERE id_teacher = :teacher_id");
        $stmt->bindValue("teacher_id", $teacher_id, PDO::PARAM_INT);
        $stmt->execute();
        $res = $stmt->fetch();
        return $res ? $res['full_name'] : null;
    }
}
