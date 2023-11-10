<?php


class Utils
{
    public static function redirect(string $location): void
    {
        if(!headers_sent()) {
            header("location: ". $location);
        }
    }
    public static function minuteToHour(int $minute): string
    {
        // Si la durée est inférieure à 60 minutes, renvoie simplement la durée en minutes
        if ($minute < 60) {
            return $minute . 'minutes';
        } else {
            // Si la durée est de 60 minutes ou plus, effectue la conversion en heures et minutes
            $hour = floor($minute / 60); // Calcule le nombre d'heures entières
            $remainingMinutes = $minute % 60;  // Calcule le reste des minutes après la conversion en heures
            $res = ($hour > 0 ? $hour . 'h' : '') . ($remainingMinutes > 0 ? $remainingMinutes . ' minutes' : '');
        };
        return $res;
    }
    /**
     *fonction de recherche pour chercher les cours selon les noms de cours saisi
     *
     * @param array $courses
     * @param string $search
     * @return array
     */
    public static function findCourse(array $courses, string $search): array
    {

        $result = array_filter($courses, function (array $course) use ($search): bool {

            return stripos($course['courseName'], $search) !== false;
        });

        return $result;
    }




}
