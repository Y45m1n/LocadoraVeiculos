<?php
include 'functions.php';
$pdo = pdo_connect_pgsql();
$msg = '';

if (!empty($_POST)) {
    $sobrenome = isset($_POST['sobrenome']) ? $_POST['sobrenome'] : '';
    $nome = isset($_POST['nome']) ? $_POST['nome'] : '';
    $cidade = isset($_POST['cidade']) ? $_POST['cidade'] : '';
    $estado = isset($_POST['estado']) ? $_POST['estado'] : '';
    $endereco = isset($_POST['endereco']) ? $_POST['endereco'] : '';
    $email = isset($_POST['email']) ? $_POST['email'] : '';
    $celular = isset($_POST['celular']) ? $_POST['celular'] : '';
    if (!empty($sobrenome) && !empty($nome) && !empty($cidade) && !empty($estado) && !empty($endereco)  && !empty($email) && !empty($celular)) {
        $stmt = $pdo->prepare('INSERT INTO cliente (sobrenome, nome, cidade, estado, endereco,  email, celular) VALUES (?, ?, ?, ?, ?, ?, ?)');
        if ($stmt->execute([$sobrenome, $nome, $cidade, $estado, $endereco,  $email, $celular])) {
            $msg = 'Cliente cadastrado com sucesso!';
        } else {
            $msg = 'Erro ao cadastrar cliente. Por favor, tente novamente.';
        }
    } else {
        $msg = 'Por favor, preencha todos os campos.';
    }
}
?>

<?=template_header('Cadastro de Clientes')?>
<link rel="stylesheet" href="css/style.css">


<div class="content update">
<a href="indexFuncionario.php"><i class="fas fa-home"></i>Home Funcionario</a>
    <h2>Registrar Cliente</h2>
 
    <form action="create.php" method="post">
        <label for="sobrenome">Sobrenome</label>
        <input type="text" name="sobrenome" placeholder="Seu Sobrenome" id="sobrenome">
        <label for="nome">Nome</label>
        <input type="text" name="nome" placeholder="Seu Nome" id="nome">
        <label for="cidade">Cidade</label>
        <input type="text" name="cidade" placeholder="Sua Cidade" id="cidade">
        <label for="estado">Estado</label>
        <input type="text" name="estado" placeholder="Seu Estado" id="estado">
        <label for="endereco">Endereço</label>
        <input type="text" name="endereco" placeholder="Seu Endereço" id="endereco">
       
      
        <label for="email">Email</label>
        <input type="text" name="email" placeholder="seuemail@seuprovedor.com.br" id="email">
        <label for="celular">Celular</label>
        <input type="text" name="celular" placeholder="(XX) X.XXXX-XXXX" id="celular">
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
