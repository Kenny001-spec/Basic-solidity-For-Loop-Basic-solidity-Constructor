// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./SimpleStorage.sol";

    // Single file solidity can hold multiple contract
contract StorageFactory {
    // Type Visibilty variable
    SimpleStorage[] public simpleStorageArray;

    function createSimpleStorageContract() public {
        // How does storage factory know what simple storage looks like?
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }
}