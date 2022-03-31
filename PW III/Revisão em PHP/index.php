<?php 
    session_start();
    if(isset($_SESSION['nome'])){
        print '<p>Exemplo de NOME salvo em sessão: ' . $_SESSION['nome'] . '</p>';
    }else{?>
        <p>Não existe exemplo de NOME na sessão</p>
<?php
    }
    if(isset($_SESSION['idade'])){
        print '<p>Exemplo de IDADE salvo em sessão: ' . $_SESSION['idade'] . '</p>';
    }else{ ?>
        <p>Não existe exemplo de IDADE na sessão</p>
<?php
    }
    if(isset($_REQUEST['nome']))
        $nome = $_REQUEST['nome'];
    else
        $nome = 'Rodolfo';
        $_SESSION['nome'] = $nome;
    ?>
    <p>Novo exemplo de NOME recebido pela requisição: <?php echo $nome?></p> 
<?php
    
    if(isset($_REQUEST['idade']))
    $idade = $_REQUEST['idade'];
    else
        $idade = '17';
        $_SESSION['idade'] = $idade;
    ?>
    <p>Novo exemplo de IDADE recebido pela requisição: <?php echo $idade?></p> 