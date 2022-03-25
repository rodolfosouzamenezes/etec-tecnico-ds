let dados;

function carregarDados(funcao){
    fetch("/crudmvc.scienceontheweb.net/ListarCliente.php")
    .then(conteudo => conteudo.text())
    .then(texto => {
        dados = JSON.parse(texto)
        exibirTabela();
    });
    funcao();
}

function exibirTabela(){
    let tabela = '';
    dados.forEach(Cliente => {
        tabela += '<tr>';
        tabela += '<td>${Cliente.Nome}</td>';
        tabela += '<td>${Cliente.Telefone}</td>';
        tabela += '<td>${Cliente.Altura}</td>';
        tabela += '<td>${Cliente.Peso}</td>';
        tabela += '</tr>';

    });
    document.getElementsByTagName('tbody')[0].innerHTML = tabela;

}

function iniciar(){
    carregarDados(exibirTabela);
}

window.onload = iniciar;