<?php

use Silex\Application;

use SilexCMS\Set\DataSet,
    SilexCMS\Page\StaticPage;

// DataSets
$app->register(new DataSet('main', 'main'));

// Pages
$app->register(new StaticPage('index', '/', 'pages/index.html.twig'));