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
        $sql = "SELECT * FROM courses WHERE 1=1";

        if ($language) {
            $sql .= " AND lang_id = :language";
        }
        if ($level) {
            $sql .= " AND level_id = :level";
        }
        if ($theme) {
            $sql .= " AND id_course IN 
                (SELECT c.id_course
                FROM courses c
                INNER JOIN course_tag_asso cta ON c.id_course = cta.course_id
                INNER JOIN course_tag ct ON cta.tag_id = ct.id_tag
                WHERE ct.tag_name = :theme
                )";
        }

        $stmt = $this->pdo->prepare($sql);

        if ($language) {
            $stmt->bindValue(':language', $language);
        }
        if ($level) {
            $stmt->bindValue(':level', $level);
        }
        if ($theme) {
            $stmt->bindValue(':theme', $theme);
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
                'teacherProfile' => $this->teacherInfo->getProfilImg($row['teacher_id']),
                'language' => $this->courseLanguage->getLanguageName($row['lang_id']),
                'tags' => $this->tag->getCourseTags($row['id_course'])
            ];

            $courses[] = $courseDetails;
        }

        return $courses;
    }


}
