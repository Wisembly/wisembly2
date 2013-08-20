<?php

use Silex\Application;

use SilexCMS\Set\DataSet,
    SilexCMS\Page\StaticPage;

// DataSets
$app->register(new DataSet('main', 'main'));

// Pages
$app->register(new StaticPage('index', '/', 'pages/index.html.twig'));
$app->register(new StaticPage('trainings', '/for-classes-and-trainings', 'pages/trainings.html.twig'));
$app->register(new StaticPage('meetings', '/for-meetings-and-confcalls', 'pages/meetings.html.twig'));
$app->register(new StaticPage('events', '/for-events-and-seminaries', 'pages/events.html.twig'));
$app->register(new StaticPage('case-studies', '/case-studies', 'pages/casestudies.html.twig'));
$app->register(new StaticPage('plans', '/plans', 'pages/plans.html.twig'));