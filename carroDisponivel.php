<?php
include 'functions.php';
$pdo = pdo_connect_pgsql();
$page = isset($_GET['page']) && is_numeric($_GET['page']) ? (int)$_GET['page'] : 1;
$records_per_page = 10;

$stmt = $pdo->prepare("SELECT * FROM carro WHERE disponibilidade = 'Disponível' ORDER BY id_carro OFFSET :offset LIMIT :limit");
$stmt->bindValue(':offset', ($page - 1) * $records_per_page, PDO::PARAM_INT);
$stmt->bindValue(':limit', $records_per_page, PDO::PARAM_INT);
$stmt->execute();
$contacts = $stmt->fetchAll(PDO::FETCH_ASSOC);

$num_contacts =  $pdo->query('SELECT COUNT(*) FROM carro WHERE disponibilidade = \'Disponível\'')->fetchColumn();
?>

<?=template_header('Visualizar Carros')?>
<link rel="stylesheet" href="css/style.css">

<div class="content read">
    <table>
        <thead>
            <tr>
                <td>Placa</td>
                <td>Tipo</td>
                <td>Disponibilidade</td>
                <td>Ano</td>
                <td>Modelo</td>
                <td>Id Carro</td>
                <td></td>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($contacts as $contact): ?>
                <tr>
                    <td><?=$contact['placa']?></td>
                    <td><?=$contact['tipo']?></td>
                    <td><?=$contact['disponibilidade']?></td>
                    <td><?=$contact['ano']?></td>
                    <td><?=$contact['modelo']?></td>
                    <td><?=$contact['id_carro']?></td>
                    <td class="actions">
          
<a href="reserva.php?id_carro=<?=$contact['id_carro']?>" class="edit"><i class="fas fa-shopping-cart fa-xs"></i></a>

                    </td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
    <div class="pagination">
        <?php if ($page > 1): ?>
        <a href="carroDisponivel.php?page=<?=$page-1?>"><i class="fas fa-angle-double-left fa-sm"></i></a>
        <?php endif; ?>
        <?php if ($page*$records_per_page < $num_contacts): ?>
        <a href="carroDisponivel.php?page=<?=$page+1?>"><i class="fas fa-angle-double-right fa-sm"></i></a>
        <?php endif; ?>
    </div>
</div>

<?=template_footer()?>
