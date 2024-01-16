// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Counter {
    uint public count = 0; // set the public count to Zero.

    // Set a default of count
    // constructor() public {
    //     count = 0;
    // }

    function incrementCount() public {
        // count = count + 1;  // get the value of count from the blockchain and add one to it.
        count++; // Refactor the code to make it better.
    }
}