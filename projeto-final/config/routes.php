<?php

use App\Controller\IndexController;
use App\Controller\ProductController;
use App\Controller\CategoryController;

function createRoute(string $controllerName, string $methodName) {
    return [
        'controller' => $controllerName,
        'method' => $methodName,
    ];
}

$routes = [
    '/' => createRoute(IndexController::class, 'indexAction'),
    '/login' => createRoute(IndexController::class, 'loginAction'),
    '/product' => createRoute(ProductController::class, 'listAction'),
    '/product/new' => createRoute(ProductController::class, 'addAction'),
    '/product/edit' => createRoute(ProductController::class, 'editAction'),
    '/category' => createRoute(CategoryController::class, 'listAction'),
    '/category/new' => createRoute(CategoryController::class, 'addAction'),
    '/category/remove' => createRoute(CategoryController::class, 'removeAction'),
    '/category/edit' => createRoute(CategoryController::class, 'editAction'),
];

return $routes;