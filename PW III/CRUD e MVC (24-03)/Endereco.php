<?php
    include "Conexao.php";
        class Endereco{
            private int $id;
            private string $rua;
            private int $numero;
            private string $bairro;
            private string $complemento;
            private int $cep;
            private string $cidade;
            private string $estado;
            private string $pais;
        

            public function __construct(string $rua, int $numero, string $bairro, string $complemento, int $cep, string $cidade, string $estado, string $pais){
                $this->rua = $rua;
                $this->numero = $numero;
                $this->bairro = $bairro;
                $this->complemento = $complemento;
                $this->cep = $cep;
                $this->cidade = $cidade;
                $this->estado = $estado;
                $this->pais = $pais; 
            }

            public function Cadastrar(){
                $conexao = new Conexao();
                $sql = "INSERT INTO
                endereco(rua, numero, bairro, complemento, cep, cidade, estado, pais)
                VALUES (:rua, :numero, :bairro, :complemento, :cep, :cidade, :estado, :pais)";
                $pdo = $conexao->Conectar();
                $preparo = $pdo->prepare($sql);
                $preparo->bindParam(':rua', $this->rua);
                $preparo->bindParam(':numero', $this->numero);
                $preparo->bindParam(':bairro', $this->bairro);
                $preparo->bindParam(':complemento', $this->complemento);
                $preparo->bindParam(':cep', $this->cep);
                $preparo->bindParam(':cidade', $this->cidade);
                $preparo->bindParam(':estado', $this->estado);
                $preparo->bindParam(':pais', $this->pais);
                $preparo->execute();
            }

            public static function ListarTodos(){
                $conexao = new Conexao();
                $sql = "SELECT * FROM `endereco` WHERE 1";
                $dados = $conexao->Consultar($sql);
                return $dados;
            }
        }