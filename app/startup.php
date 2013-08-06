<?php

use Silex\Application;

use SilexCMS\Set\DataSet,
    SilexCMS\Page\StaticPage,
    SilexCMS\Page\DynamicPage;

// DataSets
$app->register(new DataSet('main', 'main'));

// Pages
$app->register(new StaticPage('index', '/', 'pages/index.html.twig'));
$app->register(new StaticPage('training', '/events', 'pages/events.html.twig'));
$app->register(new StaticPage('training', '/meetings', 'pages/meetings.html.twig'));
$app->register(new StaticPage('training', '/trainings-classes', 'pages/trainings.html.twig'));