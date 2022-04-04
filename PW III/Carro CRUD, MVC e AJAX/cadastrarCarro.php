<?php

$dados = $_POST;
var_dump($dados);

include "Carro.php";

extract($_POST);

$chkIpvaPago = isset($_POST['chkIpvaPago']);

$novoCadastro = new Carro($txtPlaca, $txtAno,
        $chkIpvaPago, $txtIpvaData, $txtIpvaValor);
$novoCadastro->Cadastrar();