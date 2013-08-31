<?php

use Silex\Application;

use SilexCMS\Set\KeyValueSet,
    SilexCMS\Page\StaticPage;

// DataSets for translations
$app->register(new KeyValueSet('features', 'features', 'key'));

// Pages
$app->register(new StaticPage('index', '/', 'pages/index.html.twig'));

$app->register(new StaticPage('classes-trainings', '/for-classes-and-trainings', 'pages/classes-trainings.html.twig'));
$app->register(new StaticPage('meetings-confcalls', '/for-meetings-and-conf-calls', 'pages/meetings-confcalls.html.twig'));
$app->register(new StaticPage('events-seminaries', '/for-events-and-seminaries', 'pages/events-seminaries.html.twig'));

$app->register(new StaticPage('case-studies', '/case-studies', 'pages/casestudies.html.twig'));

$app->register(new StaticPage('case-la-poste', '/case-studies/la-poste', 'pages/case-la-poste.html.twig'));
$app->register(new StaticPage('case-sncf', '/case-studies/sncf', 'pages/case-sncf.html.twig'));
$app->register(new StaticPage('case-auchan', '/case-studies/auchan', 'pages/case-auchan.html.twig'));
$app->register(new StaticPage('case-hec', '/case-studies/hec', 'pages/case-hec.html.twig'));

$app->register(new StaticPage('plans', '/plans', 'pages/plans.html.twig'));

$app->register(new StaticPage('about', '/about', 'pages/about.html.twig'));
$app->register(new StaticPage('about-team', '/about-team', 'pages/about-team.html.twig'));
$app->register(new StaticPage('about-press', '/about-press', 'pages/about-press.html.twig'));

$app->register(new StaticPage('resources', '/about/resources', 'pages/resources.html.twig'));
$app->register(new StaticPage('jobs', '/jobs', 'pages/jobs.html.twig'));
$app->register(new StaticPage('contact', '/contact', 'pages/contact.html.twig'));