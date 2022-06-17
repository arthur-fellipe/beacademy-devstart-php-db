<?php

declare (strict_types=1);

namespace App\Controller;

class IndexController extends AbstractController {
    public function indexAction(): void
    {
        parent::render('index/index');
        include dirname(__DIR__).'/View/img/home.svg';
    }

    public function loginAction(): void
    {
        parent::render('index/login');
    }
}