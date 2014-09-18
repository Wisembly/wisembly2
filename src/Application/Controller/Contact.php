<?php

namespace Application\Controller;

use Silex\Application;
use Silex\ServiceProviderInterface;
use Symfony\Component\HttpFoundation\Request;

class Contact implements ServiceProviderInterface
{
    public function boot(Application $app) {}

    public function register(Application $app)
    {
        $app->post('/contact/send', function (Application $app, Request $request) {
            $fields = array('contact_fullname', 'contact_email', 'contact_company', 'contact_phone', 'contact_reason', 'contact_message');

            foreach ($fields as $field) {
                $userAnswer = $request->request->get($field);

                if (empty($userAnswer)) {
                    return $app->redirect($app['url_generator']->generate('contact', array('error' => "{$field} is required")));
                }
            }

            $body = $app['translator']->trans('fullname') . ' : ' . $request->request->get('contact_fullname') . "\t\n";
            $body .= $app['translator']->trans('email') . ' : ' . $request->request->get('contact_email') . "\t\n";
            $body .= $app['translator']->trans('company') . ' : ' . $request->request->get('contact_company') . "\t\n";
            $body .= $app['translator']->trans('phone_number') . ' : ' . $request->request->get('contact_phone') . "\t\n";
            $body .= $app['translator']->trans('reason') . ' : ' . $request->request->get('contact_reason') . "\t\n";
            $body .= $app['translator']->trans('your_message') . ' : ' . $request->request->get('contact_message') . "\t\n";

            $message = \Swift_Message::newInstance()
                    ->setSubject('[Contact Wisembly2] De la grosse caillasse en perspective!')
                    ->setFrom(array($app['mailfrom']))
                    ->setTo(array($app['mailto']))
                    ->setBody($body);

            $result = $app['mailer']->send($message);

            if ($result) {
                return $app->redirect($app['url_generator']->generate('contact', array('success' => 'email sent')));
            }

            return $app->redirect($app['url_generator']->generate('contact', array('error' => "an error occured while trying to send email")));
        })->bind('contact_send_mail');
    }
}
