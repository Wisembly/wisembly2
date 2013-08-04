<?php

require_once __DIR__ . '/../vendor/autoload.php';

use Symfony\Component\Yaml\Yaml;
use SilexCMS\Repository\GenericRepository;

$config = Yaml::parse(__DIR__.'/config/config.yml');
$locale = isset($locale) ? $locale : $config['global']['locale'];

// instanciate our SilexCMS
$app = new SilexCMS\Application(array_merge(
    $config,
    array(
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

// ** load DB messages **
$repo = new GenericRepository($app['db'], 'messages');
$messages = $repo->findAll();

foreach ($messages as $key => $message) {
    $messages[$locale][$message['message_key']] = $message['message_value'];
    unset($messages[$key]);
}

$app['translator.domains'] = array(
  'messages' => $messages
);

// add usefull extensions / providers
$app['twig']->addExtension(new SilexCMS\Twig\Extension\ForeignKeyExtension($app));
$app['twig']->addExtension(new Application\Twig\Extension\AssetsExtension());

if ($config['global']['debug']) {
    $app['debug'] = true;
    $app['twig']->addExtension(new Twig_Extensions_Extension_Debug());
    $app['twig']->enableDebug();
}

// swiftmailer
$app->register(new Silex\Provider\SwiftmailerServiceProvider(), array(
    'swiftmailer.options'   => require_once __DIR__ . '/config/mailer.php',
));

unset($config);
require_once __DIR__ . '/startup.php';

return $app;
