<?php
    include "Conexao.php";
        class Endereco{
            private int $id;
            private int $cep;
            private string $rua;
            private int $numero;
            private string $bairro;
            private string $cidade;
            private string $estado;
            private string $complemento;
            private string $pais;
        

            public function __construct(string $cep, string $rua, int $numero, string $bairro, string $cidade, string $estado, string $complemento, string $pais){
                $this->cep = $cep;
                $this->rua = $rua;
                $this->numero = $numero;
                $this->bairro = $bairro;
                $this->cidade = $cidade;
                $this->estado = $estado;
                $this->complemento = $complemento;
                $this->pais = $pais; 
            }

            public function Cadastrar(){
                $conexao = new Conexao();
                $sql = "INSERT INTO
                Endereco(cep, rua, numero, bairro, cidade, estado, complemento, pais)
                VALUES (:cep, :rua, :numero, :bairro, :cidade, :estado, :complemento, :pais)";
                $pdo = $conexao->Conectar();
                $preparo = $pdo->prepare($sql);
                $preparo->bindParam(':cep', $this->cep);
                $preparo->bindParam(':rua', $this->rua);
                $preparo->bindParam(':numero', $this->numero);
                $preparo->bindParam(':bairro', $this->bairro);
                $preparo->bindParam(':cidade', $this->cidade);
                $preparo->bindParam(':estado', $this->estado);
                $preparo->bindParam(':complemento', $this->complemento);
                $preparo->bindParam(':pais', $this->pais);
                $preparo->execute();
            }

            public static function ListarTodos(){
                $conexao = new Conexao();
                $sql = "SELECT * FROM `Endereco` WHERE 1";
                $dados = $conexao->Consultar($sql);
                return $dados;
            }
        }