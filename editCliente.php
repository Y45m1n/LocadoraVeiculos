<?php
include 'functions.php';
$pdo = pdo_connect_pgsql();
$msg = '';
// Verifica se o ID do contato existe, por exemplo, update.php?id=1 irá obter o contato com o id 1
if (isset($_GET['id_cliente'])) {
    if (!empty($_POST)) {
        // Esta parte é semelhante ao create.php, mas aqui estamos atualizando um registro e não inserindo
     
        $sobrenome = isset($_POST['sobrenome']) ? $_POST['sobrenome'] : '';
        $nome = isset($_POST['nome']) ? $_POST['nome'] : '';
        $cidade = isset($_POST['cidade']) ? $_POST['cidade'] : '';
        $estado = isset($_POST['estado']) ? $_POST['estado'] : '';
        $endereco = isset($_POST['endereco']) ? $_POST['endereco'] :'';
        $id_cliente = isset($_POST['id_cliente']) ? $_POST['id_cliente'] : NULL;
        $email = isset($_POST['email']) ? $_POST['email'] :'';
        $celular = isset($_POST['celular']) ? $_POST['celular'] :'';
        // Atualiza o registro
        $stmt = $pdo->prepare('UPDATE cliente SET sobrenome = ?, nome = ?, cidade = ?, estado = ?, endereco = ?, id_cliente = ? ,  email = ?,  celular = ? WHERE id_cliente = ?');
        $stmt->execute([ $sobrenome, $nome, $cidade, $estado, $endereco,$id_cliente, $email, $celular, $_GET['id_cliente']]);
        $msg = 'Atualização Realizada com Sucesso!';
    }
    // Obter o contato da tabela clientes
    $stmt = $pdo->prepare('SELECT * FROM cliente WHERE id_cliente = ?');
    $stmt->execute([$_GET['id_cliente']]);
    $cliente = $stmt->fetch(PDO::FETCH_ASSOC);
    if (!$cliente) {
        exit('Cliente Não Localizado!');
    }
} else {
    exit('Nenhum cliente Especificado!');
}
?>


<?=template_header('Atualizar/Alterar cliente')?>
<link rel="stylesheet" href="css/style.css">

<div class="content update">
<a href="indexFuncionario.php"><i class="fas fa-home"></i>Home Funcionario</a>
    <h2>Atualizar cliente ---- <?=$cliente['endereco'],' ', $cliente['sobrenome']?></h2>
    <form action="editCliente.php?id_cliente=<?=$cliente['id_cliente']?>" method="post">
    <label for="id_cliente">ID</label>
        <label for="sobrenome">sobrenome</label>
        <input type="text" name="id_cliente" placeholder="" value="<?=$cliente['id_cliente']?>" id="id_cliente">
        <input type="text" name="sobrenome" placeholder="Sua sobrenome" value="<?=$cliente['sobrenome']?>" id="sobrenome">
        <label for="nome">nome</label>
        <label for="cidade">cidade</label>
        <input type="text" name="nome" placeholder="nome" value="<?=$cliente['nome']?>" id="nome">
        <input type="text" name="cidade" placeholder="cidade do veiculo" value="<?=$cliente['cidade']?>" id="cidade">
        <label for="estado">estado</label>
        <label for="endereco">endereco</label>
        <input type="text" name="estado" placeholder="estado" value="<?=$cliente['estado']?>" id="estado">
        <input type="text" name="endereco" placeholder="endereco" value="<?=$cliente['endereco']?>" id="endereco">
        <label for="email">email</label>
        <label for="celular">celular</label>
        <input type="text" name="email" placeholder="email" value="<?=$cliente['email']?>" id="email">
        <input type="text" name="celular" placeholder="celular" value="<?=$cliente['celular']?>" id="celular">
      
        <input type="submit" value="Update">
    </form>
    <?php if ($msg): ?>
    <p><?=$msg?></p>
    <?php endif; ?>
</div>

<?=template_footer()?>