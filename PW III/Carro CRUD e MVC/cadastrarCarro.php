<?php

$dados = $_POST;
var_dump($dados);

include "Carro.php";

extract($_POST);

$chkAtualizado = isset($_POST['chkAtualizado']);

$novoCadastro = new Carro($txtPlaca, $txtAno,
        $chkIpvaPago, '2022-02-24 09:30:00', $txtIpvaValor);
$novoCadastro->Cadastrar();