<?php

use Silex\Application;

use SilexCMS\Set\LocalizationSet,
    SilexCMS\Set\DataSet,
    SilexCMS\Set\KeyValueSet,
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
$app->register(new KeyValueSet('meta', 'meta', 'page'));

$app->register(new DataSet('client', 'client'));
$app->register(new DataSet('client_category', 'client_category'));
$app->register(new DataSet('featured_client', 'client', array('featured' => 1)));

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

// clients page
$app->register(new StaticPage('clients', '/our-clients', 'pages/clients.html.twig'));

// about pages
$app->register(new StaticPage('about-story', '/about/story', 'pages/about.html.twig'));
$app->register(new StaticPage('about-team', '/about', 'pages/about-team.html.twig'));
$app->register(new StaticPage('about-press', '/about/press', 'pages/about-press.html.twig'));
$app->register(new StaticPage('resources', '/about/resources', 'pages/resources.html.twig'));
$app->register(new StaticPage('jobs', '/jobs', 'pages/jobs.html.twig'));

// Adwords
$app->register(new StaticPage('oubliez-les-boitiers-de-vote', '/campaign/oubliez-les-boitiers-de-vote', 'pages/adwords/oubliez-les-boitiers-de-vote.html.twig'));
$app->register(new StaticPage('laissez-sexprimer-votre-public', '/campaign/laissez-sexprimer-votre-public', 'pages/adwords/laissez-sexprimer-votre-public.html.twig'));
$app->register(new StaticPage('vos-evaluations-sont-corrigees-immediatement', '/campaign/vos-evaluations-sont-corrigees-immediatement', 'pages/adwords/vos-evaluations-sont-corrigees-immediatement.html.twig'));
$app->register(new StaticPage('assurez-vous-que-tout-le-monde-suit', '/campaign/assurez-vous-que-tout-le-monde-suit', 'pages/adwords/assurez-vous-que-tout-le-monde-suit.html.twig'));
$app->register(new StaticPage('prenez-de-vraies-decisions-durant-vos-reunions', '/campaign/prenez-de-vraies-decisions-durant-vos-reunions', 'pages/adwords/prenez-de-vraies-decisions-durant-vos-reunions.html.twig'));

// contact page
$app->register(new StaticPage('contact', '/contact', 'pages/contact.html.twig'));
$app->register(new Contact());
