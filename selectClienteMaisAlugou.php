<?php
include 'functions.php'; // Arquivo com a função de conexão PDO
$pdo = pdo_connect_pgsql(); // Função para conectar ao banco de dados PostgreSQL

// Consulta SQL para encontrar o cliente que mais alugou veículos
$stmt = $pdo->query('
    SELECT c.nome, c.sobrenome, c.email, COUNT(DISTINCT l.id_carro) as total_carros_alugados
    FROM cliente c
    INNER JOIN locacao l ON c.email = l.email
    GROUP BY c.nome, c.sobrenome, c.email
    ORDER BY total_carros_alugados DESC
    LIMIT 1
');
$clienteMaisAlugou = $stmt->fetch(PDO::FETCH_ASSOC);

?>

<?=template_header('Cliente que mais alugou veículos')?>
<link rel="stylesheet" href="css/style.css">

<div class="content">
    <a href="indexFuncionario.php"><i class="fas fa-home"></i> Home Funcionário</a>
    <h2>Cliente que mais alugou veículos</h2>

    <?php if ($clienteMaisAlugou && $clienteMaisAlugou['total_carros_alugados'] > 0): ?>
        <p>O cliente que mais alugou veículos é:</p>
        <ul>
            <li><strong>Nome:</strong> <?=$clienteMaisAlugou['nome']?> <?=$clienteMaisAlugou['sobrenome']?></li>
            <li><strong>Email:</strong> <?=$clienteMaisAlugou['email']?></li>
            <li><strong>Total de Carros Alugados:</strong> <?=$clienteMaisAlugou['total_carros_alugados']?></li>
        </ul>
    <?php else: ?>
        <p>Não há registros de locações no banco de dados.</p>
    <?php endif; ?>
</div>

<?=template_footer()?>
