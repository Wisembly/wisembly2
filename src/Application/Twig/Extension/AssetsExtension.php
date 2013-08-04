<?php

namespace Application\Twig\Extension;

use Silex\Application;

class AssetsExtension extends \Twig_Extension
{
    private $basePath;
    private $assetsVersion;

    function __construct($host = 'http://wisembly.com', $assetsVersion = '42')
    {
        $this->basePath = $host;
        $this->assetsVersion = $assetsVersion;
    }

    public function getName() {
        return 'SilexCMS_Asset';
    }

    public function getFunctions()
    {
        return array(
            'asset' => new \Twig_Function_Method($this, "asset"),
        );
    }

    public function asset($asset)
    {
        return $this->basePath . '/' . $asset . '?v=' . $this->assetsVersion;
    }
}