<?php
include 'functions.php';
$pdo = pdo_connect_pgsql();
$msg = '';

if (!empty($_POST)) {
    $placa = isset($_POST['placa']) ? $_POST['placa'] : '';
    $tipo = isset($_POST['tipo']) ? $_POST['tipo'] : '';
    $disponibilidade = isset($_POST['disponibilidade']) ? $_POST['disponibilidade'] : '';
    $ano = isset($_POST['ano']) ? $_POST['ano'] : '';
    $modelo = isset($_POST['modelo']) ? $_POST['modelo'] : '';
    $id_carro = isset($_POST['id_carro']) ? $_POST['id_carro'] : NULL;
    if (!empty($placa) && !empty($tipo) && !empty($disponibilidade) && !empty($ano) && !empty($modelo) && !empty($id_carro)) {
        $stmt = $pdo->prepare('INSERT INTO carro (placa, tipo, disponibilidade, ano, modelo, id_carro) VALUES (?, ?, ?, ?, ?, ?)');
        if ($stmt->execute([$placa, $tipo, $disponibilidade, $ano, $modelo, $id_carro])) {
            $msg = 'Carro cadastrado com sucesso!';
        } else {
            $msg = 'Erro ao cadastrar carro. Por favor, tente novamente.';
        }
    } else {
        $msg = 'Por favor, preencha todos os campos.';
    }
}
?>

<?=template_header('Cadastro de carros')?>
<link rel="stylesheet" href="css/style.css">


<div class="content update">
<a href="indexFuncionario.php"><i class="fas fa-home"></i>Home Funcionario</a>
    <h2>Registrar Carro</h2>
 
    <form action="createVeiculo.php" method="post">
        <label for="placa">Placa</label>
        <input type="text" name="placa" placeholder="Sua placa" id="placa">
        <label for="tipo">Tipo</label>
        <input type="text" name="tipo" placeholder="Tipo" id="tipo">
        <label for="disponibilidade">Disponibilidade</label>
        <input type="text" name="disponibilidade" placeholder="Disponibilidade do carro" id="disponibilidade">
        <label for="ano">Ano</label>
        <input type="text" name="ano" placeholder="Ano do carro" id="ano">
        <label for="modelo">Modelo</label>
        <input type="text" name="modelo" placeholder="Modelo do carro" id="modelo">
        <label for="id_carro">ID carro</label>
        <input type="text" name="id_carro" placeholder="ID do carro" id="id_carro">
        <br>
        <div class="center">
            <input type="submit" value="Cadastrar">
        </div> 
    </form>
    <?php if ($msg): ?>
<p><?=$msg?></p>
<?php endif; ?>
</div>
<?=template_footer()?> 
