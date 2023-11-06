<?php

require_once __DIR__ . '/functions/db.php';
require_once __DIR__ . '/classes/Course.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $pdo = getConnection();
    $course = new Course($pdo);

    $language = $_POST['language'] ;
    $level = $_POST['level'];
    $theme = $_POST['theme'];

    try {
        $filteredCourses = $course->getFilteredCourses($language, $level, $theme);
        echo json_encode($filteredCourses);
        var_dump($filteredCourses);
    } catch (Exception $e) {
        echo json_encode(["error" => $e->getMessage()]);
    }
}
