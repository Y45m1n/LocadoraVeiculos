<?php
include 'functions.php'; // Arquivo com a função de conexão PDO
$pdo = pdo_connect_pgsql(); // Função para conectar ao banco de dados PostgreSQL

// Verificar se o formulário foi enviado
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $data_inicio = isset($_POST['data_inicio']) ? $_POST['data_inicio'] : '';
    $data_fim = isset($_POST['data_fim']) ? $_POST['data_fim'] : '';

    // Validar as datas (pode ser necessário um tratamento adicional dependendo do formato esperado no banco de dados)
    // Aqui, vamos assumir que as datas estão no formato correto YYYY-MM-DD
    if ($data_inicio && $data_fim) {
        // Consultar o banco de dados para buscar registros de locação no intervalo de datas
        $stmt = $pdo->prepare('SELECT * FROM locacao WHERE data_locacao BETWEEN ? AND ?');
        $stmt->execute([$data_inicio, $data_fim]);
        $registros = $stmt->fetchAll(PDO::FETCH_ASSOC);
    } else {
        $msg = 'Por favor, selecione um intervalo de datas válido.';
    }
}
?>

<?=template_header('Registros de Locação')?>
<link rel="stylesheet" href="style.css">


<div class="content">
<a href="indexFuncionario.php"><i class="fas fa-home"></i>Home Funcionario</a>
    <h2>Registros de Locação por Período</h2>
    <form method="post">
        <label for="data_inicio">Data de Início:</label>
        <input type="date" id="data_inicio" name="data_inicio" required>
        <label for="data_fim">Data de Fim:</label>
        <input type="date" id="data_fim" name="data_fim" required>
        <button type="submit">Buscar Registros</button>
    </form>

    <?php if (isset($registros) && !empty($registros)): ?>
        <h3>Resultados para o período de <?=htmlspecialchars($data_inicio)?> a <?=htmlspecialchars($data_fim)?></h3>
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
                <?php foreach ($registros as $registro): ?>
                    <tr>
                    <td><?=$registro['data_devolucao']?></td>
                    <td><?=$registro['data_locacao']?></td>
                       
                        
                        <td><?=$registro['valor_total']?></td>
                        <td><?=$registro['email']?></td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    <?php elseif (isset($msg)): ?>
        <p><?=$msg?></p>
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