// Get fund me from users
// Withdraw funds
// Set a minimum funding value in USD

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract FundMe  {
    

    function fund() public payable {
        // We want to be able to set a minimum fund amout in UsD
        // 1. How do we send Eth to this contract
        require(msg.value > 1e18, "Didn't send enough!"); // 1e18 == 1 * 10 ** 18 == 1000000000000000000

        // What is reverting?
        // Undo any action that happen  before, and send remaining gas back

    }
        // function withdraw(){}
    
}