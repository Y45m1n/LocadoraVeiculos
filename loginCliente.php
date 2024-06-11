<?php
include 'functions.php';
?>
<?= template_header('Loca aqui!') ?>
<link rel="stylesheet" href="css/style.css">

<div class="content update">
    <h2>Login</h2>
    <form action="login_check.php" method="post">
        <label for="username">Nome de usuário</label>
        <input type="text" name="username" id="username">
        <label for="password">Senha (Email)</label>
        <input type="password" name="password" id="password">

        <br>
        <div class="center">
            <input type="submit" value="Login">
        </div> 
    </form>
</div>

<?=template_footer()?>
