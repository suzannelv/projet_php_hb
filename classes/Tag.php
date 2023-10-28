<?php


class Tag
{
    public function __construct(private PDO $pdo)
    {
    }

    // obtenir les infos sur les tags des cours
    public function getTagInfo(int $tag_id): array
    {
        $stmt = $this->pdo->prepare('SELECT * FROM course_tag WHERE id_tag = :tag_id');
        $stmt->execute(['tag_id', $tag_id]);
        return $stmt->fetch();
    }
}
