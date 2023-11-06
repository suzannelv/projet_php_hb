<?php

class AppError
{
    public const DB_CONNECTION = 6;
    public const AUTH_REQUIRED_FIELDS = 7;
    public const INVALID_CREDENTIALS   = 8;
    public const USER_NOT_FOUND = 9;
    public const REGISTER_FILE_UPLOAD = 10;

    public static function getAppErrMsg(int $errorCode): string
    {
        return match ($errorCode) {
            AppError::DB_CONNECTION => "Problème de connection de BDD",
            AppError::AUTH_REQUIRED_FIELDS => "Les champs sont requis",
            AppError::INVALID_CREDENTIALS => "Mot de passe incorrect",
            AppError::USER_NOT_FOUND => "Utilisateur non trouvé",
            AppError::REGISTER_FILE_UPLOAD => "Téléchanger un fichier échoué",
            default => "Une erreur est survenue"
        };
    }
}
