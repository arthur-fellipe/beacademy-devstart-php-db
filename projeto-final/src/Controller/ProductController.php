<?php

declare (strict_types=1);

namespace App\Controller;

use App\Connection\Connection;
use Dompdf\Dompdf;

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

            parent::renderMessageProduct('Pronto, produto cadastrado!');
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

        parent::renderMessageProduct('Pronto, produto excluído!');
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

            parent::renderMessageProduct('Pronto, produto editado!');
        }

        $product = $con->prepare("SELECT * FROM tb_product WHERE id='{$id}'");
        $product->execute();
        
        parent::render('product/edit', [
            'product' => $product->fetch(\PDO::FETCH_ASSOC),
        ]);
    }

    public function reportAction(): void
    {
        $con = Connection::getConnection();

        $result = $con->prepare('SELECT prod.id, prod.name, prod.quantity, cat.name as category FROM tb_product prod INNER JOIN tb_category cat ON prod.category_id = cat.id');
        $result->execute();
        
        $content = '';

        while ($product = $result->fetch(\PDO::FETCH_ASSOC)) {
            extract($product);

            $content .= "
                <tr>
                    <td>{$id}</td>
                    <td>{$name}</td>
                    <td>{$quantity}</td>
                    <td>{$category}</td>
                </tr>
            ";
        }

        $html = "
            <h1>Relatório de Produtos no estoque</h1>

            <table border='1' width='100%'>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Nome</th>
                        <th>Quantidade</th>
                        <th>Categoria</th>
                    </tr>
                </thead>
                <tbody>
                    {$content}
                </tbody>
            </table>
        ";

        $pdf = new Dompdf();
        $pdf->loadHtml($html);

        $pdf->render();

        $pdf->stream();
    }
}