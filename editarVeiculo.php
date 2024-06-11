<?php
include 'functions.php';
$pdo = pdo_connect_pgsql();
$msg = '';

if (isset($_GET['id_carro'])) {
    if (!empty($_POST)) {
        $placa = isset($_POST['placa']) ? $_POST['placa'] : '';
        $tipo = isset($_POST['tipo']) ? $_POST['tipo'] : '';
        $disponibilidade = isset($_POST['disponibilidade']) ? $_POST['disponibilidade'] : '';
        $ano = isset($_POST['ano']) ? $_POST['ano'] : '';
        $modelo = isset($_POST['modelo']) ? $_POST['modelo'] : '';
        $valor = isset($_POST['valor']) ? $_POST['valor'] : '';

        $stmt = $pdo->prepare('UPDATE carro SET placa = ?, tipo = ?, disponibilidade = ?, ano = ?, modelo = ?, valor = ? WHERE id_carro = ?');
        $stmt->execute([$placa, $tipo, $disponibilidade, $ano, $modelo, $valor, $_GET['id_carro']]);
        $msg = 'Atualização realizada com sucesso!';
    }

    $stmt = $pdo->prepare('SELECT * FROM carro WHERE id_carro = ?');
    $stmt->execute([$_GET['id_carro']]);
    $carro = $stmt->fetch(PDO::FETCH_ASSOC);
    if (!$carro) {
        exit('Carro não encontrado!');
    }
} else {
    exit('Nenhum carro especificado!');
}
?>

<?=template_header('Atualizar/Alterar carro')?>
<link rel="stylesheet" href="css/style.css">

<div class="content update">
    <a href="indexFuncionario.php"><i class="fas fa-home"></i>Home Funcionario</a>
    <h2>Atualizar carro - <?=$carro['modelo'], ' ', $carro['placa']?></h2>
    <form action="editarVeiculo.php?id_carro=<?=$carro['id_carro']?>" method="post">
        <label for="placa">Placa</label>
        <input type="text" name="placa" placeholder="Sua placa" value="<?=$carro['placa']?>" id="placa">
        <label for="tipo">Tipo</label>
        <input type="text" name="tipo" placeholder="Tipo" value="<?=$carro['tipo']?>" id="tipo">
        <label for="disponibilidade">Disponibilidade</label>
        <input type="text" name="disponibilidade" placeholder="Disponibilidade do veículo" value="<?=$carro['disponibilidade']?>" id="disponibilidade">
        <label for="ano">Ano</label>
        <input type="text" name="ano" placeholder="Ano" value="<?=$carro['ano']?>" id="ano">
        <label for="modelo">Modelo</label>
        <input type="text" name="modelo" placeholder="Modelo" value="<?=$carro['modelo']?>" id="modelo">
        <label for="valor">Valor</label>
        <input type="text" name="valor" placeholder="Valor do carro" value="<?=$carro['valor']?>" id="valor">
        <input type="submit" value="Atualizar">
    </form>
    <?php if ($msg): ?>
    <p><?=$msg?></p>
    <?php endif; ?>
</div>

<?=template_footer()?>
