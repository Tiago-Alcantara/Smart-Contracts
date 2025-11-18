// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;


contract testModifier{
    address public owner; //Endereco dono
    uint256 public x = 10; //Valor armazenado na variavel
    bool    public locked; 



    constructor () {
        owner = msg.sender; // quem deploya e o dono
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }

    //Checa se o endereco e passado nao e zero
    modifier validAddress(address _addr) {  
         //Verifica se o endereco e valido
         require(_addr != address(0), "Invalid Address");
         _;
    }

    function changeOwner(address _newOwner) public onlyOwner validAddress(_newOwner){
        owner = _newOwner;
    }

}