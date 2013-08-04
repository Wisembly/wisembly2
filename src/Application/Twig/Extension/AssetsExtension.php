<?php

namespace Application\Twig\Extension;

use Silex\Application;

class AssetsExtension extends \Twig_Extension
{
    private $basePath;

    function __construct($host)
    {
        $this->basePath = $host;
    }

    public function getName() {
        return "SilexCMS_Asset";
    }

    public function getFunctions()
    {
        return array(
            "asset" => new \Twig_Function_Method($this, "asset"),
        );
    }

    public function asset($asset)
    {
        return $this->basePath . '/' . $asset;
    }
}