<?php

declare (strict_types=1);

namespace App\Controller;

class ErrorController extends AbstractController
{
    public function notFoundAction(): void
    {
        parent::render('error/notFound');
        include dirname(__DIR__).'/View/img/404.svg';
    }
}