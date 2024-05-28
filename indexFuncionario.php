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
                <img src="img/" class="card-img-top" alt="Imagem do Card 1" style="width:250px; height: 222px;">
                <div class="card-body">
                    <h5 class="card-title"></h5>
                    
                    <a href="create.php" class="btn btn-primary"></a> 
                </div>
            </div>
        </div>
        <div class="col-md-4 mb-4">
            <div class="card" style="align-items:center;">
                <img src="img/" class="card-img-top" alt="Imagem do Card 3" style="width:300px; height: 200px;">
                <div class="card-body">
                    <h5 class="card-title"></h5>
                    
<a href="create.php" class="btn btn-primary"></a> 
                </div>
            </div>
        </div>
  


<?= template_footer()?>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
