// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./SimpleStorage.sol";

    //Inheritance & overide
contract ExtraStorage is SimpleStorage {
    // + 5 Adding five, to any number that we give
    // override
    // virtual override  The two keyword
    
    function store(uint256 _favoriteNumber) public override  {
        favoriteNumber = _favoriteNumber + 5;
    }
}