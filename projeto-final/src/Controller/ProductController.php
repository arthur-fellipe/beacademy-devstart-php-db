<?php

declare (strict_types=1);

namespace App\Controller;

use App\Connection\Connection;

class ProductController extends AbstractController {
    public function listAction(): void 
    {
        $con = Connection::getConnection();

        $result = $con->prepare('SELECT * FROM tb_product;');
        $result->execute();
        
        parent::render('product/list', $result);
    }

    public function addAction(): void 
    {
        $con = Connection::getConnection();

        if ($_POST) {
            $name = $_POST['name'];
            $description = $_POST['description'];
            $photo = $_POST['photo'];
            $price = $_POST['price'];
            $quantity = $_POST['quantity'];
            $categoryId = $_POST['category'];
            $created_at = date('Y-m-d H:i:s');

            $query = "
            INSERT INTO tb_product 
            (name, description, photo, price, quantity, category_id, created_at) 
            VALUES 
            ('{$name}', '{$description}', '{$photo}', '{$price}', '{$quantity}', '{$categoryId}', '{$created_at}');
            ";

            $result = $con->prepare($query);
            $result->execute();

            echo 'Pronto, produto cadastrado!';
        }

        $result = $con->prepare('SELECT * FROM tb_category;');
        $result->execute();
        
        parent::render('product/add', $result);
    }

    public function removeAction(): void
    {
        $con = Connection::getConnection();

        $id = $_GET['id'];

        $query = "DELETE FROM tb_product WHERE id='{$id}'";

        $result = $con->prepare($query);
        $result->execute();

        parent::renderMessage('Pronto, produto excluído!');
    }
    
    public function editAction(): void 
    {
        $id = $_GET['id'];
        
        $con = Connection::getConnection();

        if ($_POST) {
            $name = $_POST['name'];
            $description = $_POST['description'];
            $photo = $_POST['photo'];
            $price = $_POST['price'];
            $quantity = $_POST['quantity'];

            $queryUpdate = "UPDATE tb_product SET name='{$name}', description='{$description}', photo='{$photo}', price='{$price}', quantity='{$quantity}' WHERE id='{$id}'";

            $result = $con->prepare($queryUpdate);
            $result->execute();

            echo 'Pronto, produto editado!';
        }

        $product = $con->prepare("SELECT * FROM tb_product WHERE id='{$id}'");
        $product->execute();
        
        parent::render('product/edit', [
            'product' => $product->fetch(\PDO::FETCH_ASSOC),
        ]);
    }
}