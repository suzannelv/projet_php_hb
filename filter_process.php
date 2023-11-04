<?php

require_once __DIR__ . '/functions/db.php';
require_once __DIR__ . '/classes/Course.php';


$language = isset($_POST['language']) ? $_POST['language'] : null;
$level = isset($_POST['level']) ? $_POST['level'] : null;
$theme = isset($_POST['theme']) ? $_POST['theme'] : null;
var_dump($_POST);

$pdo = getConnection();

$course = new Course($pdo);

$filterCourses = $course->getFilteredCourses($language, $level, $theme);

if($filterCourses === null) {
    echo 'pas de cours trouvé';
} else {
    foreach($filterCourses as $item) {
        echo 'trouvé';
    }
}
