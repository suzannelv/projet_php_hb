<?php


class Pagination
{
    private $pdo;
    private $table;
    private $totalPages;
    private $page_size;

    public function __construct(PDO $pdo, $table, $totalPages, $page_size)
    {
        $this->pdo = $pdo;
        $this->table = $table;
        $this->totalPages = $totalPages;
        $this->page_size = $page_size;
    }

    public function getPaginatedData($page, $limit)
    {
        $offset = ($page - 1) * $limit;
        $sql = "SELECT * FROM $this->table LIMIT $limit OFFSET $offset";
        $stmt = $this->pdo->query($sql);
        return $stmt->fetchAll();
    }
}
