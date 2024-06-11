<?php
include 'functions.php';
$pdo = pdo_connect_pgsql();

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST['username'];
    $password = $_POST['password'];

    // Verificar se o usuário e a senha estão corretos
    $stmt = $pdo->prepare('SELECT id FROM cliente WHERE nome = ? AND email = ?');
    $stmt->execute([$username, $password]);
    $user = $stmt->fetch();

    if ($user) {
        // Iniciar a sessão e armazenar o ID do cliente
        session_start();
        $_SESSION['user_id'] = $user['id'];
        header('Location: carroDisponivel.php');
        exit();
    } else {
        // Redirecionar de volta para a página de login se o login falhar
        header('Location: loginCliente.php');
        exit();
    }
}
?>
