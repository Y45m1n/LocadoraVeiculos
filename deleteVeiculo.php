<?php
include 'functions.php';
$pdo = pdo_connect_pgsql();
$msg = '';
// Verifica se o ID do contato existe
if (isset($_GET['id_carro'])) {
    // Seleciona o registro que será deletado
    $stmt = $pdo->prepare('SELECT * FROM carro WHERE id_carro = ?');
    $stmt->execute([$_GET['id_carro']]);
    $contact = $stmt->fetch(PDO::FETCH_ASSOC);
    if (!$contact) {
        exit('Carro Não Localizado!');
    }
    // Certifique-se de que o usuário confirma antes da exclusão
    if (isset($_GET['confirm'])) {
        if ($_GET['confirm'] == 'yes') {
            // O usuário clicou no botão "Sim", deleta o registro
            $stmt = $pdo->prepare('DELETE FROM carro WHERE id_carro = ?');
            $stmt->execute([$_GET['id_carro']]);
            $msg = 'Veiculo Apagado com Sucesso!';
        } else {
            // O usuário clicou no botão "Não", redireciona de volta para a página de leitura
            header('Location: listarVeiculo.php');
            exit;
        }
    }
} else {
    exit('Nenhum veiculo especificado!');
}
?>


<?=template_header('Apagar Veiculo')?>
<link rel="stylesheet" href="css/style.css">

<div class="content delete">
<a href="indexFuncionario.php"><i class="fas fa-home"></i>Home Funcionario</a>
    <h2>Apagar Veiculo ----  <?=$contact['placa']?></h2>
    <?php if ($msg): ?>
    <p><?=$msg?></p>
    <?php else: ?>
    <p>Você tem certeza que deseja apagar o veiculo #<?=$contact['placa']?>?</p>
    <div class="yesno">
        <a href="deleteVeiculo.php?id_carro=<?=$contact['id_carro']?>&confirm=yes">Sim</a>
        <a href="deleteVeiculo.php?id_carro=<?=$contact['id_carro']?>&confirm=no">Não</a>
    </div>
    <?php endif; ?>
</div>

<?=template_footer()?>