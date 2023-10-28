<?php

require_once __DIR__ . '/Tag.php';


class Course
{
    private $tag;
    public function __construct(private PDO $pdo)
    {
        $this->tag = new Tag($pdo);
    }

    public function getCourseDetails(int $limit): array
    {
        $sql = "SELECT * FROM courses LIMIT " . $limit;
        $stmt = $this->pdo->query($sql);
        $courses = [];
        while ($row = $stmt->fetch()) {

            $courseDetails = [
              'courseId' => $row['id_course'],
              'courseName' => $row['course_name'],
              'description' => $row['description'],
              'coverImg' => $row['cover_img_url'],
              'videoUrl' => $row['video_url'],
              'dateOnline' => $row['date_online'],
              'level' => $this->getCourseLevel($row['level_id']),
              'teacher' => $this->getTeacherInfo($row['teacher_id']),
              'language' => $this->getLanguageName($row['lang_id']),
              'tags' => $this->getCourseTags($row['id_course'])

            ];

            $courses[] = $courseDetails;

        }
        return $courses;
    }

    public function getCourseLevel(int $level_id): array
    {
        $stmt = $this->pdo->prepare(
            "SELECT level_name, level_bg_color, level_text_color 
            FROM courses c
            LEFT JOIN level l ON c.level_id = l.id_level 
            WHERE c.level_id = :level_id"
        );
        $stmt->execute(["level_id" => $level_id]);
        $row = $stmt->fetch();
        return $row;
    }

    public function getTeacherInfo(int $teacher_id): string
    {
        $stmt = $this->pdo->prepare("SELECT CONCAT(firstname, ' ', lastname) AS full_name FROM teacher WHERE id_teacher = :teacher_id");
        $stmt->bindValue("teacher_id", $teacher_id, PDO::PARAM_INT);
        $stmt->execute();
        $res = $stmt->fetch();
        return $res ? $res['full_name'] : null;
    }

    public function getLanguageName(int $lang_id): string
    {
        $stmt = $this->pdo->prepare("SELECT lang_name FROM languages WHERE id_lang = :lang_id");
        $stmt->bindValue("lang_id", $lang_id, PDO::PARAM_INT);
        $stmt->execute();
        $res = $stmt->fetch();
        return $res ? $res['lang_name'] : null;

    }

    public function getCourseTags(int $course_id): array
    {
        $stmt = $this->pdo->prepare(
            "SELECT t.* FROM course_tag t 
            INNER JOIN course_tag_asso cta ON t.id_tag = cta.tag_id 
            WHERE cta.course_id = :courseId"
        );

        $stmt->execute(["courseId" => $course_id]);
        $tags = [];

        while ($row = $stmt->fetch()) {
            $tagInfo = [
                'tag_name' => $row['tag_name'],
                'tag_bg_color' => $row['tag_bg_color'],
                'tag_text_color' => $row['tag_text_color']
            ];
            $tags[] = $tagInfo;
        }
        return $tags;
    }



}
