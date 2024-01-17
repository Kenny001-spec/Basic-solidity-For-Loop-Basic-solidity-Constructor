// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract SimpleStorage {
    // This gets initialized to zero!
    uint256 public favoriteNumber;

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
        // uint256 testVar = 5;    // just for the testing of the Deployed Contract
        retrieve();
    }
    // view, pure
    function retrieve() public  view returns(uint256) {
        return favoriteNumber;
    }

    // function add() public  pure  returns (uint256){
    //     return(1 + 1);
    // }
    
}

// 0xd9145CCE52D386f254917e481eB44e9943F39138