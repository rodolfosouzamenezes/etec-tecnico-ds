let dados;

function carregarDados(funcao){
    fetch("http://3dsfatecbedolfo.sportsontheweb.net/Endereco/ListarEndereco.php")
        .then(conteudo => conteudo.text())
        .then(texto => {
            dados = JSON.parse(texto);
            funcao();
        });
}

function exibirTabela(){
    let tabela = '';
    dados.forEach(Endereco => {
        tabela += '<tr>';
        tabela += `<td>${Endereco.cep}</td>`;
        tabela += `<td>${Endereco.rua}</td>`;
        tabela += `<td>${Endereco.numero}</td>`;
        tabela += `<td>${Endereco.bairro}</td>`;
        tabela += `<td>${Endereco.cidade}</td>`;
        tabela += `<td>${Endereco.estado}</td>`;
        tabela += `<td>${Endereco.complemento}</td>`;
        tabela += `<td>${Endereco.pais}</td>`;
        tabela += '</tr>';
    });
    document.getElementsByTagName('tbody')[0].innerHTML = tabela;
}

function iniciar(){
    carregarDados(exibirTabela);
}

window.onload = iniciar;