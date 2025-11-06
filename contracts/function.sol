// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;


contract Fucntions{
    uint256 public numero; 
    string public nome;
    string public mensagens;

    uint256 valor;

    function subNum(uint256 _numeroSub)internal {
        uint256 subNumero = _numeroSub/2;
        numero = subNumero;
    }

    function setMsg(string memory _msg) public {
        mensagens = _msg;
    }

    function setNomeNum(string memory _meuNome,uint256 _numero)external{
        nome = _meuNome;
        subNum(_numero);
        setMsg("Chamou pelo contrato");
    }

    //vamos setar aqui o valor
    function setValor(uint256 _valor) external {
        valor = _valor;
    }

    //Retorna o valor setado acima o view não modifica o estado do contrato, ou seja
    //de armazenamento
    function getValor() external view returns (uint256) {
        return valor;
    }

    //O pure ela nem le e nem escreve no estado do contrato
    function multiplicar(uint256 x, uint256 y) external pure returns (uint256) {
        uint256 valorMultiplicacao = x * y;
        return valorMultiplicacao;
    }

    //função que permite enviarmos valores para o contrato
    function payEther() external payable {}

}