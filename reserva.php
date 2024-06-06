<?php
include 'functions.php';
$pdo = pdo_connect_pgsql();
$msg = '';

// Guardar o ID do carro selecionado
if (isset($_GET['id_carro'])) {
    $id_carro = $_GET['id_carro'];
} else {
    $msg = 'Erro: ID do carro não foi informado.';
}

if (!empty($_POST)) {
    // Criar uma nova locação
    $id_locacao = isset($_POST['id_locacao']) ? $_POST['id_locacao'] : NULL;
    $data_devolucao = isset($_POST['data_devolucao']) ? $_POST['data_devolucao'] : '';
    $data_locacao = isset($_POST['data_locacao']) ? $_POST['data_locacao'] : '';
    $valor_total = isset($_POST['valor_total']) ? $_POST['valor_total'] : '';
    $id_cliente = isset($_POST['id_cliente']) ? $_POST['id_cliente'] : NULL;
    $id_carro = isset($_POST['id_carro']) ? $_POST['id_carro'] : NULL;

    $stmt = $pdo->prepare('INSERT INTO locacao (id_locacao, data_devolucao, data_locacao, valor_total, id_carro, id_cliente) VALUES (?,?,?,?,?,?)');
    if ($stmt->execute([$id_locacao, $data_devolucao, $data_locacao, $valor_total, $id_carro, $id_cliente])) {
        $msg = 'Locação realizada com sucesso!';
    } else {
        $msg = 'Erro ao realizar locação. Por favor, tente novamente.';
    }
}
?>

<?=template_header('Realizar Reserva')?>
<link rel="stylesheet" href="css/style.css">

<div class="content update">
    <h2>Realizar Reserva</h2>
    <form action="reserva.php?id_carro=<?php echo $id_carro; ?>" method="post">
        <input type="hidden" name="id_carro" value="<?php echo $id_carro; ?>">
        <label for="id_locacao">Id da Locação</label>
        <input type="text" name="id_locacao" placeholder="Seu id_locacao" id="id_locacao">
        <label for="data_devolucao">Data da devolução</label>
        <input type="date" name="data_devolucao" value="<?php echo date('Y-m-d');?>" id="data_devolucao">
        <label for="data_locacao">Data da locação</label>
        <input type="date" name="data_locacao" value="<?php echo date('Y-m-d');?>" id="data_locacao">
        <label for="valor_total">Valor total</label>
        <input type="text" name="valor_total" placeholder="Seu valor_total" id="valor_total">
        <label for="id_cliente">ID Cliente</label>
        <input type="text" name="id_cliente" placeholder="ID do Cliente" id="id_cliente">
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
