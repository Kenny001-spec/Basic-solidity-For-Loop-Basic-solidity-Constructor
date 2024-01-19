// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

// EVM, Ethereum Virtual Machine
// EVM, is a standard of how to deploy smart contracts to Aetherium like blockchains.
// We can deploy solidity code to some Examples of EVM compactible blockchains such as 
// Avalanche, Fantom, Polygon

contract SimpleStorage {
    // This gets initialized to zero!
    uint256 public favoriteNumber;
    // People public person = People({favoriteNumber: 2, name: "patrick"});

    // Much better way to create a list is to use Data structure called an Array

    // BASIC SOLIDITY MAPPING
    mapping(string => uint256) public nameToFAvoriteNumber; //Every single name is going to map to specific Number

    // Create a new Type in solidity called struct.
    struct People {
        uint256 favoriteNumber; // this is at index 0
        // uint256 brothersNumber; // this is at index 1
        // uint256 sistersNumber; // this is at index 2
        string name;
    }

    // uint256[] public favoriteNumberList; // Numbers list is going to be an array.
    People[] public  people;
    // 0:2, Patrick, 1: 7, Jon

    function store(uint256 _favoriteNumber) public virtual {
        favoriteNumber = _favoriteNumber;
        // uint256 testVar = 5;    // just for the testing of the Deployed Contract
        // retrieve();
    }
    // view, pure
    function retrieve() public  view returns(uint256) {
        return favoriteNumber;
    }

    // Function that can help people array
    // CALL-DATA, MEMORY, STORAGE   // The variable only exist temporarily
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        // People memory newPerson = People({favoriteNumber: _favoriteNumber, name: _name});   // array of type people...by using bracket notation
        // People memory newPerson = People()    // we can also declare it this way
        people.push(People(_favoriteNumber, _name));     // we call a push function that's available on our object...it will push people in to our people array.
        nameToFAvoriteNumber[_name] = _favoriteNumber;

    }
    
}

// 0xd9145CCE52D386f254917e481eB44e9943F39138