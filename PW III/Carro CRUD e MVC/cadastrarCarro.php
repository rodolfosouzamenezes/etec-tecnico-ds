<?php

$dados = $_POST;
var_dump($dados);

include "Carro.php";

extract($_POST);

$chkIpvaPago = isset($_POST['chkIpvaPago']);

$novoCadastro = new Carro($txtPlaca, $txtAno,
        $chkIpvaPago, '2022-02-24 09:30:00', $txtIpvaValor);
$novoCadastro->Cadastrar();