<?php
    include "Endereco.php";

    $novoCadastro = new Endereco('Av. Eng. Carlos Reinaldo Mendes', '2015', 'Alem da ponte', 'Casa', '18013-280', 'Sorocaba', 'Sao Paulo', 'Brasil');
    $novoCadastro->Cadastrar();

    $dados = Endereco::ListarTodos();
    var_dump($dados);