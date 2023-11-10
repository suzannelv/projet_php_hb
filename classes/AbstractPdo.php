<?php

abstract class AbstractPdo
{
    /**
     * / Le constructeur de la classe accepte une instance de PDO en tant que paramètre
     * et la stocke dans la propriété protégée $pdo de la classe
     * @param PDO $pdo
     */
    public function __construct(protected PDO $pdo)
    {

    }
}
