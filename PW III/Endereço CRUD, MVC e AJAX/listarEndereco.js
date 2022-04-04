let dados;

function carregarDados(funcao){
    fetch("http://3dsfatecbedolfo.sportsontheweb.net/ListarEndereco.php")
        .then(conteudo => conteudo.text())
        .then(texto => {
            dados = JSON.parse(texto);
            funcao();
        });
}

function exibirTabela(){
    let tabela = '';
    dados.forEach(endereco => {
        tabela += '<tr>';
        tabela += `<td>${endereco.rua}</td>`;
        tabela += `<td>${endereco.numero}</td>`;
        tabela += `<td>${endereco.bairro}</td>`;
        tabela += `<td>${endereco.complemento}</td>`;
        tabela += `<td>${endereco.cep}</td>`;
        tabela += `<td>${endereco.cidade}</td>`;
        tabela += `<td>${endereco.estado}</td>`;
        tabela += `<td>${endereco.pais}</td>`;
        tabela += '</tr>';
    });
    document.getElementsByTagName('tbody')[0].innerHTML = tabela;
}

function iniciar(){
    carregarDados(exibirTabela);
}

window.onload = iniciar;