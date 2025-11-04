// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract NovaTurmaMapping{
    //entendimento basico de mapping
    mapping (string => string) public dicionario;

    //Definindo estrutura que o nome do aluno indica o numero da presenca
    mapping (string => uint256) public presencaNumero;

    //definindo estrutura que o endereco indica uma booliana se esteve presente ou nao 
    mapping (address => bool) public presenca;

    //definindo estrutura que vai idnicar outro mapping de um encereco que definem em um end
    mapping (address => mapping (address => uint256)) public NotaProfAluno;

    
    function setarPalavrasAoDicionario ( string memory _palavra, string memory _definicao) external  {
        dicionario[_palavra] = _definicao;
    }

    function setarNumeroPresenca(string memory _nome, uint256 _numero) external {
        presencaNumero[_nome] = _numero;
    }

    function setarPresenca() external {
        presenca[msg.sender] = true;
    }

     function setarNotaAluno(address _aluno,uint256 _nota) external {
        NotaProfAluno[msg.sender][_aluno] = _nota;
    }

}