// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Telephone {
    // instance address 
    // 0x481Aa2ACAe832925f20cefA45032FE70e17e7254

  address public owner;

  constructor() public {
    owner = msg.sender;
  }

  function changeOwner(address _owner) public {
    if (tx.origin != msg.sender) {
      owner = _owner;
    }
  }
}