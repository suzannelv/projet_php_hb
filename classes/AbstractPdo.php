<?php

abstract class AbstractPdo
{
    public function __construct(protected PDO $pdo)
    {

    }
}
