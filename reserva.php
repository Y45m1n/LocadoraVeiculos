<?php
include 'functions.php';
$pdo = pdo_connect_pgsql();
$msg = '';

session_start();

// Verificar se o usuário está logado
if (!isset($_SESSION['user_id'])) {
    header('Location: loginCliente.php');
    exit();
    
}

if (isset($_GET['id_carro'])) {
    // Recuperar o ID do carro da URL
    $id_carro = $_GET['id_carro'];

    if (!empty($_POST)) {
        // Criar uma nova locação
        $data_devolucao = isset($_POST['data_devolucao']) ? $_POST['data_devolucao'] : '';
        $data_locacao = isset($_POST['data_locacao']) ? $_POST['data_locacao'] : '';
        $valor_total = isset($_POST['valor_total']) ? $_POST['valor_total'] : '';

        // Obter o ID do cliente da sessão
        $id = $_SESSION['user_id'];

        $stmt = $pdo->prepare('INSERT INTO locacao (data_devolucao, data_locacao, valor_total, id_carro, id) VALUES (?,?,?,?,?)');
        if ($stmt->execute([$data_devolucao, $data_locacao, $valor_total, $id_carro, $id])) {
            $msg = 'Locação realizada com sucesso!';
          
        } else {
            $msg = 'Erro ao realizar locação. Por favor, tente novamente.';
        }
    }
} else {
    $msg = 'Erro: ID do carro não foi informado.';
}
?>

<?=template_header('Realizar Reserva')?>
<link rel="stylesheet" href="css/style.css">

<div class="content update">
    <h2>Realizar Reserva</h2>
    <form action="reserva.php<?= isset($_GET['id_carro']) ? '?id_carro=' . $_GET['id_carro'] : '' ?>" method="post">
    <label for="data_devolucao">Data da devolução</label>
    <input type="date" name="data_devolucao" value="<?=date('Y-m-d');?>" id="data_devolucao">
    <label for="data_locacao">Data da locação</label>
    <input type="date" name="data_locacao" value="<?=date('Y-m-d');?>" id="data_locacao">
    <label for="valor_total">Valor total</label>
    <input type="text" name="valor_total" placeholder="Valor total da locação" id="valor_total">

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
