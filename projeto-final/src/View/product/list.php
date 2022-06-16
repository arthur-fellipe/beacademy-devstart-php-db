<h1>Listar Produtos</h1>

<table class="table table-hover table-striped">
    <thead class="table-dark">
        <tr>
                <th>#ID</th>
                <th>Nome</th>
                <th>Descrição</th>
                <th>Imagem</th>
                <th>Price</th>
                <th>Quantidade</th>
                <th>Data de cadastro</th>
                <th>Ações</th>
        </tr>
    </thead>
    <tbody>
        <?php
            while ($product = $data->fetch(\PDO::FETCH_ASSOC)) {
                extract($product);
                
                echo '<tr>';
                    echo "<td>{$id}</td>";
                    echo "<td>{$name}</td>";
                    echo "<td>{$description}</td>";
                    echo "<td> <img width='75px' height='100px' src='{$photo}'> </td>";
                    echo "<td> R$ {$price}</td>";
                    echo "<td>{$quantity}</td>";
                    echo "<td>{$created_at}</td>";
                    echo "<td>
                        <a href='/product/edit?id=$id' class='btn btn-warning btn-sm'>Editar</a>
                        <a href='/product/remove?id=$id' class='btn btn-danger btn-sm'>Excluir</a>
                    </td>";
                echo '</tr>';
            }
        ?>
    </tbody>
</table>