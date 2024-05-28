<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Carros Disponíveis</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/carroDisponivel.css">
</head>
<body>

<?php
include 'functions.php';

// Cabeçalho da página
template_header("Carros Disponíveis");

// Corpo da página
echo "<h1>Carros Disponíveis</h1>";

echo "<table class='table'>";
echo "<thead>";
echo "<tr>";
echo "<th scope='col'>Placa</th>";
echo "<th scope='col'>Tipo</th>";
echo "<th scope='col'>Ano</th>";
echo "<th scope='col'>Modelo</th>";
echo "</tr>";
echo "</thead>";
echo "<tbody>";

try {
    // Conexão com o banco de dados
    $pdo = pdo_connect_pgsql();
    // Página atual
    $page = isset($_GET['page']) && is_numeric($_GET['page']) ? (int)$_GET['page'] : 1;
    // Número de registros para mostrar em cada página
    $records_per_page = 10;
    // Calcula o deslocamento
    $offset = ($page - 1) * $records_per_page;
    // Query para contar o número total de carros disponíveis
    $stmt_count = $pdo->query("SELECT COUNT(*) FROM Carro WHERE Disponibilidade = 'Disponível'");
    $num_contacts = $stmt_count->fetchColumn();
    // Query para selecionar carros disponíveis com paginação
    $stmt = $pdo->prepare("SELECT Placa, Tipo, Ano, Modelo FROM Carro WHERE Disponibilidade = 'Disponível' LIMIT :limit OFFSET :offset");
    $stmt->bindParam(':limit', $records_per_page, PDO::PARAM_INT);
    $stmt->bindParam(':offset', $offset, PDO::PARAM_INT);
    $stmt->execute();
    $contacts = $stmt->fetchAll(PDO::FETCH_ASSOC);

    // Verifica se a query retornou resultados
    if (count($contacts) > 0) {
        // Loop através dos resultados e exibir cada carro
        foreach ($contacts as $row) {
            echo "<tr>";
            echo "<td>" . $row["placa"] . "</td>";
            echo "<td>" . $row["tipo"] . "</td>";
            echo "<td>" . $row["ano"] . "</td>";
            echo "<td>" . $row["modelo"] . "</td>";
            echo "</tr>";
        }
    } else {
        echo "<tr><td colspan='4'>Nenhum carro disponível.</td></tr>";
    }

} catch (PDOException $e) {
    // Em caso de erro na conexão ou na query
    echo "Erro: " . $e->getMessage();
}

echo "</tbody>";
echo "</table>";

// Botões de navegação para páginas anteriores e próximas
echo "<div class='navigation'>";
if ($page > 1) {
    echo "<a href='read.php?page=" . ($page - 1) . "'><i class='fas fa-angle-double-left fa-sm'></i></a>";
}
if ($page * $records_per_page < $num_contacts) {
    echo "<a href='read.php?page=" . ($page + 1) . "'><i class='fas fa-angle-double-right fa-sm'></i></a>";
}
echo "</div>";

// Rodapé da página
template_footer();
?>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA

</body>
</html>
