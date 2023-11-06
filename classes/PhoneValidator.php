<?php


class PhoneValidator
{
    public const FORMAT_NUMBER = "Le format de numéro n'est pas valide.";
    public static function validatePhoneNumber($phoneNumber)
    {
        $phonePattern = '/#^0[6-7]{1}\d{8}$#/';

        if (!preg_match($phonePattern, $phoneNumber) || count_chars($phoneNumber) != 10) {
            return false;
        }

        return true;
    }
}
