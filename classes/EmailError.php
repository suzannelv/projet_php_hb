<?php

class EmailError
{
    public const EMPTY     = 1;
    public const INVALID   = 2;
    public const DUPLICATE = 3;
    public const SPAM      = 4;
    public const MIS_MATCH = 5;

    public static function getErrorMessage(int $errorCode): string
    {
        return match ($errorCode) {
            EmailError::EMPTY     => "L'email est obligatoire",
            EmailError::INVALID   => "Le format de l'email est incorrect",
            EmailError::DUPLICATE => "L'email existe déjà dans la newsletter",
            EmailError::SPAM      => "Désolé, cet email n'est pas accepté dans notre newsletter",
            EmailError::MIS_MATCH => "Les mots de passe ne sont pas identiques",
            default               => "Une erreur est survenue"
        };
    }

}
