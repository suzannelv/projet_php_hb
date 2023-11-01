<?php


class Utils
{
    public static function redirect(string $location): void
    {
        header("location: ". $location);
        exit;
    }
    public static function minuteToHour(int $minute): string
    {
        if ($minute < 60) {
            return $minute . 'minutes';
        } else {
            $hour = floor($minute/60);
            $remainingMinutes = $minute %60;
            $res = ($hour > 0 ? $hour . 'h' : '') . ($remainingMinutes > 0 ? $remainingMinutes . ' minutes' : '');
        };
        return $res;
    }
}
