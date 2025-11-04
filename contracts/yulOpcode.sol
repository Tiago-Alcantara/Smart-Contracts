// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract OpcodeGas{



    function somaEmSolidity(uint256 a, uint256 b)external pure returns (uint256){
        return  a+b; //954 gas 
    }

    function somaEmOpcode(uint256 a, uint256 b)external pure returns (uint256 soma){
        assembly{
            soma := add(a,b)
        }
        return soma; // 781 gas
    }

}