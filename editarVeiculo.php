<?php
include 'functions.php';
$pdo = pdo_connect_pgsql();
$msg = '';
// Verifica se o ID do contato existe, por exemplo, update.php?id=1 irá obter o contato com o id 1
if (isset($_GET['id_carro'])) {
    if (!empty($_POST)) {
        // Esta parte é semelhante ao create.php, mas aqui estamos atualizando um registro e não inserindo
     
        $placa = isset($_POST['placa']) ? $_POST['placa'] : '';
        $tipo = isset($_POST['tipo']) ? $_POST['tipo'] : '';
        $disponibilidade = isset($_POST['disponibilidade']) ? $_POST['disponibilidade'] : '';
        $ano = isset($_POST['ano']) ? $_POST['ano'] : '';
        $modelo = isset($_POST['modelo']) ? $_POST['modelo'] :'';
        $id_carro = isset($_POST['id_carro']) ? $_POST['id_carro'] : NULL;
        // Atualiza o registro
        $stmt = $pdo->prepare('UPDATE carro SET placa = ?, tipo = ?, disponibilidade = ?, ano = ?, modelo = ?, id_carro = ? WHERE id_carro = ?');
        $stmt->execute([ $placa, $tipo, $disponibilidade, $ano, $modelo,$id_carro, $_GET['id_carro']]);
        $msg = 'Atualização Realizada com Sucesso!';
    }
    // Obter o contato da tabela carros
    $stmt = $pdo->prepare('SELECT * FROM carro WHERE id_carro = ?');
    $stmt->execute([$_GET['id_carro']]);
    $carro = $stmt->fetch(PDO::FETCH_ASSOC);
    if (!$carro) {
        exit('Carro Não Localizado!');
    }
} else {
    exit('Nenhum carro Especificado!');
}
?>


<?=template_header('Atualizar/Alterar carro')?>
<link rel="stylesheet" href="css/style.css">

<div class="content update">
<a href="indexFuncionario.php"><i class="fas fa-home"></i>Home Funcionario</a>
    <h2>Atualizar carro ---- <?=$carro['modelo'],' ', $carro['placa']?></h2>
    <form action="editarVeiculo.php?id_carro=<?=$carro['id_carro']?>" method="post">
    <label for="id_carro">ID</label>
        <label for="placa">Placa</label>
        <input type="text" name="id_carro" placeholder="" value="<?=$carro['id_carro']?>" id="id_carro">
        <input type="text" name="placa" placeholder="Sua placa" value="<?=$carro['placa']?>" id="placa">
        <label for="tipo">tipo</label>
        <label for="disponibilidade">disponibilidade</label>
        <input type="text" name="tipo" placeholder="Tipo" value="<?=$carro['tipo']?>" id="tipo">
        <input type="text" name="disponibilidade" placeholder="Disponibilidade do veiculo" value="<?=$carro['disponibilidade']?>" id="disponibilidade">
        <label for="ano">ano</label>
        <label for="modelo">Modelo</label>
        <input type="text" name="ano" placeholder="Ano" value="<?=$carro['ano']?>" id="ano">
        <input type="text" name="modelo" placeholder="Modelo" value="<?=$carro['modelo']?>" id="modelo">
      
        <input type="submit" value="Update">
    </form>
    <?php if ($msg): ?>
    <p><?=$msg?></p>
    <?php endif; ?>
</div>

<?=template_footer()?>