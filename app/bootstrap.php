<?php

require_once __DIR__ . '/../vendor/autoload.php';

use Symfony\Component\Yaml\Yaml;
use SilexCMS\Set\LocalizationSet;

use Application\Command\DatabaseCommand;

$config = Yaml::parse(__DIR__.'/config/config.yml');
$locale = isset($locale) ? $locale : $config['global']['locale_fallback'];

// instanciate our SilexCMS Application
$app = new SilexCMS\Application(array_merge(
    $config,
    array(
        'debug'             => $config['global']['debug'],
        'locale'            => $locale,
        'locale_fallback'   => $config['global']['locale_fallback'],
        'twig.path'         => __DIR__ . '/../src/Application/Resources/views',
        'twig.options'      => array(
            'debug'         => $config['global']['debug'],
            'cache'         => __DIR__ . '/cache',
        ),
        'db.options'        => array_merge($config['databases']['default'], $config['databases'][$locale]),
    )
));

// country & phone numbers
$app['country'] = isset($country) ? $country : 'fr';
$app['phone_number'] = $config['phone.numbers'][$app['country']];

// ** load DB messages through LocalizationsSet if message table exist**
try {
    $messages = new LocalizationSet('messages', 'messages', 'key');
    $app->register($messages);
    $messages->injectLocalizations();
} catch (\Exception $e) {}

// add useful extensions / providers
$app['twig']->addExtension(new Application\Twig\Extension\AssetsExtension($config['global']['host'], $config['global']['assets_version']));

if ($app['debug']) {
    $app['twig']->addExtension(new Twig_Extensions_Extension_Debug());
    $app['twig']->enableDebug();
}

// swiftmailer
$app->register(new Silex\Provider\SwiftmailerServiceProvider(), array(
    'swiftmailer.options'   => $config['mailer'],
));

$app['mailer'] = $app->share(function ($app) {
    return new \Swift_Mailer($app['swiftmailer.transport']);
});

unset($config);
require_once __DIR__ . '/startup.php';

// register console commands
$app['console']->add(new DatabaseCommand());

return $app;
