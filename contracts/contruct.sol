// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;


contract constuct{
    string public name;
    uint256 immutable year;



    address constant owner = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4 ;

    constructor(string memory _name, uint256 _year) {
        name = _name;
        year = _year;
    }

    function setName(string memory _newName)external {
        require(msg.sender == owner,"Only owner change Name");
        name = _newName;
    }


}