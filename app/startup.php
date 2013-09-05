<?php

use Silex\Application;

use SilexCMS\Set\LocalizationSet,
    SilexCMS\Set\DataSet,
    SilexCMS\Page\StaticPage,
    SilexCMS\Page\DynamicPage,
    Application\Controller\Contact;

/**
 * LocalizationsSets
 */
$app->register(new LocalizationSet('features_training', 'features_training', 'key'));
$app->register(new LocalizationSet('features_meeting', 'features_meeting', 'key'));
$app->register(new LocalizationSet('features_event', 'features_event', 'key'));
$app->register(new LocalizationSet('homepage', 'homepage', 'key'));

/**
 * DataSets
 */
$app->register(new DataSet('cases', 'cases'));
$app->register(new DataSet('history', 'history'));
$app->register(new DataSet('team', 'team'));
$app->register(new DataSet('press', 'press'));

// Pages
$app->register(new StaticPage('index', '/', 'pages/index.html.twig'));

// features
$app->register(new StaticPage('classes-trainings', '/for-classes-and-trainings', 'pages/classes-trainings.html.twig'));
$app->register(new StaticPage('meetings-confcalls', '/for-meetings-and-conf-calls', 'pages/meetings-confcalls.html.twig'));
$app->register(new StaticPage('events-seminaries', '/for-events-and-seminaries', 'pages/events-seminaries.html.twig'));

// case studies
$app->register(new StaticPage('case-studies', '/case-studies', 'pages/casestudies.html.twig'));
$app->register(new DynamicPage('case-detail', '/case-studies/{slug}', 'pages/case-detail.html.twig', 'cases'));

// create your freemium now
$app->register(new StaticPage('plans', '/plans', 'pages/plans.html.twig'));

// about pages
$app->register(new StaticPage('about', '/about', 'pages/about.html.twig'));
$app->register(new StaticPage('about-team', '/about/team', 'pages/about-team.html.twig'));
$app->register(new StaticPage('about-press', '/about/press', 'pages/about-press.html.twig'));
$app->register(new StaticPage('resources', '/about/resources', 'pages/resources.html.twig'));
$app->register(new StaticPage('jobs', '/jobs', 'pages/jobs.html.twig'));

// contact page
$app->register(new StaticPage('contact', '/contact', 'pages/contact.html.twig'));
$app->register(new Contact());