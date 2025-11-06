// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;


contract mappingWithArray{
    mapping(address => uint256) public balances; //saldo das chaves
    mapping(address => bool) public inserido; //controle das chaves
    address[] public contas;

    function set(address _conta, uint256 _val) external {
        balances[_conta] = _val; // armazenamento o endereco chave e o valor atrelado a chave
        inserido[_conta] = true; // atualizando que o endereco foi inserido

        contas.push(_conta);
    }

    function getSize() external view returns(uint256){
        return contas.length; //retorna o tamanho do array
    }

    function first() external view returns (uint256){
        return balances[contas[0]]; //retorna o primeiro elemento do array]
    }

    function last() external view returns (uint256){
        return balances[contas[contas.length - 1]]; //retorna o ultimo elemento do array]
    }
}

