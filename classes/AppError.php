<?php

class AppError
{
    public const DB_CONNECTION = 6;
    public const AUTH_REQUIRED_FIELDS = 7;
    public const INVALID_CREDENTIALS   = 8;
    public const USER_NOT_FOUND = 9;
    public const REGISTER_FILE_UPLOAD = 10;
    public const FORMAT_NUMBER = 11;

    public static function getAppErrMsg(int $errorCode): string
    {
        return match ($errorCode) {
            AppError::DB_CONNECTION        => "Problème de connection de BDD",
            AppError::AUTH_REQUIRED_FIELDS => "Les champs sont requis",
            AppError::INVALID_CREDENTIALS  => "Mot de passe incorrect",
            AppError::USER_NOT_FOUND       => "Utilisateur non trouvé",
            AppError::REGISTER_FILE_UPLOAD => "Téléchanger un fichier échoué",
            AppError::FORMAT_NUMBER        => "Le format de numéro n'est pas valide.",
            default                        => "Une erreur est survenue",

        };
    }

    // vérifier le format du numéro de téléphone
    public static function validatePhoneNumber($phoneNumber)
    {
        $phonePattern = '/#^0[6-7]{1}\d{8}$#/';

        if (!preg_match($phonePattern, $phoneNumber) || count_chars($phoneNumber) != 10) {
            return false;
        }

        return true;
    }
}
