<h1>Listar Categorias</h1>

<div class="mb-3 text-end">
    <a href="/category/new" class="btn btn-outline-primary">Nova Categoria</a>
</div>

<table class="table table-hover table-striped">
    <thead class="table-dark">
        <tr>
                <th>#ID</th>
                <th>Nome</th>
                <th>Descrição</th>
                <th>Ações</th>
        </tr>
    </thead>
    <tbody>
        <?php
            while ($category = $data->fetch(\PDO::FETCH_ASSOC)) {
                extract($category);
                
                echo '<tr>';
                    echo "<td>{$id}</td>";
                    echo "<td>{$name}</td>";
                    echo "<td>{$description}</td>";
                    echo "<td>
                        <a href='/category/edit?id=$id' class='btn btn-outline-warning btn-sm'>Editar</a>
                        <a href='/category/remove?id=$id' class='btn btn-outline-danger btn-sm'>Excluir</a>
                    </td>";
                echo '</tr>';
            }
        ?>
    </tbody>
</table>