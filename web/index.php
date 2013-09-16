<?php

require_once __DIR__ . '/../vendor/autoload.php';
use Symfony\Component\Yaml\Yaml;

$defaultLocale = 'en';
$config = Yaml::parse(__DIR__.'/../app/config/config.yml');

if (!isset($config['global']['host'])) {
    die('config.global.host is missing..');
}

$mainHost = $config['global']['host'];

function url_redirect($url, $header = true)
{
    if ($header) {
        header('HTTP/1.1 301 Moved Permanently', false, 301);
    }

    header("Location: {$url}");
    die();
}

$url = $_SERVER["REQUEST_URI"];
$host = $_SERVER["HTTP_HOST"];
$lang = isset($_SERVER['HTTP_ACCEPT_LANGUAGE']) ? substr($_SERVER['HTTP_ACCEPT_LANGUAGE'], 0, 2) : $defaultLocale;

if (!in_array($lang, array('fr', 'en', 'de', 'es', 'it', 'ch'))) {
    $lang = $defaultLocale;
}

// redirect all urls that does not contain locale in url to same url with locale
if (0 === preg_match('/\/(fr|en|fr|de|es|it|ch)\//i', $url)) {
    url_redirect($mainHost.'/'.$lang.$url);
}

// redirect all other hosts / CNAME pointing on corpo website to right host
if (false === strpos($mainHost, $host)) {
    url_redirect($mainHost.'/'.$lang.$url);
}

// redirect to proper url with locale
if ('/' === $url) {
    url_redirect($mainHost.'/'.$lang.$url);
}

// after all that, did not find your page?? DAMN!
url_redirect('404.html', false);