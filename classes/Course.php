<?php

require_once __DIR__ . '/CourseLevel.php';
require_once __DIR__ . '/CourseTags.php';
require_once __DIR__ . '/CourseLanguage.php';
require_once __DIR__ . '/TeacherInfo.php';



class Course
{
    // private $id;
    private $tag;
    private $courseLevel;
    private $courseLanguage;
    private $teacherInfo;
    public function __construct(private PDO $pdo)
    {
        $this->tag = new CourseTags($pdo);
        $this->courseLevel= new CourseLevel($pdo);
        $this->courseLanguage = new CourseLanguage($pdo);
        $this->teacherInfo = new TeacherInfo($pdo);
    }

    public function getCourseDetails(int $limit, $courseId = null): array
    {
        $sql = "SELECT * FROM courses";
        // si on a reçu un paramètre courseId
        if($courseId !== null) {
            $sql .= " WHERE id_course = :courseId";
        }
        // sinon, on défini le nombre d'affichage des cours
        $sql .= " LIMIT " . $limit;

        $stmt = $this->pdo->prepare($sql);

        if ($courseId !== null) {
            $stmt->bindValue('courseId', $courseId);

        }

        $stmt->execute();
        $courses = [];

        while ($row = $stmt->fetch()) {

            $courseDetails = [
              'courseId' => $row['id_course'],
              'courseName' => $row['course_name'],
              'description' => $row['description'],
              'coverImg' => $row['cover_img_url'],
              'videoUrl' => $row['video_url'],
              'dateOnline' => $row['date_online'],
              'level' => $this->courseLevel->getCourseLevel($row['level_id']),
              'teacher' => $this->teacherInfo->getTeacherFullname($row['teacher_id']),
              'teacherProfile'=>$this->teacherInfo->getProfilImg($row['teacher_id']),
              'language' => $this->courseLanguage->getLanguageName($row['lang_id']),
              'tags' => $this->tag->getCourseTags($row['id_course'])

            ];

            $courses[] = $courseDetails;
        }
        return $courses;
    }
    public function getFilteredCourses($language, $level, $theme): array
    {
        $sql = "SELECT c.* FROM courses c";

        $parameters = [];

        if ($language) {
            $sql .= " INNER JOIN languages l ON c.lang_id = l.id_lang WHERE l.lang_name = :language";
            $parameters[':language'] = $language;
        }
        if ($level) {
            $sql .= " INNER JOIN level lv ON c.level_id = lv.id_level WHERE lv.level_name = :level";
            $parameters[':level'] = $level;
        }
        if ($theme) {
            $sql .= " AND c.id_course IN 
                (SELECT c.id_course
                FROM courses c
                INNER JOIN course_tag_asso cta ON c.id_course = cta.course_id
                INNER JOIN course_tag ct ON cta.tag_id = ct.id_tag
                WHERE ct.tag_name = :theme
                )";
            $parameters[':theme'] = $theme;
        }

        $stmt = $this->pdo->prepare($sql);
        $stmt->execute($parameters);

        $courses = [];

        while ($row = $stmt->fetch()) {
            $courseDetails = [
                'courseId' => $row['id_course'],
                'courseName' => $row['course_name'],
                'description' => $row['description'],
                'coverImg' => $row['cover_img_url'],
                'videoUrl' => $row['video_url'],
                'dateOnline' => $row['date_online'],
                'level' => $this->courseLevel->getCourseLevel($row['level_id']),
                'teacher' => $this->teacherInfo->getTeacherFullname($row['teacher_id']),
                'teacherProfile' => $this->teacherInfo->getProfilImg($row['teacher_id']),
                'language' => $this->courseLanguage->getLanguageName($row['lang_id']),
                'tags' => $this->tag->getCourseTags($row['id_course'])
            ];

            $courses[] = $courseDetails;
        }

        return $courses;
    }

}
