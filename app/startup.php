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

$app->register(new StaticPage('case-la-poste', '/case-studies/la-poste', 'pages/case-la-poste.html.twig'));
$app->register(new StaticPage('case-sncf', '/case-studies/sncf', 'pages/case-sncf.html.twig'));
$app->register(new StaticPage('case-auchan', '/case-studies/auchan', 'pages/case-auchan.html.twig'));
$app->register(new StaticPage('case-hec', '/case-studies/hec', 'pages/case-hec.html.twig'));

$app->register(new StaticPage('plans', '/plans', 'pages/plans.html.twig'));
$app->register(new StaticPage('about', '/about', 'pages/about.html.twig'));

$app->register(new StaticPage('resources', '/about/resources', 'pages/resources.html.twig'));
$app->register(new StaticPage('jobs', '/jobs', 'pages/jobs.html.twig'));
$app->register(new StaticPage('contact', '/contact', 'pages/contact.html.twig'));