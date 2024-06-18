<?php
include 'functions.php';
?>
<?= template_header ('Loca aqui!')?>
<link rel="stylesheet" href="css/style.css">



</div>
<div class="content text-center">
    <h2  style="color: #F1A204;">Bem vindo a tela de Funcionário</h2>
    
    <div class="row mt-5">
        <!-- Cards superiores -->
        <div class="col-md-4 mb-4" >
            <div class="card" style="align-items:center;">
                <img src="img/cliente.png" class="card-img-top" alt="Imagem do Card 1"  style="width:200px; height: 200px; ">
                <div class="card-body">
                    <h5 class="card-title">Cadastrar Cliente</h5>
                    <a href="create.php" class="btn btn-primary">Cadastrar</a> 
                </div>
            </div>
        </div>
        <div class="col-md-4 mb-4">
            <div class="card" style="align-items:center;">
                <img src="img/listarCliente.png" class="card-img-top" alt="Imagem do Card 1" style="width:200px; height: 200px;">
                <div class="card-body">
                
                <h5 class="card-title">Listar Cliente</h5>
                    <a href="listarCliente.php" class="btn btn-primary">Listar</a> 
                </div>
            </div>
        </div>
        <div class="col-md-4 mb-4">
            <div class="card" style="align-items:center;">
                <img src="img/cadastroCarro.avif" class="card-img-top" alt="Imagem do Card 3" style="width:200px; height: 200px;">
                <div class="card-body">
                    <h5 class="card-title">Cadastrar Carro</h5>
                    
<a href="createVeiculo.php" class="btn btn-primary">Cadastrar</a> 
                </div>
            </div>
        </div>

        <div class="col-md-4 mb-4">
            <div class="card" style="align-items:center;">
                <img src="img/listarCarro.avif" class="card-img-top" alt="Imagem do Card 1" style="width:200px; height: 200px;">
                <div class="card-body">
                
                <h5 class="card-title">Listar Carro</h5>
                    <a href="listarVeiculo.php" class="btn btn-primary">Listar</a> 
                </div>
            </div>
        </div>

        <div class="col-md-4 mb-4">
            <div class="card" style="align-items:center;">
                <img src="img/listarCarro.avif" class="card-img-top" alt="Imagem do Card 1" style="width:200px; height: 200px;">
                <div class="card-body">
                
                <h5 class="card-title">Listar Reservas</h5>
                    <a href="listarReserva.php" class="btn btn-primary">Listar</a> 
                </div>
            </div>
        </div>
        <div class="col-md-4 mb-4">
            <div class="card" style="align-items:center;">
                <img src="img/listarCarro.avif" class="card-img-top" alt="Imagem do Card 1" style="width:200px; height: 200px;">
                <div class="card-body">
                
                <h5 class="card-title">Locação pela data</h5>
                    <a href="selectReservaData.php" class="btn btn-primary">Listar</a> 
                </div>
            </div>
        </div>
        <div class="col-md-4 mb-4">
            <div class="card" style="align-items:center;">
                <img src="img/listarCarro.avif" class="card-img-top" alt="Imagem do Card 1" style="width:200px; height: 200px;">
                <div class="card-body">
                
                <h5 class="card-title">Locação pelo cliente</h5>
                    <a href="selectReservaCliente.php" class="btn btn-primary">Listar</a> 
                </div>
            </div>
        </div>
        <!-- <div class="col-md-4 mb-4">
            <div class="card" style="align-items:center;">
                <img src="img/listarCarro.avif" class="card-img-top" alt="Imagem do Card 1" style="width:200px; height: 200px;">
                <div class="card-body">
                
                <h5 class="card-title">Cliente que mais alugou</h5>
                    <a href="selectClienteMaisAlugou.php" class="btn btn-primary">Listar</a> 
                </div>
            </div>
        </div> -->
        <div class="col-md-4 mb-4">
            <div class="card" style="align-items:center;">
                <img src="img/listarCarro.avif" class="card-img-top" alt="Imagem do Card 1" style="width:200px; height: 200px;">
                <div class="card-body">
                
                <h5 class="card-title">Receita da Locadora</h5>
                    <a href="selectReceitaTotal.php" class="btn btn-primary">Listar</a> 
                </div>
            </div>
        </div>
        <div class="col-md-4 mb-4">
            <div class="card" style="align-items:center;">
                <img src="img/listarCarro.avif" class="card-img-top" alt="Imagem do Card 1" style="width:200px; height: 200px;">
                <div class="card-body">
                
                <h5 class="card-title">Carros nunca alugados</h5>
                    <a href="selectCarroNuncaAlugado.php" class="btn btn-primary">Listar</a> 
                </div>
            </div>
        </div>
        <div class="col-md-4 mb-4">
            <div class="card" style="align-items:center;">
                <img src="img/listarCarro.avif" class="card-img-top" alt="Imagem do Card 1" style="width:200px; height: 200px;">
                <div class="card-body">
                
                <h5 class="card-title">Media dos dias alugados</h5>
                    <a href="selectDiasAlugados.php" class="btn btn-primary">Listar</a> 
                </div>
            </div>
        </div>
<?= template_footer()?>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
