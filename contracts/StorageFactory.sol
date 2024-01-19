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

    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {
        // In Order for you to interact with any contract, you're always going to need two things.
        // Address of the contract
        // ABI - Application binary interface.
        simpleStorageArray[_simpleStorageIndex].store(_simpleStorageNumber);
       
    }

        // creating a new function that can read  from the simple storage contract from the storage factory
    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256) {
        return simpleStorageArray[_simpleStorageIndex].retrieve();
        
    }

}