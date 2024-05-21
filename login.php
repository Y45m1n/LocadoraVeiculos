<?php
include 'functions.php';
?>
<?= template_header ('Loca aqui!')?>
<link rel="stylesheet" href="login.css">
  

<div class="login-container">
    <form action="process_login.php" method="post" class="login-form">
        <div class="form-section cliente">
            <h2>Login Cliente</h2>
            <div class="form-group">
                <label for="cliente-username">Usuário</label>
                <input type="text" id="cliente-username" name="cliente-username" required>
            </div>
            <div class="form-group">
                <label for="cliente-password">Senha</label>
                <input type="password" id="cliente-password" name="cliente-password" required>
            </div>
            <button type="submit" name="login-cliente">Entrar</button>
        </div>
    </form>
    
    <form action="process_login.php" method="post" class="login-form">
        <div class="form-section funcionario">
            <h2>Login Funcionário</h2>
            <div class="form-group">
                <label for="funcionario-username">Usuário</label>
                <input type="text" id="funcionario-username" name="funcionario-username" required>
            </div>
            <div class="form-group">
                <label for="funcionario-password">Senha</label>
                <input type="password" id="funcionario-password" name="funcionario-password" required>
            </div>
            <button type="submit" name="login-funcionario">Entrar</button>
        </div>
    </form>
</div>

<?= template_footer()?>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
