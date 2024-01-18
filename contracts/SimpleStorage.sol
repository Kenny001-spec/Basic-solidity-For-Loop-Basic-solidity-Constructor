// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract SimpleStorage {
    // This gets initialized to zero!
    uint256 public favoriteNumber;
    // People public person = People({favoriteNumber: 2, name: "patrick"});

    // Much better way to create a list is to use Data structure called an Array





    struct People {
        uint256 favoriteNumber; // this is at index 0
        // uint256 brothersNumber; // this is at index 1
        // uint256 sistersNumber; // this is at index 2
        string name;
    }

    // uint256[] public favoriteNumberList; // Numbers list is going to be an array.
    People[] public  people;
    // 0:2, Patrick, 1: 7, Jon

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
        // uint256 testVar = 5;    // just for the testing of the Deployed Contract
        retrieve();
    }
    // view, pure
    function retrieve() public  view returns(uint256) {
        return favoriteNumber;
    }
  
}

// 0xd9145CCE52D386f254917e481eB44e9943F39138