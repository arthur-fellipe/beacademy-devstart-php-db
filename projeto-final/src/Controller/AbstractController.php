<?php

declare(strict_types=1);

namespace App\Controller;

abstract class AbstractController
{
    public function render(string $viewName, $data = null): void 
    {
        include dirname(__DIR__)."/View/_partials/head.php";
        include dirname(__DIR__)."/View/{$viewName}.php";
        include dirname(__DIR__)."/View/_partials/footer.php";
    }

    public function renderMessageProduct(string $message): void 
    {
        include dirname(__DIR__)."/View/_partials/head.php";
        include dirname(__DIR__).'/View/_partials/messageProduct.php';
        include dirname(__DIR__)."/View/_partials/footer.php";
    }

    public function renderMessageCategory(string $message): void 
    {
        include dirname(__DIR__)."/View/_partials/head.php";
        include dirname(__DIR__).'/View/_partials/messageCategory.php';
        include dirname(__DIR__)."/View/_partials/footer.php";
    }
}