<?php
include 'functions.php'; // Arquivo com a função de conexão PDO
$pdo = pdo_connect_pgsql(); // Função para conectar ao banco de dados PostgreSQL

// Consultar a média de dias que os carros ficam alugados
$stmt = $pdo->query('SELECT AVG(EXTRACT(DAY FROM AGE(data_locacao, data_devolucao))) AS media_dias_aluguel FROM locacao');
$media_dias_aluguel = $stmt->fetchColumn();
?>

<?=template_header('Média de Dias de Aluguel')?>
<link rel="stylesheet" href="style.css">

<div class="content">
    <a href="indexFuncionario.php"><i class="fas fa-home"></i>Home Funcionario</a>
    <h2>Média de Dias que os Carros Ficam Alugados</h2>

    <?php if ($media_dias_aluguel !== false): ?>
        <p>A média de dias que os carros ficam alugados é aproximadamente <?=round($media_dias_aluguel, 2)?> dias.</p>
    <?php else: ?>
        <p>Não há registros de locação para calcular a média de dias de aluguel.</p>
    <?php endif; ?>
</div>

<?=template_footer()?>
