<?php

use Symfony\Component\Yaml\Yaml;
use Symfony\Component\HttpFoundation\Request;

require_once __DIR__ . '/../vendor/autoload.php';

// fetch global config
$config = require_once __DIR__ . '/config/config.php';
$locale = isset($locale) ? $locale : $config['default.locale'];

// fetch databases config
$dbOptions = require_once __DIR__ . '/config/database.php';
$localizedDbOptions = $dbOptions[$locale];
$localizedDbOptions['charset'] = 'UTF8';

// instanciate our SilexCMS
$app = new SilexCMS\Application(array(
    'locale_fallback'       => $config['default.locale'],
    'locale'                => $locale,
    'twig.path'             => __DIR__ . '/../src/Application/Resources/views',
    'twig.options'          => array(
        'debug' => $config['debug'],
        'cache' => __DIR__ . '/cache',
    ),
    'db.options'            => $localizedDbOptions,
    'silexcms.cache'        => array(
        'active' => !$config['debug'],
        'type'   => isset($config['cache']) ? $config['cache'] : 'array',
    ),
    'silexcms.security'     => require_once __DIR__ . '/config/users.php',
));
$app['silexcms_locale'] = $locale;
$app['silexcms_full_db_options'] = $dbOptions;

// phone numbers
$app['phone.numbers'] = array(
    'en'    =>  '+442036089022',
    'fr'    =>  '0142615947',
    'de'    =>  '+498007234918',
    'es'    =>  '+34931807007',
    'ch'    =>  '+41435083520',
    'be'    =>  '+3225881720',
);

$app['country'] = isset($country) ? $country : 'fr';
$app['phone_number'] = $app['phone.numbers'][$app['country']];

// ** load messages **
$messages = $app['db']->executeQuery('SELECT * FROM messages')->fetchAll();

if (false === $messages) {
    $messages = array();
}

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

if ($config['debug']) {
    $app['debug'] = true;
    $app['twig']->addExtension(new Twig_Extensions_Extension_Debug());
    $app['twig']->enableDebug();
}

$app->register(new Silex\Provider\SwiftmailerServiceProvider(), array(
    'swiftmailer.options'   => require_once __DIR__ . '/config/mailer.php',
));

require_once __DIR__ . '/startup.php';

return $app;
