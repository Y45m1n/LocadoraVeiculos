<?php
include 'functions.php'; // Arquivo com a função de conexão PDO
$pdo = pdo_connect_pgsql(); // Função para conectar ao banco de dados PostgreSQL

// Inicializar variáveis
$msg = '';
$receita_total = 0;

// Verificar se o formulário foi enviado
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $data_inicio = isset($_POST['data_inicio']) ? $_POST['data_inicio'] : '';
    $data_fim = isset($_POST['data_fim']) ? $_POST['data_fim'] : '';

    // Validar as datas (formato esperado YYYY-MM-DD)
    if ($data_inicio && $data_fim) {
        // Consultar o banco de dados para buscar registros de locação no intervalo de datas
        $sql_locacoes = 'SELECT * FROM locacao WHERE data_locacao BETWEEN ? AND ?';
        $stmt_locacoes = $pdo->prepare($sql_locacoes);
        $stmt_locacoes->execute([$data_inicio, $data_fim]);
        $registros_locacoes = $stmt_locacoes->fetchAll(PDO::FETCH_ASSOC);

        // Calcular a receita total somando os valores totais das locações
        foreach ($registros_locacoes as $locacao) {
            $receita_total += $locacao['valor_total'];
        }
    } else {
        $msg = 'Por favor, selecione um intervalo de datas válido.';
    }
}
?>

<?=template_header('Receita Total da Locadora')?>
<link rel="stylesheet" href="style.css">

<div class="content">
    <a href="indexFuncionario.php"><i class="fas fa-home"></i>Home Funcionario</a>
    <h2>Receita Total da Locadora por Período</h2>
    <form method="post">
        <label for="data_inicio">Data de Início:</label>
        <input type="date" id="data_inicio" name="data_inicio" required>
        <label for="data_fim">Data de Fim:</label>
        <input type="date" id="data_fim" name="data_fim" required>
        <button type="submit">Calcular Receita Total</button>
    </form>

    <?php if ($receita_total > 0): ?>
        <h3>Receita Total para o período de <?=htmlspecialchars($data_inicio)?> a <?=htmlspecialchars($data_fim)?></h3>
        <p>Receita Total: R$ <?=number_format($receita_total, 2, ',', '.')?></p>
    <?php elseif (isset($msg)): ?>
        <p><?=$msg?></p>
    <?php endif; ?>

    <hr>

    <?php if (isset($registros_locacoes) && !empty($registros_locacoes)): ?>
        <h3>Registros de Locação para o período de <?=htmlspecialchars($data_inicio)?> a <?=htmlspecialchars($data_fim)?></h3>
        <table>
            <thead>
                <tr>
                    <th>Data de Locação</th>
                    <th>Data de Devolução</th>
                    <th>Valor Total</th>
                    <th>Email</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($registros_locacoes as $locacao): ?>
                    <tr>
                        <td><?=$locacao['data_locacao']?></td>
                        <td><?=$locacao['data_devolucao']?></td>
                        <td>R$ <?=$locacao['valor_total']?></td>
                        <td><?=$locacao['email']?></td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    <?php endif; ?>
</div>

<?=template_footer()?>
<style>
    body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    margin: 0;
    padding: 0;
}

.content {
    max-width: 800px;
    margin: 20px auto;
    background-color: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h2 {
    margin-bottom: 20px;
    color: #333;
}

form {
    margin-bottom: 20px;
}

form label {
    display: block;
    margin-bottom: 8px;
    font-weight: bold;
    color: #666;
}

form input[type="date"],
form button {
    padding: 10px;
    font-size: 16px;
    border: 1px solid #ccc;
    border-radius: 4px;
}

form button {
    background-color: #007bff;
    color: #fff;
    border: none;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

form button:hover {
    background-color: #0056b3;
}

table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 20px;
    background-color: #fff;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

table th,
table td {
    padding: 12px;
    text-align: left;
    border-bottom: 1px solid #ddd;
}

table th {
    background-color: #007bff;
    color: #fff;
}

table tbody tr:nth-child(even) {
    background-color: #f2f2f2;
}

table tbody tr:hover {
    background-color: #e0e0e0;
}

p {
    margin-top: 10px;
    padding: 10px;
    background-color: #ffc107;
    color: #333;
    border: 1px solid #e0a800;
    border-radius: 4px;
}

</style>