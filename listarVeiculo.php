<?php
include 'functions.php';
// Conectar ao banco de dados PostgreSQL
$pdo = pdo_connect_pgsql();
// Obter a página via solicitação GET (parâmetro URL: page), se não existir, defina a página como 1 por padrão
$page = isset($_GET['page']) && is_numeric($_GET['page']) ? (int)$_GET['page'] : 1;
// Número de registros para mostrar em cada página
$records_per_page = 10;

// Preparar a instrução SQL e obter registros da tabela contacts, LIMIT irá determinar a página
$stmt = $pdo->prepare('SELECT * FROM carro ORDER BY id_carro OFFSET :offset LIMIT :limit');
$stmt->bindValue(':offset', ($page - 1) * $records_per_page, PDO::PARAM_INT);
$stmt->bindValue(':limit', $records_per_page, PDO::PARAM_INT);
$stmt->execute();
// Buscar os registros para exibi-los em nosso modelo.
$contacts = $stmt->fetchAll(PDO::FETCH_ASSOC);

// Obter o número total de carro, isso é para determinar se deve haver um botão de próxima e anterior
$num_contacts = $pdo->query('SELECT COUNT(*) FROM carro')->fetchColumn();
?>


<?=template_header('Visualizar Carros')?>
<link rel="stylesheet" href="css/style.css">


<div class="content read">
<a href="indexFuncionario.php"><i class="fas fa-home"></i>Home Funcionario</a>
	<table>
        <thead>
            <tr>
                <td>Placa</td>
                <td>Tipo</td>
                <td>Disponibilidade</td>
                <td>Ano</td>
                <td>Modelo</td>
                <td>Valor</td>

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
                <td><?=$contact['valor']?></td>
                <td class="actions">
                    <a href="editarVeiculo.php?id_carro=<?=$contact['id_carro']?>" class="edit"><i class="fas fa-pen fa-xs"></i></a>
                 <a href="reserva.php?id_carro=<?=$contact['id_carro']?>" class="edit"><i class="fas fa-shopping-cart fa-xs"></i></a>
                 <a href="deleteVeiculo.php?id_carro=<?=$contact['id_carro']?>" class="edit"><i class="fas fa-trash fa-xs"></i></a>
                </td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
	<div class="pagination">
		<?php if ($page > 1): ?>
		<a href="listarVeiculo.php?page=<?=$page-1?>"><i class="fas fa-angle-double-left fa-sm"></i></a>
		<?php endif; ?>
		<?php if ($page*$records_per_page < $num_contacts): ?>
		<a href="listarVeiculo.php?page=<?=$page+1?>"><i class="fas fa-angle-double-right fa-sm"></i></a>
		<?php endif; ?>
	</div>
</div>

<?=template_footer()?>