<?php
include 'functions.php'; // Arquivo com a função de conexão PDO
$pdo = pdo_connect_pgsql(); // Função para conectar ao banco de dados PostgreSQL

// Consultar carros que nunca foram alugados
$stmt = $pdo->query('SELECT * FROM carro LEFT JOIN locacao ON carro.id_carro = locacao.id_carro WHERE locacao.id_carro IS NULL');
$carros_nunca_alugados = $stmt->fetchAll(PDO::FETCH_ASSOC);
?>

<?=template_header('Carros Nunca Alugados')?>
<link rel="stylesheet" href="style.css">

<div class="content">
    <a href="indexFuncionario.php"><i class="fas fa-home"></i>Home Funcionario</a>
    <h2>Carros que Nunca Foram Alugados</h2>

    <?php if (!empty($carros_nunca_alugados)): ?>
        <table>
            <thead>
                <tr>
                    <th>Placa</th>
                    <th>Tipo</th>
        
                    <th>Ano</th>
                    <th>Modelo</th>
                    <th>Valor</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($carros_nunca_alugados as $carro): ?>
                    <tr>
                        <td><?=$carro['placa']?></td>
                        
                        <td><?=$carro['tipo']?></td>
                        <td><?=$carro['ano']?></td>
                        <td><?=$carro['modelo']?></td>
                  
                        <td><?=$carro['valor']?></td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    <?php else: ?>
        <p>Nenhum carro encontrado que nunca tenha sido alugado.</p>
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