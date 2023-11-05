<?php

require_once __DIR__ . '/functions/db.php';
require_once __DIR__ . '/classes/Course.php';


$language = isset($_POST['language']) ? $_POST['language'] : null;
$level = isset($_POST['level']) ? $_POST['level'] : null;
$theme = isset($_POST['theme']) ? $_POST['theme'] : null;
var_dump($_POST);

$pdo = getConnection();

$courses = new Course($pdo);

$filterCourses = $courses->getFilteredCourses($language, $level, $theme);
var_dump($filterCourses);
if($filterCourses === null) {
    echo 'pas de cours trouvé';
} else {
    echo 'trouvé';
}
