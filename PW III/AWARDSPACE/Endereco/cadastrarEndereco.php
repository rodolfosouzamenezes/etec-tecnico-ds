<?php

$dados = $_POST;
var_dump($dados);

include "Endereco.php";

extract($_POST);

$novoCadastro = new Endereco($txtCEP, $txtRua, $txtNumero, $txtBairro, $txtCidade, $txtEstado, $txtComplemento, $txtPais);
$novoCadastro->Cadastrar();