<?php


class MenuItem
{
    // constantes
    private const CSS_ACTIVE = "text-white bg-blue-700 md:bg-transparent md:text-blue-700";
    private const CSS_INACTIVE = "text-gray-900 hover:bg-gray-100 md:hover:bg-transparent md:hover:text-blue-700";

    // propriétés
    private string $url;
    private string $label;
    private bool $active;

    // méthodes
    public function __construct(
        string $url,
        string $label,
    ) {
        $this->url = $url;
        $this->label = $label;
        $this->active = str_contains($_SERVER['REQUEST_URI'], $url);
    }

    public function getCssClasses(): string
    {
        return $this->active ? self::CSS_ACTIVE : self::CSS_INACTIVE;
    }

    public function getUrl(): string
    {
        return $this->url;
    }

    public function getLabel(): string
    {
        return $this->label;
    }
}
