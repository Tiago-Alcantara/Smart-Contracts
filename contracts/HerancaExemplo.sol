// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

//base Filho X 
contract X {
    string public name;

    constructor (string memory _name){
        name = _name;
    }
}


//base Filho Y
contract Y {
    string public text;

    constructor (string memory _text){
        text = _text;
    }
}

contract B is X("testr"), Y("testr2"){

}

contract C is X,Y{
    constructor(string memory _name, string memory _text) X(_name) Y(_text){

    }
}

contract A{
    function foo() public pure virtual returns (string memory){
        return "A";	
    }
}

contract F is A{
    function foo() public pure override returns (string memory){
        return "F";
    }

}