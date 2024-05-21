<?php
include 'functions.php';
$pdo = pdo_connect_pgsql();
$msg = '';
// Verifica se os dados POST não estão vazios
if (!empty($_POST)) {
    // Se os dados POST não estiverem vazios, insere um novo registro
    // Configura as variáveis que serão inseridas. Devemos verificar se as variáveis POST existem e, se não existirem, podemos atribuir um valor padrão a elas.
    $sobrenome = isset($_POST['sobrenome']) ? $_POST['sobrenome'] : '';
    $nome = isset($_POST['nome']) ? $_POST['nome'] : '';
    $cidade = isset($_POST['cidade']) ? $_POST['cidade'] : '';
    $estado = isset($_POST['estado']) ? $_POST['estado'] : '';
    $endereco = isset($_POST['endereco']) ? $_POST['endereco'] : '';
    $id_cliente = isset($_POST['id_cliente']) ? $_POST['id_cliente'] : NULL;
    $email = isset($_POST['email']) ? $_POST['email'] : '';
    $celular = isset($_POST['celular']) ? $_POST['celular'] : '';
    $id_pagamento = isset($_POST['id_pagamento']) ? $_POST['id_pagamento'] : NULL;
    $id_comprovante = isset($_POST['id_comprovante']) ? $_POST['id_comprovante'] : NULL;
    
    // Insere um novo registro na tabela Cliente
    $stmt = $pdo->prepare('INSERT INTO cliente (sobrenome, nome, cidade, estado, endereco, id_cliente, email, celular, id_pagamento, id_comprovante) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)');
    $stmt->execute([$sobrenome, $nome, $cidade, $estado, $endereco, $id_cliente, $email, $celular, $id_pagamento, $id_comprovante]);
    // Mensagem de saída
    $msg = 'Cliente cadastrado com sucesso!';
}
?>

<?=template_header('Cadastro de Clientes')?>

<div class="content update">
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
        <label for="id_cliente">ID Cliente</label>
        <input type="text" name="id_cliente" placeholder="ID do Cliente" id="id_cliente">
        <label for="email">Email</label>
        <input type="text" name="email" placeholder="seuemail@seuprovedor.com.br" id="email">
        <label for="celular">Celular</label>
        <input type="text" name="celular" placeholder="(XX) X.XXXX-XXXX" id="celular">
        <label for="id_pagamento">ID Pagamento</label>
        <input type="text" name="id_pagamento" placeholder="ID do Pagamento" id="id_pagamento">
        <label for="id_comprovante">ID Comprovante</label>
        <input type="text" name="id_comprovante" placeholder="ID do Comprovante" id="id_comprovante">
        <br>
        <div class="center">
            <input type="submit" value="Criar">
        </div> 
    </form>
  
    <?php if ($msg): ?>
    <p><?=$msg?></p>
    <?php endif; ?>
</div>

<?=template_footer()?>
