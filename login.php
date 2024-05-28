<?php
include 'functions.php';

// Verifica se o formulário foi submetido
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Conectar ao banco de dados usando a função pdo_connect_pgsql() definida em functions.php
    $pdo = pdo_connect_pgsql();

    // Verifica se a conexão foi bem-sucedida
    if ($pdo) {
        // Obter nome e id_funcionario do formulário
        $nome = $_POST['nome'];
        $id_funcionario = $_POST['id_funcionario'];

        try {
            // Consulta SQL para verificar o nome e id_funcionario do funcionário
            $stmt = $pdo->prepare("SELECT Id_Funcionario FROM Funcionarios WHERE Nome = :nome AND Id_Funcionario = :id_funcionario");
            $stmt->execute(['nome' => $nome, 'id_funcionario' => $id_funcionario]);
            $row = $stmt->fetch();

            // Verifica se a consulta retornou resultados
            if ($row) {
                // Login bem-sucedido, redireciona para a página de sucesso ou executa outras ações necessárias
                header("Location: indexFuncionario.php");
                exit;
            } else {
                // Nome de usuário ou senha incorretos
                echo "Nome de usuário ou senha incorretos";
            }
        } catch (PDOException $exception) {
            // Log do erro ou exibição de mensagem mais detalhada.
            $errorDetails = 'Error details: ' . $exception->getMessage() . ' Code: ' . $exception->getCode();
            error_log('Failed to execute SQL query: ' . $errorDetails);
            exit('Failed to execute SQL query. Check error log for details. Debug: ' . $errorDetails);
        }
    } else {
        // Se a conexão falhou
        echo "Falha na conexão com o banco de dados.";
    }
}
?>

<?= template_header('Loca aqui!') ?>
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/login.css">

<div class="login wrap">
    <div class="h1">Login Funcionario</div>
    <form method="post" action="<?= htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
        <input placeholder="Nome" id="nome" name="nome" type="text">
        <input placeholder="ID do Funcionário" id="id_funcionario" name="id_funcionario" type="password">
        <input value="Login" class="btn" type="submit">
    </form>
</div>

<?= template_footer() ?>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
