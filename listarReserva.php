<?php
include 'functions.php';

// Conectar ao banco de dados PostgreSQL
$pdo = pdo_connect_pgsql();

// Obter a página via solicitação GET (parâmetro URL: page), se não existir, defina a página como 1 por padrão
$page = isset($_GET['page']) && is_numeric($_GET['page']) ? (int)$_GET['page'] : 1;

// Número de registros para mostrar em cada página
$records_per_page = 10;

// Preparar a instrução SQL para obter as locações da tabela Locacao incluindo o e-mail
$stmt = $pdo->prepare('SELECT locacao.*, carro.placa, carro.modelo, locacao.email AS email_cliente
                        FROM locacao
                        INNER JOIN carro ON locacao.id_carro = carro.id_carro
                        ORDER BY locacao.id_locacao OFFSET :offset LIMIT :limit');
$stmt->bindValue(':offset', ($page - 1) * $records_per_page, PDO::PARAM_INT);
$stmt->bindValue(':limit', $records_per_page, PDO::PARAM_INT);
$stmt->execute();

// Buscar os registros para exibi-los em nosso modelo.
$locacoes = $stmt->fetchAll(PDO::FETCH_ASSOC);

// Obter o número total de locações
$num_locacoes = $pdo->query('SELECT COUNT(*) FROM locacao')->fetchColumn();
?>

<?=template_header('Visualizar Locações')?>
<link rel="stylesheet" href="css/style.css">

<div class="content read">
    <a href="indexFuncionario.php"><i class="fas fa-home"></i>Home Funcionario</a>
    <table>
        <thead>
            <tr>
                <td>Data Devolução</td>
                <td>Data Locação</td>
                <td>Valor Total</td>
                <td>Placa Carro</td>
                <td>Modelo Carro</td>
                <td>Email Cliente</td>
                <td></td>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($locacoes as $locacao): ?>
                <tr>
                    <td><?=$locacao['data_devolucao']?></td>
                    <td><?=$locacao['data_locacao']?></td>
                    <td><?=$locacao['valor_total']?></td>
                    <td><?=$locacao['placa']?></td>
                    <td><?=$locacao['modelo']?></td>
                    <td><?=$locacao['email_cliente']?></td>
                    <td class="actions">
                        <!-- <a href="editarReserva.php?id_locacao=<?=$locacao['id_locacao']?>" class="edit"><i class="fas fa-pen fa-xs"></i></a> -->
                    </td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
    <div class="pagination">
        <?php if ($page > 1): ?>
            <a href="listarReserva.php?page=<?=$page-1?>"><i class="fas fa-angle-double-left fa-sm"></i></a>
        <?php endif; ?>
        <?php if ($page * $records_per_page < $num_locacoes): ?>
            <a href="listarReserva.php?page=<?=$page+1?>"><i class="fas fa-angle-double-right fa-sm"></i></a>
        <?php endif; ?>
    </div>
</div>

<?=template_footer()?>
